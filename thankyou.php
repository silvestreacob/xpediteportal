<?php
include 'includes/header.php'; 
require_once 'includes/conn.php';

if(isset($_GET['token'])){
	
    $token = isset($_GET['token']) ? strip_tags($_GET['token']) : "";
		
    $sql = "SELECT*, overtime.id as id FROM overtime LEFT JOIN employees ON employees.employee_id=overtime.employee_id WHERE overtime.token = '$token'";
	
	$query = $conn->query($sql);
	$row = $query->fetch_assoc();
	
	$id = sprintf("%'.09d\n", $row['id']);
	$nameonly = ucwords(strtolower($row['firstname']));		
	$fullname = ucwords(strtolower($row['lastname'].', '.$row['firstname']));
	$fullname .= ' ('.$row['employee_id'].')';
	
	$type = $row['ottype'];
	$description = $row['description'];
	$num_hrs = $row['totalhrs'];						
	$startdate = $row['startdate'];
	$enddate = $row['enddate'];
	$duration = $startdate. ' - ' .$enddate;
			
	date_default_timezone_set("Asia/Manila");
	$timestamp = date("d M Y h:i A");
	
	if($query->num_rows < 1){

		$header = '<td class="header-bad" style="font-size: 20px; font-weight: bold;">														
					<span class="icon login" style="font-size: 22px; color: #ffffff;"></span> Xpedite, Inc </td>					
					<td class="header-bad" style="text-align: right;">							
					ERROR: </td>';
		
		$msg = 'ERROR: Unable to process request.
				Please contact administrator.';
		$details ='';
	}
	
	elseif ($row['status'] == 'Approved'){	
		$header = '<td class="header-warning" style="font-size: 20px; font-weight: bold;">														
					<span class="icon login" style="font-size: 22px; color: #ffffff;"></span> Xpedite, Inc </td>					
					<td class="header-warning" style="text-align: right;">							
						Overtime already approved </td>';
					
		$msg = 'Overtime request with reference number <strong>'.$id.'</strong> already been approved by <strong>'.$row['manager_email']. '</strong> on <strong>' .$row['approved_date']. '</strong>. If you didnt approved this request, please contact HR or IT. Details are as follows:';
		
		$details ='Name: <strong>'.$fullname.'</strong><br>
				Reference #: '.$id.' <br><br>
				Type: '.$type.'<br>
				Duration: '.$duration.'<br>
				Total Overtime Hours: <strong>'.$num_hrs.'</strong><br>
				Reason:
				<strong>'.$description.'</strong>';
	}
	
	elseif ($row['status'] == 'Denied'){	
		$header = '<td class="header-bad" style="font-size: 20px; font-weight: bold;">														
					<span class="icon login" style="font-size: 22px; color: #ffffff;"></span> Xpedite, Inc </td>					
					<td class="header-bad" style="text-align: right;"> Overtime Denied </td>';
					
		$msg = 'Overtime request with reference number <strong>'.$id.'</strong> already been denied by <strong>'.$row['manager_email']. '</strong> on <strong>' .$row['approved_date']. '</strong>. Details are as follows:';
		
		$details ='Name: <strong>'.$fullname.'</strong><br>
				Reference #: '.$id.' <br><br>
				Type: '.$type.'<br>
				Duration: '.$duration.'<br>
				Total Overtime Hours: <strong>'.$num_hrs.'</strong><br>
				Reason: 
				<strong>'.$description.'</strong>';
	}

	else {
		
		$hash = isset($_GET['resp']) ? strip_tags($_GET['resp']) : "";
		
		if (password_verify('Approved', $hash)){

		$update = "UPDATE overtime SET approved_date = '$timestamp',  status = 'Approved' WHERE token = '$token'";
		
			if($conn->query($update)){
				$header = '<td class="header-good" style="font-size: 20px; font-weight: bold;">														
							<span class="icon login" style="font-size: 22px; color: #ffffff;"></span> Xpedite, Inc </td>					
							<td class="header-good" style="text-align: right;"> Overtime Approved </td>';
				
				$msg = 'Thank you for your response! We will notify <strong>'.$nameonly.'</strong> that his/her overtime request with reference number <strong>'.$id.'</strong> was approved. <br><br>';			
				$msg .= 'Also, a separate email will be send to HR and Accounting.';
				$details ='';
				
				//email receipt manager
				//email HR 
				//email employee
				}
		}
		
		elseif (password_verify('Denied', $hash)) {
			
			$update = "UPDATE overtime SET approved_date = '$timestamp',  status = 'Denied' WHERE token = '$token'";
			
				if($conn->query($update)){
					$header = '<td class="header-bad" style="font-size: 20px; font-weight: bold;">														
							<span class="icon login" style="font-size: 22px; color: #ffffff;"></span> Xpedite, Inc </td>					
							<td class="header-bad" style="text-align: right;"> Denied </td>';
				
					$msg = 'Thank you for your response! We will notify <strong>'.$nameonly.'</strong> that his/her overtime request with reference number <strong>'.$id.'</strong> was denied. <br><br>';			
					
					$details ='';
				}
		}
		
	}
	

}

else{
    header("Location:index.php");
}

?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Xpedite Portal</title>
<link href="mail-template/styles.css" media="all" rel="stylesheet" type="text/css" />

</head>

<body itemscope itemtype="http://schema.org/EmailMessage">

<table class="body-wrap">
	<tr>
		<td></td>
		<td class="container" width="600">
			<div class="content">
				<table class="main" width="100%" cellpadding="0" cellspacing="0">
					<tr>
					<!-- logo code here -->
						<?php echo $header ?>
					</tr>
					
					<tr>
						<td colspan="2" class="content-wrap">
							<table width="100%" cellpadding="0" cellspacing="0">
								<tr>
									<td class="content-block">
										<?php echo $msg ?>
									</td>
								</tr>
																
								<tr>
									<td class="content-details">										
										<?php echo $details ?>
									</td>																								
								</tr>
								
								<tr>
									<td class="content-block">
										Thank you!
									</td>
								</tr>
								
								<tr>
									<td class="content-block">
										<span class="icon login"></span><strong> Xpedite, Inc. </strong>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<div class="footer">
					<table width="100%">
						<tr>
							<td class="alignleft content-block">
							This was automatically generated by Xpedite Portal. Please ignore and do not click any links if you are not the owner of this account. If you received this message by mistake, kindly report to IT.<br>
						
							© 2020 Xpedite Inc. All rights reserved</td>
						</tr>
					</table>
				</div></div>
		</td>
		<td></td>
	</tr>
</table>

</body>
</html>