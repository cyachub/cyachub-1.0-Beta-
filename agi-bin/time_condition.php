#!/usr/bin/php5
<?php
set_time_limit(30);
require('phpagi.php');
require('db.php');

error_reporting(E_ALL); // We turn on all php errors during development.
//error_reporting(0); // We turn off all php errors during production.

/*
Time condition module
*/

$agi = new AGI();
$db = get_db_connection();
if (!$db) {
        $agi -> verbose("Failed to connect db!");
        exit;
}

//We use this same script for both cases of time conditions.
//check dialplan under time_condition context to get better idea.
//argv1 may null, 'yes' or 'no'.
$argv1 = $argv[1];

$exten = $agi -> request['agi_extension'];
$agi -> verbose("Call to time condition : $exten");
$agi -> verbose($argv1);

if ($argv1 == 'yes') {

	$sql = "select context_if_true,dst_if_true from time_condition where id='$exten'";
	$result = $db -> query($sql);
	$row = $result -> Fetch();
	$agi -> exec('goto',$row['context_if_true'].','.$row['dst_if_true'].',1');

} else if ($argv1 == 'no') {
	$sql = "select context_if_false,dst_if_false from time_condition where id='$exten'";
	$result = $db -> query($sql);
	$row = $result -> Fetch();
	$agi -> exec('goto',$row['context_if_false'].','.$row['dst_if_false'].',1');
} else {

	$sql = "select time_group_id from time_condition where id='$exten'";
	$result = $db -> query($sql);
	$row = $result -> Fetch();
	$agi->verbose("time group id :{$row['time_group_id']}");

	$time_group_id = $row['time_group_id'];

	if ($time_group_id) {

		$sql = "select time_range, days_of_week, days_of_month, months from time_group where id='$time_group_id';";
		$result = $db -> query($sql);
		$row = $result -> Fetch();

		$time_con_string = $row['time_range'].','.$row['days_of_week'].','.$row['days_of_month'].','.$row['months'];
	
		if ($time_con_string) {
			$agi -> exec('GotoIfTime',$time_con_string.'?lable_if_true:lable_if_false');
		} else {
			$agi->verbose("Unable to setup timegroup string ...");
		}

 	} else {
		$agi->verbose("Undefined time group id ...");
	}
}
mysql_close();
?>

