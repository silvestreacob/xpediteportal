<?php 
include 'includes/session.php';
include 'includes/header.php'; 

if (isset($_POST["import"]))
		{
						
			$fileName = $_FILES["file"]["tmp_name"];

			if ($_FILES["file"]["size"] > 0) {

			$file = fopen($fileName, "r");

			while (($column = fgetcsv($file, 10000, ",")) !== FALSE) {
				
				if (!empty ($column[1])) {
				
				$query = "INSERT into payrollhistory(employee_id, payroll_period, income_desc, income_hrs, income_amount, gross_amount, deductions_desc, deductions_amount, deductions_total, net_amount)
				values ('" . $column[0] . "','" . $column[1] . "','" . $column[2] . "','" . $column[3] . "','" . $column[4] . "','" . $column[5] . "','" . $column[6] . "','" . $column[7] . "','" . $column[8] . "','" . $column[9] . "')";
				
				$result = mysqli_query($conn, $query);
								
					if (! empty($result)) {
						$type = "success";
						$message = "CSV Data Imported into the Database";
					} else {
						$type = "error";
						$message = "Problem in Importing CSV Data";
					}
				}}
			}
		}

?>
	
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
        <li>Account</li>
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
             <div class="box-header with-border">
               <!-- <a href="#addnew" data-toggle="modal" class="btn btn-primary btn-sm btn-flat"><i class="fa fa-plus"></i> New</a> -->
			  
				<form action="" method="post" class="form-inline" name="frmExcelImport" id="frmExcelImport" enctype="multipart/form-data">				
					                  <div class="input-group"><label>Choose CSV File</label>
									  <input type="file" name="file" id="file" accept=".csv"></div> 
					<button type="submit" id="submit" name="import" class="btn btn-primary btn-sm btn-flat"><i class="fa fa-files-o"></i> Import Now</button>
				
				</form>
				
				<style> 
					#response {
						padding: 10px;
						margin-top: 10px;
						border-radius: 2px;
						display:none;
					}

					.success {
						background: #c7efd9;
						border: #bbe2cd 1px solid;
					}

					.error {
						background: #fbcfcf;
						border: #f3c6c7 1px solid;
					}

					div#response.display-block {
						display: block;
					}				
				</style>
				
				<div id="response" class="<?php if(!empty($type)) { echo $type . " display-block"; } ?>"><?php if(!empty($message)) { echo $message; } ?></div>
             </div>
		
            <div class="box-body">
              <table id="example" class="table table-striped table-bordered">
                <thead>
				  <th>Payroll Period</th>
                  <th>Employee ID</th>
                  <th>Name</th>
                  <th>Gross Pay</th>
                  <th>Deductions</th>
                  <th>Net Pay</th>
                  <th>Details</th>
                </thead>
                <tbody>
                  <?php
                    $sql = "SELECT *, payrollhistory.idpay AS payid FROM payrollhistory LEFT JOIN employees ON employees.employee_id=payrollhistory.employee_id";
					
					//$sql = "SELECT *, payrollhistory.idpay AS payid FROM payrollhistory";

                    $query = $conn->query($sql);
                    while($row = $query->fetch_assoc()){
                      ?>
                        <tr>
                          <td><?php echo $row['payroll_period']; ?></td>
						  <td><?php echo $row['employee_id']; ?></td>
						  <td><?php echo $row['lastname'].', '.$row['firstname']; ?></td>
                          <td><?php echo number_format($row['gross_amount'], 2);?></td>
						  <td><?php echo number_format($row['deductions_total'], 2);?></td>
						  <td><?php echo number_format($row['net_amount'], 2);?></td>

                          <td>                            
						   <button class="btn btn-success btn-sm payslip btn-flat" data-id="<?php echo $row['payid']; ?>"><i class="glyphicon glyphicon-print"></i> View Details</button>
                           <button class="btn btn-danger btn-sm delete btn-flat" data-id="<?php echo $row['payid']; ?>"><i class="fa fa-trash"></i> Delete</button>						   
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

  <?php include '../includes/footer.php'; ?>
  <?php include '../payslip_modal.php'; ?>
</div>
<?php include 'includes/scripts.php'; ?>							
<script>

$(document).ready(function() {
	$("#frmCSVImport").on("submit", function () {
		$("#response").attr("class", "");
		$("#response").html("");
		var fileType = ".csv";
		var regex = new RegExp("([a-zA-Z0-9\s_\\.\-:])+(" + fileType + ")$");
		if (!regex.test($("#file").val().toLowerCase())) {
		$("#response").addClass("error");
		$("#response").addClass("display-block");
		$("#response").html("Invalid File. Upload : <b>" + fileType + "</b> Files.");
		return false;
		}
		return true;
		});
	});

$(function(){
  $('.payslip').click(function(e){
    e.preventDefault();
    var id = $(this).data('id');	
    getRow(id);
	$('#payslip').modal('show');
	
  });
  
  $('.delete').click(function(e){
    e.preventDefault();
    $('#delete').modal('show');
    var id = $(this).data('id');
    getRow(id);
  });

  var table = $('#example').DataTable({
      responsive: true,
	  "order": [[ 0, "desc" ], [ 2, "asc" ]]
  }); 
	
  var table = $('#example').DataTable();     
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
	  
	  $('.del_pay_period').html(response.payroll_period);
	  $('#del_empid').html(response.employee_id);
	  $('#del_fullname').val(response.lastname +','+response.firstname).html(response.lastname+', '+response.firstname);
	  
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
