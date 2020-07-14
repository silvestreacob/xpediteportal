<!-- view -->
<div class="modal fade" id="payslip">
    <div class="modal-dialog">
        <div class="modal-content">
          	<div class="modal-header">
            	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
              		<span aria-hidden="true">&times;</span></button>

            	<h4 class="modal-title"><b><span class="pay_period"></span></b></h4>
          	</div>
			<h5 align="center"><label for="pay_id" class="control-label">Xpedite, Inc (Payslip)</label></h5>
			
			<div class="modal-body">
			<table cellspacing="10" cellpadding="20" border="0" width="100%">  
    	       	<tr style="border-top: 0px solid #cdd0d4;">  
					
					<td width="5%"><br></td>

            		<td width="15%" align="left">Employee:</td>
                 	<td width="27%">&nbsp;<b><class="form-control" id="fullname"></b></td>
 				 	<td width="15%" align="left">Employee ID: </td>
				 	<td width="27%" align="left">&nbsp;<b><class="form-control" id="empid"></b</td> 
					<td width="5%"></td>
	    	    </tr>
				
				<tr>  
					<td width="5%"></td>
            		<td width="15%" align="left">Position:</td>
                 	<td width="27%">&nbsp;<b><class="form-control" id="position_val"></b></td>
 				 	<td width="15%" align="left">Email Address:</td>
				 	<td width="27%" align="left">&nbsp;<b><class="form-control" id="emailadd"></b</td> 
					<td width="5%"></td>
	    	    </tr>
				
				<tr>  
					<td width="5%"></td>
            		<td width="15%" align="left">Department:</td>
                 	<td width="27%">&nbsp;<b><class="form-control" id="department_val"></b></td>
 				 	<td width="15%"></td>
				 	<td width="27%"></td> 
					<td width="5%"></td>
	    	    </tr>
			</table>
			<!-- Income Summary -->
					<div class="box"></div>	
			<table cellspacing="10" cellpadding="3" border="0" width="100%">  
				<tr bgcolor="#E4E4E4" style="border-top: 1px solid #cdd0d4;">  
					<td width="5%"></td>
            		<td width="40%" align="left"><b>Income Summary</b></td>
					<td width="44%"></td>
					<td width="5%"></td>
	    	    </tr>								
    	    </table>
			
			<br>
			<table cellspacing="10" cellpadding="3" border="0" width="100%">  
    	       	<tr>
					<td width="5%"></td>
					<td width="25%" align="left"><class="form-control" id="income_desc"></td> 
					<td width="25%" align="left"><class="form-control" id="income_hrs"></td> 
					<td width="25%" align="right"><class="form-control" id="income_amount"></td> 
					<td width="5%"></td>
	    	    </tr>		    	
    	    </table>
            <br>
			<table cellspacing="10" cellpadding="3" border="0" width="100%">  
				<tr bgcolor="#E4E4E4">  
					<td width="5%"></td>
            		<td width="40%" align="left">Gross Pay</td>
					<td width="44%" align="right"><b><class="form-control" id="gross_amount"></b</td> 
					<td width="5%"></td>
	    	    </tr>
								
    	    </table>
			
			<!-- Deductions -->
			<br>
			<table cellspacing="10" cellpadding="3" border="0" width="100%"> 
				<tr style="border-top: 0px solid #cdd0d4;">
					<td width="5%"></td>
					<td width="40%" align="left"><class="form-control" id="deductions_desc"></td> 
					<td width="44%" align="right"><class="form-control" id="deductions_amount"></td> 
					<td width="5%"></td>
	    	    </tr>		
				
    	    </table>

			<br>
			<table cellspacing="10" cellpadding="3" border="0" width="100%"> 
				<tr bgcolor="#E4E4E4">  
					<td width="5%"></td>
            		<td width="40%" align="left">Total Deduction</td>
					<td width="44%" align="right"><b><class="form-control" id="deductions_total"></b</td> 
					<td width="5%"></td>
	    	    </tr>		    	
    	    </table>

			<!-- Netpay table -->
			<br>
			<table cellspacing="10" cellpadding="3" border="0" width="100%">  
				<tr bgcolor="#E4E4E4">  
					<td width="5%"></td>
            		<td width="40%" align="left"><b>NET PAY</td>
					<td width="44%" align="right"><b><class="form-control" id="net_amount"></b</td> 
					<td width="5%"></td>
	    	    </tr>		    	
    	    </table>
			
			<div class="box"></div>	
          	<div class="modal-footer">
            	<button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
            	<!-- <button type="submit" class="btn btn-success btn-flat" name="edit"><i class="fa fa-check-square-o"></i> Update</button> -->
            	</form>
          	</div>
        </div>
    </div>
	</div>
</div>

<!-- Delete -->
<div class="modal fade" id="delete">
    <div class="modal-dialog">
        <div class="modal-content">
          	<div class="modal-header">
            	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
              		<span aria-hidden="true">&times;</span></button>
				        <div class="text-center">
								<h4 class="modal-title"><b><p>Are you sure you want to delete data?</p></b></h4> 
						</div>
          	</div>
          	<div class="modal-body">
            	<form class="form-horizontal" method="POST" action="payslip_delete.php">
            		<input type="hidden" class="payid" name="id">
					<div>
	                	
					</div>
					
			   <table cellspacing="10" cellpadding="20" border="0" width="100%">  
    	       	<tr style="border-top: 0px solid #cdd0d4;">  
					
					<td width="5%"><br></td>
            		<td width="15%" align="left">Employee:</td>
                 	<td width="50%">&nbsp;<b><class="form-control" id="del_fullname"></b></td>
	    	    </tr>
				
				<tr>  
					<td width="5%"></td>
 				 	<td width="15%" align="left">Employee ID: </td>
				 	<td width="50%" align="left">&nbsp;<b><class="form-control" id="del_empid"></b</td> 

	    	    </tr>
				
				<tr>  
					<td width="5%"></td>
            		<td width="15%" align="left">Payroll Period:</td>
                 	<td width="50%">&nbsp;<b><span class="del_pay_period"></span></td>

	    	    </tr>
			</table>
          	</div>
          	<div class="modal-footer">
            	<button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
            	<button type="submit" class="btn btn-danger btn-flat" name="delete"><i class="fa fa-trash"></i> Delete</button>
            	</form>
          	</div>
        </div>
    </div>
</div>
