<?php

	//$conn = new mysqli('localhost', 'root', '', 'datax');
	$conn = new mysqli('fdb18.biz.nf', '3319611_datax', 'F8aiEkQ#s*CJ2ir', '3319611_datax');
		
	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	
?>
