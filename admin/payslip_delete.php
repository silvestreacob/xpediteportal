<?php include 'includes/session.php'; ?>
<?php
	if(isset($_POST['delete'])){
		$id = $_POST['id'];
		$sql = "DELETE FROM payrollhistory WHERE idpay = '$id'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Employee data deleted successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}
	else{
		$_SESSION['error'] = 'Select item to delete first';
	}

	header('location: payroll-history.php');
	
?>