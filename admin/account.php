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
			Account Details
		  </h1>
		  <ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li>Manage</li>
			<li class="active">Account</li>
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
        <div class="col-xs-6">
		   <form class="form-horizontal" method="POST" action="account_edit.php">
			<div class="box">

            <div class="box-header with-border">
             <button type="submit" class="btn btn-primary btn-flat" name="edit"><i class="fa fa-check-square-o"></i> Update Password</button>	
			</div>
			 
          	<div class="modal-body">
            	
            					
				<?php
                    $sql = "SELECT *, admin.id AS empid FROM admin WHERE admin.id='".$_SESSION['admin']."'";
					
                    $query = $conn->query($sql);
					while($row = $query->fetch_assoc()){
				?>
				

				<input type="hidden" class="empid" name="id" value="<?php echo $row['id']; ?>">
            
				<?php } ?>
					
				<div class="form-group">
                    <label for="new-password" class="col-sm-3 control-label">New Password</label>

                    <div class="col-sm-8">
                      <input type="password" class="form-control" id="new_password" name="password">
                    </div>
                </div>
				
				<div class="form-group">
                   <label for="confirm_password" class="col-sm-3 control-label">Confirm Password</label>

                    <div class="col-sm-8">
                      <input type="password" class="form-control" id="confirm_password" name="confpassword">
                    </div>		
									
                </div>				 			 
						
		 
		 
            </div>

        </div>
      </div>
	              	</form>
    </div>
</section>

</div>
<?php include 'includes/footer.php'; ?>
</div>
<?php include 'includes/scripts.php'; ?>
</body>
</html>
