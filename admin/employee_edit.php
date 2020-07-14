<?php include 'includes/session.php';?>
<?php
	if(isset($_POST['edit'])){		
			$id = $_POST['id'];
			$firstname = $_POST['firstname'];
			$lastname = $_POST['lastname'];
			$address = $_POST['address'];
			$datehired = $_POST['datehired'];
			$contact = $_POST['contact'];
			$gender = $_POST['gender'];
			$position = $_POST['position'];
			$department = $_POST['department'];		
			
			$sql = "UPDATE employees SET firstname = '$firstname', lastname = '$lastname', address = '$address', created_on = '$datehired', contact_info = '$contact', gender = '$gender', position_id = '$position', department_id = '$department' WHERE idno = '$id'";
			
			if($conn->query($sql)){
				$_SESSION['success'] = 'Employee information updated successfully';
			}
			else{
				$_SESSION['error'] = $conn->error;
			}
	}

	header('location: employees.php');
?>