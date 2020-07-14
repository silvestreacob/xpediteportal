<?php
	session_start();
	include 'includes/conn.php';

	if(isset($_POST['login'])){
		$username = $_POST['username'];
		$inputpassword = $_POST['password'];
		$password = password_hash($inputpassword, PASSWORD_DEFAULT);

		$sql = "SELECT * FROM employees WHERE employee_id = '$username'";
		$query = $conn->query($sql);

		if($query->num_rows < 1){
			$_SESSION['error'] = 'Cannot find account with the employee ID';
		}
		else{
			$row = $query->fetch_assoc();
			//$datapassword = password_hash($row['password'], PASSWORD_DEFAULT);
			$datapassword = $row['password'];
			
			if(password_verify($inputpassword, $datapassword)){
			
					$_SESSION['admin'] = $row['employee_id'];
				}

			else{
				$_SESSION['error'] = 'Incorrect password';
			}
		}
		
	}
	else{
		$_SESSION['error'] = 'Input admin credentials first';
	}

	header('location: index.php');

?>