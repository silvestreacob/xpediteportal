<!-- Add -->
<div class="modal fade" id="overtime-request">
    <div class="modal-dialog">
        <div class="modal-content">
		<section class="content-header">
          	<div class="modal-header with-border">
            	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
              		<span aria-hidden="true">&times;</span></button>
			            	<h4 class="modal-title"><b>Overtime Request Form</b></h4>
											<small>Please fill in this form with all the required information. HR will contact you shortly after the overtime request has been approved by your supervisor.</small>
          	</div>
		</section>
		
		<div class="modal-body">
		<section class="content">	
            	<form class="form-horizontal" method="POST" action="overtime_add.php" enctype="multipart/form-data">
                
				<input type="hidden" id="id" name="id" value="<?php echo $user['idno'];?>">
				<input type="hidden" id="empid" name="empid" value="<?php echo $user['employee_id'];?>">
				<input type="hidden" id="email" name="email" value="<?php echo $user['contact_info'];?>">
				
				<div class="form-group">
                   	<label for="empidno" class="col-sm-4">Employee Name</label>

                  	<div class="col-sm-8">
                    	<input type="text" class="form-control" id="empname" name="empname" value="<?php echo $user['firstname'].' '.$user['lastname'];?>">
                  	</div>
                </div>
			
                <div class="form-group has-feedback">
                  	<label for="firstname" class="col-sm-4">Supervisor Email Address</label>

                  	<div class="col-sm-8">
                    	<input type="text" placeholder="ex. supervisor@xpeditellc.com" class="form-control" id="mngr_email" name="mngr_email" required>
						<span class="fa fa-envelope form-control-feedback"></span>
                  	</div>
                </div>
                
				<div class="form-group">
                    <label for="department" class="col-sm-4">Department</label>

                    <div class="col-sm-8">
                      <select class="form-control" id="department" name="department" required>
                        <option value="" selected>- Select -</option>
                        <?php
                          $sql = "SELECT * FROM department ORDER by department.dep_description ASC";
                          $query = $conn->query($sql);
                          while($drow = $query->fetch_assoc()){
                            echo "
                              <option value='".$drow['id']."'>".$drow['dep_description']."</option>
                            ";
                          }
                        ?>
                      </select>
                    </div>
				</div>
				
				<div class="form-group has-feedback">
                  	<label for="datepicker_add" class="col-sm-4">Date & Time Range</label>

                  	<div class="col-sm-8"> 
                      <div class="date">
                        <input type="text" class="form-control" name="daterange" id="overtimehours" required>
						<span class="fa fa-calendar form-control-feedback"></span>
                      </div>
                  	</div>
                </div>
				
				
				<div class="form-group">
                   	<label for="totalhours" class="col-sm-4"> Total Overtime Hours</label>

                  	<div class="col-sm-2">
                    	<input type="text" class="form-control" id="interval" name="totalhours" value='' required>
                  	</div>
                </div>
				
				<div class="form-group">
                  	<label for="lastname" class="col-sm-4">Type</label>
					<div class="col-sm-8">
						  <div class="row">
							<div class="col-sm-6">
								<input type="radio" name="overtimetype" id="r1" value="Regular Overtime" required>
								<label for="r1"> Regular Overtime </label>
							</div>			
							<div class="col-sm-6">
								<input type="radio" name="overtimetype" id="r2"  value="Restday Overtime">
								<label for="r2"> Restday Overtime </label>
							</div>						
						  </div>						  
					</div>
                </div>				
				
				<div class="form-group">
                  	<label for="address" class="col-sm-4">Description</label>

                  	<div class="col-sm-8">
                      <textarea class="form-control" name="description" id="description" required></textarea>
                  	</div>
                </div>             
          	</div>
			
		</section>
		
          	<div class="modal-footer">
            	<button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
            	<button type="submit" class="btn btn-primary btn-flat" name="add"><i class="fa fa-envelope"></i> Send for Approval</button>
            	
          	</div>
			</form>
        </div>
    </div>
</div>
