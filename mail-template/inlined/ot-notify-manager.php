<?php
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
	$today = date("d M Y (h:i A)", strtotime($timestamp));
	
	$url = "http://itpc-001/xpediteportal";
	//$url = "http://xpediteportal.c1.biz";
			
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns="http://www.w3.org/1999/xhtml" style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;">
<head>
<meta name="viewport" content="width=device-width" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Xpedite Portal</title>


<style>img {
max-width: 220px;
}
body {
-webkit-font-smoothing: antialiased; -webkit-text-size-adjust: none; width: 100% !important; height: 100%; line-height: 1.6em;
}
body {
background-color: #f6f6f6;
}
.icon::before {
display: inline-block; font-style: normal; font-variant: normal; text-rendering: auto; -webkit-font-smoothing: antialiased;
}
.login::before {
font-family: "Font Awesome 5 Free"; font-weight: 900; content: "\f57e";
}
@media only screen and (max-width: 640px) {
  body {
    padding: 0 !important;
  }
  h1 {
    font-weight: 800 !important; margin: 20px 0 5px !important;
  }
  h2 {
    font-weight: 800 !important; margin: 20px 0 5px !important;
  }
  h3 {
    font-weight: 800 !important; margin: 20px 0 5px !important;
  }
  h4 {
    font-weight: 800 !important; margin: 20px 0 5px !important;
  }
  h1 {
    font-size: 22px !important;
  }
  h2 {
    font-size: 18px !important;
  }
  h3 {
    font-size: 16px !important;
  }
  .container {
    padding: 0 !important; width: 100% !important;
  }
  .content {
    padding: 0 !important;
  }
  .content-wrap {
    padding: 10px !important;
  }
  .invoice {
    width: 100% !important;
  }
}
</style></head>

<body itemscope="" itemtype="http://schema.org/EmailMessage" style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; -webkit-font-smoothing: antialiased; -webkit-text-size-adjust: none; width: 100% !important; height: 100%; line-height: 1.6em; margin: 0;" bgcolor="#f6f6f6">

<table class="body-wrap" style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; width: 100%; margin: 0;" bgcolor="#f6f6f6">
	<tr style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;">
		<td style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;" valign="top"></td>
		<td class="container" width="600" style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; display: block !important; max-width: 600px !important; clear: both !important; margin: 0 auto;" valign="top">
			<div class="content" style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; max-width: 600px; display: block; margin: 0 auto; padding: 20px;">
				<table class="main" width="100%" cellpadding="0" cellspacing="0" style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; border-radius: 3px; margin: 0; border: 2px solid #e9e9e9;" bgcolor="#ffffff">
					<tr style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;">
					<!-- logo code here -->
						<td class="logo" style="box-sizing: border-box; font-size: 20px; font-family: &quot;Calibri&quot;,sans-serif; color: #fff; font-weight: bold; border-radius: 3px 0 0 0; margin: 0; padding: 20px;" align="left" bgcolor="#007AC6" valign="top">														
							<span class="icon login" style="font-size: 22px; color: #ffffff; box-sizing: border-box; font-family: &quot;Calibri&quot;,sans-serif; margin: 0;"></span> Xpedite, Inc
						</td>
					<!-- logo code END here -->

					
						<td class="subject" style="box-sizing: border-box; font-size: 18px; font-family: &quot;Calibri&quot;,sans-serif; color: #fff; font-weight: 200; border-radius: 0 3px 0 0; white-space: nowrap; margin: 0; padding: 20px;" align="right" bgcolor="#007AC6" valign="top">							
							Overtime Application
						</td>
					</tr>
					
					<tr style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;">
						<td colspan="2" class="content-wrap" style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0; padding: 20px;" valign="top">
							<table width="100%" cellpadding="0" cellspacing="0" style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;">
								<tr style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;">
									<td class="content-block" style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0; padding: 0 0 20px;" valign="top">
										Dear <strong style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;"><?php echo $mngr_name ?></strong> ,
									</td>
								</tr>
								
								<tr style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;">
									<td class="content-block" style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0; padding: 0 0 20px;" valign="top">
										Employee <strong style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;"><?php echo  nameonly ?></strong> 
										has filed an overtime on <strong style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;"><?php echo $today ?></strong> with reference number <strong style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;"> <?php echo $id ?> </strong>. Details are as follows:
									</td>												
								</tr>
								
								<tr style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;">
									<td class="content-details" style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0; padding: 0 0 20px 40px;" valign="top">											
										Name: <strong style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;">'.$nameonly.'</strong><br style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;" />
										Department: '.$department.' <br style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;" />

										Type: '.$type.' <br style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;" />
										Duration: '.$duration.'<br style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;" />
										Total Overtime Hours: <strong style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;">'.$num_hrs.'</strong><br style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;" />
										Reason: <br style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;" />
										<strong style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;">'.$description.'</strong>
									</td>																								
								</tr>
								
								<tr style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;">
									<td class="content-block" style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0; padding: 0 0 20px;" valign="top">
										Please proceed to <strong style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;"> approve </strong> or <strong style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;"> decline </strong> this overtime application.
									</td>
								</tr>
																
								<tr style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;">
									<td class="content-btn" style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0; padding: 0 0 12px;" valign="top">
										<a href="'.$url.'/thankyou.php?resp='.$approved.'&token='.$token.'" class="btn-primary" style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #FFF; text-decoration: none; background-color: #00a65a; line-height: 2em; font-weight: bold; text-align: center; cursor: pointer; display: inline-block; border-radius: 5px; text-transform: capitalize; margin: 0; border-color: #00a65a; border-style: solid; border-width: 10px 20px;"><!--[if mso]>&nbsp; &nbsp;<![endif]-->Approve<!--[if mso]>&nbsp; &nbsp;<![endif]--></a>
										<a href="'.$url.'/thankyou.php?resp='.$denied.'&token='.$token.'" class="btn-warning" style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #FFF; text-decoration: none; background-color: #dd4b39; line-height: 2em; font-weight: bold; text-align: center; cursor: pointer; display: inline-block; border-radius: 5px; text-transform: capitalize; margin: 0; border-color: #dd4b39; border-style: solid; border-width: 10px 20px;"><!--[if mso]>&nbsp; &nbsp;<![endif]-->Decline<!--[if mso]>&nbsp; &nbsp;<![endif]--></a>
									</td>
								</tr>
								<tr style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;">
									<td class="content-block" style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0; padding: 0 0 20px;" valign="top">
										Thank you!
									</td>
								</tr>
								
								<tr style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;">
									<td class="content-block" style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0; padding: 0 0 20px;" valign="top">
										<span class="icon login" style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;"></span><strong style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;"> Xpedite, Inc. </strong>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<div class="footer" style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #999; width: 100%; clear: both; margin: 0; padding: 20px;">
					<table width="100%" style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;">
						<tr style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;">
							<td class="alignleft content-block" style="box-sizing: border-box; font-size: 12px; font-family: &quot;Calibri&quot;,sans-serif; color: #999; margin: 0; padding: 0 0 20px;" align="left" valign="top">
							This email was sent automatically by Xpedite Portal
							to '.$mngr_email.'. Please ignore this email and do not click any links if you are not the owner of this account. <br style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;" /><br style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;" />
						
							© 2020 Xpedite Inc. All rights reserved</td>
						</tr>
					</table>
				</div></div>
		</td>
		<td style="box-sizing: border-box; font-size: 14px; font-family: &quot;Calibri&quot;,sans-serif; color: #66747E; margin: 0;" valign="top"></td>
	</tr>
</table>

</body>
</html>