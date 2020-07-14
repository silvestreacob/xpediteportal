<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  	<?php include 'includes/navbar.php'; ?>
  	<?php include 'includes/menubar.php'; ?>
	
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
		
		<!-- Content Header (Page header) -->
		<section class="content-header">
		  <h1>
			Dashboard
		  </h1>
		  <ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Dashboard</li>
		  </ol>
		</section>
		
		<!-- Main content -->
		<section class="content">
				
				<?php
				if(isset($_SESSION['error'])){
				  echo "
					<div class='alert alert-danger alert-dismissible'>
					  <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
					  <h4><i class='icon fa fa-warning'></i> Error!</h4>
					  ".$_SESSION['error']."
					</div>
				  ";
				  unset($_SESSION['error']);
				}
				if(isset($_SESSION['success'])){
				  echo "
					<div class='alert alert-success alert-dismissible'>
					  <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
					  <h4><i class='icon fa fa-check'></i> Success!</h4>
					  ".$_SESSION['success']."
					</div>
				  ";
				  unset($_SESSION['success']);
				}
			  ?>
				<div class="row">
					<div class="col-xs-12">
					  <div class="box">
						<div class="box-header with-border">
						  
							<h4 class="text-center"><b>
							Welcome, <?php echo $user['firstname'].' '.$user['lastname'];?></b></h1>
							<br><p>Here is where to manage your details as an employee.
							With the tabs on the left-sidebar, you can update
							 your account without any difficulty.</p>
							<p>Also included are the ability to request for new leaves - all at the
							comfort of your home or on the go.</p>
							<p>You can view your payslip here, generate reports of the
							leave activities of a particular time/all time, view leave
							statistics, pending leaves, and update your job description.
							</p>
							<br><h4 class="modal-title"><b>We hope you love your dashboard, great new features are coming!</b></h5>
							<br><br><quote class="pull-right">
								<i class="fa fa-heart fa-4x text-green"></i><br>
								<span>Your friends!</span><br>
								<b>Xpedite, Inc</b></quote>
							<br><br><br>
					 
						</div>
					  </div>
					</div>
				</div>
		</section>
</div>
<?php include 'includes/footer.php'; ?>
</div>
<?php include 'includes/scripts.php'; ?>
</body>
</html>
