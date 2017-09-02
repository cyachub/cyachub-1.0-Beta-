#!/usr/bin/php5
<?php
set_time_limit(30);
require('phpagi.php');
require('db.php');

error_reporting(E_ALL); // We turn on all php errors during development.
//error_reporting(0); // We turn off all php errors during production.

/*
Ring Group module with two dialing options.
 Dial sequentially(default).
 Dial simultaneously.
*/

$agi = new AGI();
$db = get_db_connection();
if (!$db) {
	$agi -> verbose("Failed to connect db!");
	exit;
}

// Get current EXTEN from asterisk. This should be the ring group number.
$exten = $agi -> request['agi_extension'];
if($exten == "") {
	echo "Failed to get ring group number from agi_extension!";
	exit;
}
$agi -> verbose("Ring group number: $exten");

//Get number list and dialing option of the ring group.
$sql = "select list, dialing_option from ring_group where id='$exten'";
$result = $db -> query($sql);
$row = $result -> Fetch();
$agi -> verbose("number list :".$row['list'].", option: ".$row['dialing_option']);

//Get the number list to an array for easy access.
$list = $row['list'];
$list_array = explode(",", $list);

$type = $row['dialing_option'];

switch ($type){
	case 'simultaneously':
		//Dial all numbers at sametime for 60 seconds.
		$dial_string = "";
		foreach ($list_array as &$value) {
    			$dial_string .= "&SIP/$value";
		}
		$dial_string = substr($dial_string,1);
		$agi -> verbose($dial_string);

		$agi -> exec('dial', $dial_string.',60,tTr');
		break;
	case 'sequentially':
		//Dial numbers one by one for 20 seconds.
		foreach ($list_array as &$value) {
                	$dial_string = "SIP/$value";
			$agi -> exec('dial', $dial_string.',20,tTr');
        	}
		break;
	default:
		//Nothing to do here.
}

close_db_connection($db);

?>

