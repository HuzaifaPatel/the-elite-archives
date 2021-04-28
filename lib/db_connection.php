<?php

class db_connection{
	
}


function Opencon(){
	$dbhost = "localhost";
	$dbuser = "root";
	$dbpass = "";
	$db = "the-elite-videos";

	$conn = new mysqli($dbhost, $dbuser, $dbpass, $db) or die ("Connect failed: %s \n". $conn -> error);

	return $conn;
}


function CloseCon($conn){
	$conn -> close();
}

?>