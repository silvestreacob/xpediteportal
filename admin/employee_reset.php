<?php
	include 'includes/session.php';

	if(isset($_POST['reset'])){
		$id = $_POST['id'];
		$password = password_hash($_POST['employee_id'], PASSWORD_DEFAULT);

		$sql = "UPDATE employees SET password = '$password' WHERE idno = '$id'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Employee Password was reset to default successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}
	else{
		$_SESSION['error'] = 'Fill up edit form first';
	}

	header('location:employees.php');

?>