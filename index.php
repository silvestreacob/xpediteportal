<?php
  session_start();
  if(isset($_SESSION['admin'])){
    header('location:dashboard.php');
  }
?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition login-page">

<!-- <div class="login-box-body">
	<img src="./images/logo.png" align="middle" width="220px" alt="logo">
</div> -->


					<div class="login-box">					
					  
						<div class="login-box-body">
							<div class="box-header with-border">
								<img src="./images/new-logo-design.png" align="middle" width="100%" alt="logo">
							</div>							

							<form action="login.php" method="POST">
							
								<div class="form-group has-feedback">
									<label for="username" class="col-sm-3 control-label">Username</label>
									
									<input type="text" class="form-control" name="username" placeholder="Employee ID (ex. MNL019001)" required autofocus>
									<span class="glyphicon glyphicon-user form-control-feedback"></span>
								</div>
							  <div class="form-group has-feedback">
									<label for="password" class="col-sm-3 control-label">Password</label>
											
									<input type="password" class="form-control" name="password" placeholder="Password">
									<span class="glyphicon glyphicon-lock form-control-feedback"></span>
							  </div>
								<div class="row">
									<div class="col-xs-4">
										<button type="submit" class="btn btn-primary btn-block btn-flat" name="login"><i class="fa fa-sign-in"></i> Sign In</button>
									</div>
									<div class="col-xs-8">
									    <small class='ml-2 pull-right'>
											<a href="admin/index.php" class='text-sm'>Administrator Login?</a>
										</small>
									</div>
								</div>
							</form>
						</div>
						<?php
							if(isset($_SESSION['error'])){
								echo "
									<div class='callout callout-danger text-center mt20'>
										<p>".$_SESSION['error']."</p> 
									</div>
								";
								unset($_SESSION['error']);
							}
						?>
						
							
					</div>

<?php include 'includes/scripts.php' ?>
</body>

</html>

