<?php include 'includes/session.php';?>
<?php

if(isset($_POST['edit']) AND !empty($_POST['password'])){
		
		if($_POST['password'] == $_POST['confpassword']){
			$id = $_POST['id'];
			$password = password_hash($_POST['password'], PASSWORD_DEFAULT);
			
			$sql = "UPDATE admin SET password = '$password' WHERE id = '$id'";
			
			if($conn->query($sql)){
				$_SESSION['success'] = 'Password updated successfully';
			}
			else{
				$_SESSION['error'] = $conn->error;
			}
		}
		
		else{
		 $_SESSION['error'] = 'Passwords do not match';
		}

	
}

header('location: account.php');
?>