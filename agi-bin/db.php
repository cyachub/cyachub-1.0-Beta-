<?php

function get_db_connection() {
	$dsn = "mysql:dbname=asterisk;host=localhost;port=3306";
	$username = "asterisk";
	$password = "abc123";
	try {
		$db = new PDO($dsn, $username, $password);
	} catch(PDOException $e) {
echo		$db = 0;
echo $e;
	}
	return $db;
}

function close_db_connection($db) {
	$db = null;
}

/* For testing...
$db = get_db_connection();
if($db){
	echo "T";
}else {
	echo "F";
}
*/
?>
