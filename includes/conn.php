<?php


	//$conn = new mysqli('localhost', 'root', '', 'datax');
	//$conn = new mysqli('fdb18.biz.nf', '3319611_datax', 'F8aiEkQ#s*CJ2ir', '3319611_datax');
	$ip =  $_SERVER['SERVER_ADDR'];
	//printf("IP Address is: $ip", "<br>");

	if ($ip == "::1") {

		$server = "localhost";
		$username = "root";
		$password = "";
		$db = "datax";

	}

	else {

		$url = parse_url(getenv("CLEARDB_DATABASE_URL"));

		$server = $url["host"];
		$username = $url["user"];
		$password = $url["pass"];
		$db = substr($url["path"], 1);

	}
	
	$conn = new mysqli($server, $username, $password, $db);
		
	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	
?>
