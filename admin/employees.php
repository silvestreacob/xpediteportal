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
        Employee List
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li>Employees</li>
        <li class="active">List</li>
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
               <a href="#addnew" data-toggle="modal" class="btn btn-primary btn-sm btn-flat"><i class="fa fa-plus"></i> New Employee</a>
            </div>
            
			<div class="box-body">
              <table id="example" class="table table-striped table-bordered">
                <thead>
                  <th>Name</th>
                  <th>Employee ID</th>
                  <th>Photo</th>
                  <th>Date Hired</th>
				  <th>Position</th>
				  <th>Option</th>	
                </thead>
                <tbody>
                  <?php
                    $sql = "SELECT *, employees.idno AS empid FROM employees LEFT JOIN position ON position.id=employees.position_id LEFT JOIN department ON
					department.id=employees.department_id";
					
                    $query = $conn->query($sql);
                    while($row = $query->fetch_assoc()){
                      ?>
                        <tr>
						 
                          <td>
							  <?php echo $row['lastname'].', '.$row['firstname']; ?>
						  </td>
                          
						  <td><?php echo $row['employee_id']; ?></td>
                          <td><img src="<?php echo (!empty($row['photo']))? '../images/'.$row['photo']:'../images/profile.jpg'; ?>" width="30px" height="30px"> <a href="#edit_photo" data-toggle="modal" class="pull-right photo" data-id="<?php echo $row['empid']; ?>"><span class="fa fa-edit"></span></a></td>
                          <td><?php echo $row['created_on']; ?></td>
						  <td><?php echo $row['pos_description']; ?></td>

						  <td>
						      <button class="btn btn-success btn-sm edit btn-flat" data-id="<?php echo $row['empid']; ?>"><i class="fa fa-edit"></i> Edit&nbsp&nbsp&nbsp</button>
							  <button class="btn btn btn-sm reset btn-flat" data-id="<?php echo $row['empid']; ?>"><i class="fa fa-history"></i> Reset&nbsp</button>
							  <button class="btn btn-danger btn-sm delete btn-flat" data-id="<?php echo $row['empid']; ?>"><i class="fa fa-trash"></i> Delete</button>
						  </td>
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
  <?php include 'employee_modal.php'; ?>
</div>
<?php include 'includes/scripts.php'; ?>
<script>
$(function(){
  $('.edit').click(function(e){
    e.preventDefault();
    $('#edit').modal('show');
    var id = $(this).data('id');
    getRow(id);
  });

  $('.delete').click(function(e){
    e.preventDefault();
    $('#delete').modal('show');
    var id = $(this).data('id');
    getRow(id);
  });

  $('.reset').click(function(e){
    e.preventDefault();
    $('#reset').modal('show');
    var id = $(this).data('id');
    getRow(id);
  });
  
  $('.photo').click(function(e){
    e.preventDefault();
    var id = $(this).data('id');
    getRow(id);
  });
  
  var table = $('#example').DataTable({
      responsive: true,
	  "order": [[ 1, "desc" ]]
    });   
  $('#example tbody').on('click', 'tr', function () {
		var data = table.row( this ).data();
		//alert( 'You clicked on '+data[0]+'\'s row' );
		//getRow(data);
  });
});

function getRow(id){
  $.ajax({
    type: 'POST',
    url: 'employee_row.php',
    data: {id:id},
    dataType: 'json',
    success: function(response){

      $('.empid').val(response.empid);
      $('.employee_id').html(response.employee_id);
	  $('.reset_id').val(response.employee_id);
	  
      $('.del_employee_name').html(response.firstname+' '+response.lastname);
      $('.employee_name').html(response.lastname+', '+response.firstname);
	  
      $('#edit_firstname').val(response.firstname);
      $('#edit_lastname').val(response.lastname);
      $('#edit_address').val(response.address);
      $('#datepicker_edit').val(response.created_on);
      $('#edit_contact').val(response.contact_info);
      $('#gender_val').val(response.gender).html(response.gender);
      $('#position_val').val(response.position_id).html(response.pos_description);
	  $('#department_val').val(response.department_id).html(response.dep_description);
	  
	  $('#new_password').val(response.null);
      $('#confirm_password').val(response.null);
      
    }
  });
}
</script>
</body>
</html>
