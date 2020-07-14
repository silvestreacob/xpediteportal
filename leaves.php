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
        Leave History
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li>Account</li>
        <li class="active">Leaves</li>
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
               <a href="#apply-leave" data-toggle="modal" class="btn btn-primary btn-sm btn-flat"><i class="fa fa-calendar"></i> Request for Leave</a>
            </div>
            <div class="box-body">
              <table id="example1" class="table table-striped table-bordered">
                <thead>
                  <th>No</th>
                  <th>Reason for Leave</th>
                  <th>Details</th>
                  <th>Leave Date</th>
				  <th>Return Date</th>
				  <th>Total number of days requested</th>				  
                  <th>Status (Pending/Rejected/Approved)</th>
                </thead>
                <tbody>
                  <?php
                    $sql = "SELECT *, employees.idno AS empid FROM employees LEFT JOIN position ON position.id=employees.position_id LEFT JOIN department ON
					department.id=employees.department_id";
					
                    $query = $conn->query($sql);
                    while($row = $query->fetch_assoc()){
                      ?>
                        <tr>
                          <td><?php //echo $row['lastname'].', '.$row['firstname']; ?></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>						  
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
  <?php include 'leaves_modal.php'; ?>
</div>
<?php include 'includes/scripts.php'; ?>

<script>
$(function(){
  $('.apply-leave').click(function(e){
    e.preventDefault();
    $('#apply-leave').modal('show');
    var id = $(this).data('id');
    getRow(id);
  });
});

function getRow(id){
  $.ajax({
    type: 'POST',
    url: 'position_row.php',
    data: {id:id},
    dataType: 'json',
    success: function(response){
      $('#posid').val(response.id);
      $('#edit_title').val(response.pos_description);
      $('#del_posid').val(response.id);
      $('#del_position').html(response.pos_description);
    }
  });
}
</script>
</body>
</html>
