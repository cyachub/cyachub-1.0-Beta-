#!/usr/bin/php5
<?php
set_time_limit(30);
require('phpagi.php');
require('db.php');

error_reporting(E_ALL); // We turn on all php errors during development.
//error_reporting(0); // We turn off all php errors during production.

/*
Handle incoming call from outside.
*/

$agi = new AGI();
$db = get_db_connection();
if (!$db) {
        $agi -> verbose("Failed to connect db!");
        exit;
}

//Get dialled number. We will use this to lookup the destination.
$exten = $agi->request['agi_dnid'];
$agi -> verbose("Incoming call to $exten");

//Get dstination and in which context.
$sql = "select dst,dcontext from sip_trunk where did='$exten'";
$result = $db -> query($sql);
$row = $result -> Fetch();
$dst = $row['dst'];
$dcontext = $row['dcontext'];
$agi->verbose("dst : $dst, dcontext : $dcontext");

$agi -> exec_goto($dcontext,$dst,'1');

close_db_connection($db);
?>
