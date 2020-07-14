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
        <div class="col-xs-12">
          <div class="box">
		       
			<div class="box-header with-border">

            <div class="box-header with-border">
             				
          	<div class="modal-body">
            	<form class="form-horizontal" method="POST" action="account_edit.php">
            					
				<?php
                    $sql = "SELECT *, employees.idno AS empid FROM employees LEFT JOIN position ON position.id=employees.position_id LEFT JOIN department ON
					department.id=employees.department_id WHERE employees.employee_id='".$_SESSION['admin']."'";
					
                    $query = $conn->query($sql);
					while($row = $query->fetch_assoc()){
				?>
				
			  <input type="hidden" class="empid" name="id" value="<?php echo $row['idno']; ?>">

                <div class="form-group">
                    <label for="empid" class="col-sm-3 control-label">Employee ID</label>

                    <div class="col-sm-5">
                      <input type="text" class="form-control" id="empid" name="empid" value="<?php echo $row['employee_id']; ?>" readonly>
                    </div>
                </div>	
					
					
                <div class="form-group">
                    <label for="edit_firstname" class="col-sm-3 control-label">Employee Name</label>

                    <div class="col-sm-5">
                      <input type="text" class="form-control" id="edit_firstname" name="firstname" value="<?php echo $row['lastname'].', '.$row['firstname']; ?>" readonly>
                    </div>
                </div>
				

                <div class="form-group">
                    <label for="edit_contact" class="col-sm-3 control-label">Email Address</label>

                    <div class="col-sm-5">
                      <input type="text"  autocomplete="current-password" class="form-control" id="edit_contact" name="contact" value="<?php echo $row['contact_info']; ?>" readonly>
                    </div>
                </div>	
				
				<?php
                }
                ?>
				  
				<div class="box"></div>
                
				<div class="form-group">
                    <label for="new-password" class="col-sm-3 control-label">New Password</label>

                    <div class="col-sm-5">
                      <input type="password" autocomplete="current-password" class="form-control" id="new_password" name="password">
                    </div>
                </div>
				
				<div class="form-group">
                   <label for="confirm_password" class="col-sm-3 control-label">Confirm Password</label>

                    <div class="col-sm-5">
                      <input type="password" autocomplete="current-password" class="form-control" id="confirm_password" name="confpassword">
                    </div>						
                </div>				
          	</div>

          	</div>         
			 
			<button type="submit" class="btn btn-primary btn-flat" name="edit"><i class="fa fa-check-square-o"></i> Update Password</button>
            	</form>
			 
		 
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
