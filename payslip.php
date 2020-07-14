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
        Payroll History
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li>View</li>
        <li class="active">Payroll History</li>
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
           <!--   <div class="box-header with-border">
               <a href="#addnew" data-toggle="modal" class="btn btn-primary btn-sm btn-flat"><i class="fa fa-plus"></i> New</a>
            </div> -->

            <div class="box-body">
              <table id="example" class="table table-striped table-bordered">
                <thead>
				  <th>Option</th>
                  <th>Payroll Period</th>
                  <th>Employee ID</th>
                  <th>Gross Pay</th>
                  <th>Deductions</th>
                  <th>Net Pay</th>

                </thead>
                <tbody>
                  <?php
                    $sql = "SELECT *, payrollhistory.idpay AS payid FROM payrollhistory LEFT JOIN employees ON employees.employee_id=payrollhistory.employee_id WHERE payrollhistory.employee_id='".$_SESSION['admin']."'";

					//$sql = "SELECT *, payrollhistory.idpay AS idpay FROM payrollhistory";
					
                    $query = $conn->query($sql);
                    while($row = $query->fetch_assoc()){
                      ?>
                        <tr>
							<td>                            
			   <button class="btn btn-success btn-sm payslip btn-flat" data-id="<?php echo $row['payid']; ?>"><i class="glyphicon glyphicon-print"></i> View Details</button>						
                          </td> 
                          <td><?php echo $row['payroll_period']; ?></td>
						  <td><?php echo $row['employee_id']; ?></td>
                          <td><?php echo number_format($row['gross_amount'], 2);?></td>
						  <td><?php echo number_format($row['deductions_total'], 2);?></td>
						  <td><?php echo number_format($row['net_amount'], 2);?></td>

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
  <?php include 'payslip_modal.php'; ?>
</div>
<?php include 'includes/scripts.php'; ?>							
<script>
$(function(){
  $('.payslip').click(function(e){
    e.preventDefault();
    $('#payslip').modal('show');
    var id = $(this).data('id');
    getRow(id);
	
	console.log(id);
  });
    
  var table = $('#example').DataTable({
	  responsive: true,
	  "order": [[ 1, "desc" ]]
	});     
  
  $('#example tbody').on('click', 'tr', function () {
		var data = table.row( this ).data();
		//alert( 'You clicked on '+data[0]+'\'s row' );
		//getRow(data[0]);
  });
  
  
});

function getRow(id){
  $.ajax({
    type: 'POST',
    url: 'payslip_row.php',
    data: {id:id},
    dataType: 'json',
    success: function(response){ 	  
	  $('.payid').val(response.idpay);
      $('.pay_period').html(response.payroll_period);
	  
      $('#empid').html(response.employee_id);
	  $('#fullname').html(response.lastname+', '+response.firstname+' ('+response.employee_id+ ')');
      $('#position_val').html(response.pos_description);
	  $('#department_val').html(response.dep_description);
	  $('#gender_val').html(response.gender); 
	  $('#emailadd').html(response.contact_info);
			
	  $('#income_desc').html(response.income_desc);
	  $('#income_hrs').html(response.income_hrs);
	  $('#income_amount').html(response.income_amount);
	  $('#gross_amount').html(response.gross_amount);
	  $('#deductions_desc').html(response.deductions_desc);
	  $('#deductions_amount').html(response.deductions_amount);
	  $('#deductions_total').html(response.deductions_total);
	  $('#net_amount').html(response.net_amount);
	  
    	 console.log(response);
    },
	error: function(XMLHttpRequest, errorMsg, errorThrown) {
		console.log(errorMsg);
    } 
  });
}
</script>
</body>
</html>
