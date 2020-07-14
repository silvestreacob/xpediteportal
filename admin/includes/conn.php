<?php
	//$conn = new mysqli('localhost', 'root', '', 'apsystem');
	$conn = new mysqli('localhost', 'root', '', 'datax');
	
	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	
?>
