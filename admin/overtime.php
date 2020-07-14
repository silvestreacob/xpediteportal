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
        Overtime History
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li>Tools</li>
        <li class="active">Overtime</li>
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
            <div class="box-header">
               <!-- <a href="#overtime-request" data-toggle="modal" class="btn btn-primary btn-sm btn-flat"><i class="fa fa-edit"></i> File Overtime</a> -->
			   
			   
            </div>
            
			<div class="box-body">
              <table id="List" class="table table-striped table-bordered">
                <thead>
                  <th>Reference No.</th>
				  <th>Name</th>
                  <th>Status</th>                  
				  <th>Details</th>
				  <th>Total Hours</th>				  
				  <th>Date Approved</th>			  
                </thead>
                <tbody>
                  <?php
                    $sql = "SELECT *, overtime.id AS otid FROM overtime LEFT JOIN employees ON overtime.employee_id=employees.employee_id";
										
                    $query = $conn->query($sql);
                    while($row = $query->fetch_assoc()){
                      ?>
					  <?php
						
						$details = '<b>Date Filed: </b>'.$row['filed_date'];
						$details .= '<br><b>Type: </b>'.$row['ottype'];
						$details .= '<br><b>Duration: </b>'.$row['startdate'].' - '.$row['enddate'];
						$details .= '<br><b>Reason: </b>'.$row['description'];
						
						$status = $row['status'];
						
						if ($status == 'Pending'){
							$status = '<span class="label label-warning">Pending</span>';
						}
						elseif ($status == 'Approve'){
							$status = '<span class="label label-success">Approved</span>';
						}
						else{
							$status = '<span class="label label-danger">Denied</span>';
						}
					  ?>
					  
                        <tr>
                          <td><?php echo sprintf("%'.05d\n", $row['id']); ?></td>	  
						  <td nowrap><?php echo $row['lastname'].', '.$row['firstname']; ?></td>
                          
                          <td><?php echo $status ?></td>
                          <td><span><?php echo $details ?></span></td>						  
                          <td><?php echo number_format($row['totalhrs'], 2); ?></td>
                          <td><?php echo $row['approved_date']; ?></td>						  
                        </tr>
                      <?php
                    }
                  ?>
                </tbody>
              </table>
            </div>
</div>		  
</div>
</div>
    </section>   
  </div>
    
  <?php include 'includes/footer.php'; ?>

</div>

<?php include 'includes/scripts.php'; ?>
<script>
$(function(){
	  var table = $('#List').DataTable({
      responsive: true,
	  "order": [[ 0, "desc" ], [ 1, "asc" ]]
    }); 
});
</script>

</body>
</html>
