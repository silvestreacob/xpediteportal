<?php
	include 'includes/session.php';

	if(isset($_POST['add'])){
		$title = $_POST['title'];

		$sql = "INSERT INTO department (dep_description) VALUES ('$title')";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Department added successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}	
	else{
		$_SESSION['error'] = 'Fill up add form first';
	}

	header('location: department.php');

?>