<?php 
	include 'includes/session.php';

	if(isset($_POST['add'])){
		$empid = $_POST['empid'];		
		$sql = "SELECT employee_id FROM employees WHERE employee_id = '$empid'";
		
		if(($conn->query($sql))->num_rows > 0){
		  $_SESSION['error'] = $empid. ' Employee ID already in used';
		}
		
		else{
			$firstname = $_POST['firstname'];
			$lastname = $_POST['lastname'];
			$address = $_POST['address'];
			$datehired = $_POST['datehired'];
			$contact = $_POST['contact'];
			$gender = $_POST['gender'];
			$position = $_POST['position'];
			$department = $_POST['department'];
			$filename = $_FILES['photo']['name'];
			if(!empty($filename)){
				move_uploaded_file($_FILES['photo']['tmp_name'], '../images/'.$filename);	
			}
			//creating employeeid
			$password = password_hash($_POST['empid'], PASSWORD_DEFAULT);
			
			//
			$sql = "INSERT INTO employees (employee_id, firstname, lastname, address, contact_info, gender, position_id, department_id, photo, created_on, password) VALUES ('$empid', '$firstname', '$lastname', '$address', '$contact', '$gender', '$position', '$department', '$filename', '$datehired', '$password')";
			
			if($conn->query($sql)){
				$_SESSION['success'] = 'Employee added successfully';
			}
			else{
				$_SESSION['error'] = $conn->error;
			}

		}
	}	
		header('location: employees.php');
?>