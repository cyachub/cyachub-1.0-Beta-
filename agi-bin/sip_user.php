#!/usr/bin/php5
<?php
set_time_limit(30);
require('phpagi.php');
require('db.php');

error_reporting(E_ALL); // We turn on all php errors during development.
//error_reporting(0); // We turn off all php errors during production.

/*
Internal call handler.
*/

$agi = new AGI();
$db = get_db_connection();
if (!$db) {
        $agi -> verbose("Failed to connect db!");
        exit;
}

//Get the dialed number.
//This will be use to find the dst if defined in user_action table.
$exten = $agi -> request['agi_extension'];
$agi -> verbose("Call to internal ext: $exten");
$uniqueid = $agi -> request['agi_uniqueid'];

//This is the search query of the default action on the dialed number.
//There could be no result (ex. outgoing call to pstn).
//If we found known dst, then route call acording to its action and dst.
$sql = "select action,dst from user_action where extension='$exten' and status='default'";
if ($result = $db -> query($sql)) {

	$row = $result -> Fetch();
	$dst = $row['dst'];
        $action = $row['action'];
	$agi -> verbose("dst: $dst, action: $action");

	switch ($action) {

		case 'dial':
			//Enabling call recording only for direct incoming call to extensions. can add to ringgroup outgoing if needed.
			$agi -> exec('MixMonitor',$uniqueid.'.wav,ab');
			$agi -> exec('dial','SIP/'.$exten.',5,tTr');
			$agi -> exec('StopMixMonitor','');
			$dialstatus = $agi -> get_variable("DIALSTATUS")[data];
			$agi->verbose($dialstatus);

			switch ($dialstatus) {
;				case 'BUSY':
					$agi->verbose('In busy case...');
					list($action, $dst) = get_user_status_dst($agi,$db,$exten,$dialstatus);
					$agi -> exec($action,$dst);
					break;
				case 'NOANSWER':
					$agi->verbose('In noanswer case...');
                        		list($action, $dst) = get_user_status_dst($agi,$db,$exten,$dialstatus);
                        		$agi -> exec($action,$dst);
                        		break;
                		case 'CHANUNAVAIL':
                        		$agi->verbose('In channel unavailable case...');
                        		list($action, $dst) = get_user_status_dst($agi,$db,$exten,$dialstatus);
                        		$agi -> exec($action,$dst);
                        		break;
				default:
					$agi -> exec('hangup');
		
			}
			break;
		case 'forward':
			$agi -> exec('goto','$dst');
			break;
		case 'followme':
			//nothing planned yet.
			break;
		case 'goto':
			$agi -> exec('goto',$dst);
			break;
		case 'VoiceMail':
			$agi -> exec('VoiceMail',$dst);
			break;
	}
}else{
	//undefined extensions will try outside.
	$agi -> exec('goto','outgoing,'.$exten.',1');
}


close_db_connection($db);

function get_user_status_dst ($agi,$db,$exten,$dialstatus) {

	$dialstatus = strtolower($dialstatus);
	$sql = "select action,dst from user_action where extension='$exten' and status='$dialstatus'";
	$result = $db -> query($sql);
	$row = $result -> Fetch();
	return array($row['action'],$row['dst']);
}

?>

