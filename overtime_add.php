<?php
	include 'includes/session.php';

	if(isset($_POST['add'])){
				
		if(!((strpos($_POST['mngr_email'], ".") > 0) && (strpos($_POST['mngr_email'], "@") > 0)) || 
                preg_match("/[^a-zA-Z0-9.@_-]/", $_POST['mngr_email'])){
					
					$_SESSION['error'] = 'ERROR: Unable to process request. Email is invalid';
				}
		else {
				
		$id = $_POST['empid'];
		$mngr_email = $_POST['mngr_email'];
		$department = $_POST['department'];
		
		$sql = "SELECT* FROM employees WHERE contact_info = '$mngr_email'";
		$query = $conn->query($sql);
		
		if($query->num_rows < 1){

			$_SESSION['error'] = 'ERROR: Unable to process request. Please check *'.$mngr_email.'. The email you input is not a registered email account.';
		}
		
		else{
			$row = $query->fetch_assoc();
			$mngr_name = ucwords(strtolower($row['firstname']));
		
			$sql = "SELECT*, employees.employee_id AS id FROM employees LEFT JOIN department ON department.id=employees.department_id WHERE employees.employee_id = '$id'";
			
			$query = $conn->query($sql);
			$row = $query->fetch_assoc();						
		
			$email = $row['contact_info'];
			$name = $row['lastname'].', '.$row['firstname'].' ('.$row['employee_id'].')';
			$nameonly = ucwords(strtolower($row['lastname'].', '.$row['firstname']));
			
			$department = $row['dep_description'];
			
			$type = $_POST['overtimetype'];
			$description = $_POST['description'];
			$num_hrs = $_POST['totalhours'];						
			$daterange = $_POST['daterange'];
			
			$split_date = explode('-', $daterange);	//split daterange			
			$startdate = date("d M h:i A", strtotime($split_date[0]));
			$enddate = date("d M h:i A", strtotime($split_date[1]));
			$duration = $startdate. ' - ' .$enddate;
			
			
			date_default_timezone_set("Asia/Manila");
			$timestamp = date("d M Y h:i A");  
		
		$sql = "INSERT INTO overtime (employee_id, employee_email, manager_email, ottype, description, filed_date, startdate, enddate, totalhrs, status) 
							VALUES ('$id', '$email', '$mngr_email', '$type', '$description', '$timestamp', '$startdate', '$enddate', '$num_hrs', 'Pending')";
							
							
		
		
		if($conn->query($sql)){
			
			$id = mysqli_insert_id($conn);
			$token = password_hash($id, PASSWORD_DEFAULT);
			
			$approved = password_hash('Approved', PASSWORD_DEFAULT);
			$denied = password_hash('Denied', PASSWORD_DEFAULT);
			
			$sql = "UPDATE overtime SET token = '$token' WHERE id = '$id'";
			$conn->query($sql);
						

			//SEND MAIL
			
            $subject = "Overtime Application: $name";            
            $from = "xpenotification@gmail.com";
			$fromName = 'no-reply';   
			
			$headers = "MIME-Version: 1.0" . "\r\n"; 
			$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n"; 
			 
			// Additional headers 
			$headers .= 'From: '.$fromName.'<'.$from.'>' . "\r\n"; 
			//$headers .= 'Cc: welcome@example.com' . "\r\n"; 
			//$headers .= 'Bcc: welcome2@example.com' . "\r\n"; 
			
			$link = 'mail-template\inlined\ot-notify-manager.php?token='.$token.'';
			$htmlContent = file_get_contents("mail-template\inlined\ot-notify-manager.php");								
			//$htmlContent = '		
			



			//';
				
							
					mail($mngr_email, $subject, $htmlContent, $headers);
					
				$_SESSION['success'] = 'Thank you! Your request has been sent to your supervisor for further review. A confirmation mail will be send to you after the overtime request has been approved by your supervisor.';
				}
				
				else{
					$_SESSION['error'] = 'Sorry, an error occurred test error. Please try again after couple of minutes.';
				}
				
		}

		}
	
	}	
	else{
		$_SESSION['error'] = 'Fill up add form first';
	}

	header('location: overtime.php');

?>