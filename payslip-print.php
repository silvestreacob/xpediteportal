<?php 
		include('includes/session.php');
		
		function cryptoJsAesDecrypt($passphrase, $jsonString){
			$jsondata = json_decode($jsonString, true);
			try {
				$salt = hex2bin($jsondata["s"]);
				$iv  = hex2bin($jsondata["iv"]);
			} catch(Exception $e) { return null; }
			$ct = base64_decode($jsondata["ct"]);
			$concatedPassphrase = $passphrase.$salt;
			$md5 = array();
			$md5[0] = md5($concatedPassphrase, true);
			$result = $md5[0];
			for ($i = 1; $i < 3; $i++) {
				$md5[$i] = md5($md5[$i - 1].$concatedPassphrase, true);
				$result .= $md5[$i];
			}
			$key = substr($result, 0, 32);
			$data = openssl_decrypt($ct, 'aes-256-cbc', $key, true, $iv);
			return json_decode($data, true);
		}
		
		$encrypted = strval($_GET['payslip']);
		$decrypted = cryptoJsAesDecrypt("my passphrase", $encrypted);

				
		$sql = "SELECT *,  payrollhistory.idpay AS payid FROM payrollhistory LEFT JOIN employees ON employees.employee_id=payrollhistory.employee_id LEFT JOIN position ON position.id=employees.position_id LEFT JOIN department ON department.id=employees.department_id WHERE payrollhistory.idpay='$decrypted'";
		
		$query = $conn->query($sql);
		$row = $query->fetch_assoc();
		
		$payperiod = $row['payroll_period'];
		$payperiod = explode("(", $payperiod);
		
		$datesperiod = explode("-", $payperiod[1]);
		$startdate = $datesperiod[0];
		$enddate = str_replace(")", "", $datesperiod[1]);
		
		$id = sprintf("%'.09d\n", $row['idpay']);	
		$name = $row['lastname'].', '.$row['firstname'].' ('.$row['employee_id'].')';
		
		$incomedesc = $row['income_desc'];
		$incomehrs = $row['income_hrs'];
		$incomeamt = $row['income_amount'];
		
		$grossamt = $row['gross_amount'];
		
		$deductionsdesc = $row['deductions_desc'];
		$deductionsamt = $row['deductions_amount'];
		$deductionstotal = $row['deductions_total'];
		
		$netamount = $row['net_amount'];
		
		$position = $row['pos_description'];
		$department = $row['dep_description'];
		$email = $row['contact_info'];
		
		date_default_timezone_set("Asia/Manila");
		$today = date("d M Y h:i A");  
?>

<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Xpedite Portal | Payslip</title>
  <!-- Tell the browser to be responsive to screen width 
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="./bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="./bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="./bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="./dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="./dist/css/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  
  
</head>
<body onload="window.print();">	
<div class="wrapper">
		
	<section class="invoice">
		
			<div class="row">
			  <div class="col-xs-12">
				<h2 class="page-header">
				  <i class="fa fa-globe"></i> Xpedite, Inc.
				  <small class="pull-right">Date Printed: <?php echo $today ?></small>
				</h2>
			  </div>
			  <!-- /.col -->
			</div>
			
	
	 <!-- info row -->
    <div class="row invoice-info">
      <div class="col-sm-6 invoice-col">
        <address>
          <strong><?php echo $name ?></strong><br>
          <?php echo $position ?><br>
          14th/F Unit 1401 Times Plaza Building<br>
		  Manila, Philippines 1000<br>
          Phone: (02) 7987 5105<br>
          Email: <?php echo $email ?>
        </address>
      </div>
      
      <!-- /.col -->
      <div class="col-sm-6 invoice-col">
        <b>Reference #<?php echo $id ?></b><br>
        <br>
        <b>Payroll Code:</b> <?php echo $payperiod[0]; ?><br>
        <b>Start Date:</b> <?php echo $startdate ?><br>
        <b>End Date:</b>  <?php echo $enddate ?>
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
	
	    <div class="row">
      <!-- accepted payments column -->
      <div class="col-xs-6 table-responsive">
        <p class="lead well well-sm">Income Summary:</p>
			<table class="table">  
    	       	<tr>
					<td width="35%" align="left"><?php echo $incomedesc ?></td> 
					<td width="15%" align="right"><?php echo $incomehrs ?></td> 
					<td width="25%" align="right"><?php echo $incomeamt ?></td> 
	    	    </tr>		    	
    	    </table>
		
		 <p class="lead well well-sm">Deductions:</p>
			<table class="table">  
    	       	<tr>
					<td width="35%" align="left"><?php echo $deductionsdesc ?></td> 
					<td width="15%" align="right"><?php echo $deductionsamt ?></td> 
	
	    	    </tr>		    	
    	    </table>
      </div>
      <!-- /.col -->
      <div class="col-xs-6">
        <p class="lead well well-sm"><b>Net Amount<b></p>

        <div class="table-responsive">
          <table class="table">

            <tr>
              <th>Gross Pay</th>
              <td align="right"><?php echo number_format($grossamt, 2); ?></td>
            </tr>
            <tr>
              <th>Total Deduction:</th>
              <td align="right"><?php echo number_format($deductionstotal, 2); ?></td>
            </tr>
            <tr>
              <th>Net Pay:</th>
              <td align="right"><b> <?php echo number_format($netamount, 2); ?></b></td>
            </tr>
          </table>
        </div>
		
				<div class="footer" style="box-sizing: border-box; font-size: 12px; font-family: &quot;Calibri&quot;,sans-serif; color: #999; width: 100%; clear: both; margin: 0; padding: 10px;">
									 Should there be any discrepancies in the details,
		 you may approach the Accounting Department. Thank you!  <br> <br>
		 
											This form was generated automatically with Xpedite Portal
											to <strong><?php echo $email ?></strong>. The information contained herein is privileged and of confidential nature. This may not be altered in any way, transmitted to, copied or distributed, in part or in whole, to any other person or to the media or reproduced in any form, without prior written consent of Xpedite Inc.
											<br><br> © 2020 Xpedite Inc. All rights reserved
								</div>
        


      </div>
      <!-- /.col -->
			
    </div>
	</section>
</div>

</body>
</html>

