<!-- Add -->
<div class="box">
<div class="modal fade" id="apply-leave">

    <div class="modal-dialog">
        <div class="modal-content">
          	<div class="modal-header with-border">
            	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
              		<span aria-hidden="true">&times;</span></button>
            	<h4 class="modal-title"><b>Employee Leave Request Form</b></h4>
				
          	</div>
          	<div class="modal-body">
			
			<p>Please fill in this form with all the required information. HR will contact you shortly after the leave request has been approved by your supervisor.</p><br><br>
            	<form class="form-horizontal" method="POST" action="leaves_add.php" enctype="multipart/form-data">
                <input type="hidden" class="empid" name="id" value="<?php echo $user['idno'];?>">
				
				<div class="form-group">
                   	<label for="empidno" class="col-sm-4">Employee Name</label>

                  	<div class="col-sm-8">
                    	<input type="text" class="form-control" id="empidno" name="empid" value="<?php echo $user['firstname'].' '.$user['lastname'];?>" readonly>
                  	</div>
                </div>
			
                <div class="form-group has-feedback">
                  	<label for="firstname" class="col-sm-4">Supervisor Email Address</label>

                  	<div class="col-sm-8">
                    	<input type="text" placeholder="ex. supervisor@xpeditellc.com" class="form-control" id="firstname" name="firstname" required>
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
				
				<div class="form-group">
                  	<label for="lastname" class="col-sm-4">Reason for Leave</label>
					<div class="col-sm-8">
						  <div class="row">
							<div class="col-sm-6">
								<input type="radio" id="leavetype1" name="leavetype" value="Vacation" required>
								<label for="leavetype1"> Vacation</label><br>
							</div>			
							<div class="col-sm-6">
								<input type="radio" id="leavetype2" name="leavetype" value="Doctor Appointment">
								<label for="leavetype2"> Doctor Appointment</label><br>
							</div>								
						  </div>
						  
						  <div class="row">
							<div class="col-sm-6">
								<input type="radio" id="leavetype3" name="leavetype" value="Vacation">
								<label for="leavetype3"> Leave of Absence</label><br>
							</div>			
							<div class="col-sm-6">
								<input type="radio" id="leavetype4" name="leavetype" value="Vacation">
								<label for="leavetype4"> Sick - Self</label><br>
							</div>								
						  </div>
						  
						  <div class="row">
							<div class="col-sm-6">
								<input type="radio" id="leavetype5" name="leavetype" value="Vacation">
								<label for="leavetype5"> Bereavement</label><br>
							</div>			
							<div class="col-sm-6">
								<input type="radio" id="leavetype6" name="leavetype" value="Vacation">
								<label for="leavetype6"> Sick - Family</label><br>
							</div>								
						  </div>
						  
						  <div class="row">
							<div class="col-sm-6">
								<input type="radio" id="leavetype7" name="leavetype" value="Vacation">
								<label for="leavetype7"> Other</label><br>
							</div>											
						  </div>
					</div>
                </div>				
				
				<div class="form-group">
                  	<label for="address" class="col-sm-4">Brief Description</label>

                  	<div class="col-sm-8">
                      <textarea class="form-control" name="address" id="address"></textarea>
                  	</div>
                </div>
                

                <div class="form-group has-feedback">
                  	<label for="datepicker_add" class="col-sm-4">Leave Date</label>

                  	<div class="col-sm-4"> 
                      <div class="date">
                        <input type="text" class="form-control" id="datepicker_add" name="datehired">
						<span class="fa fa-calendar form-control-feedback"></span>
                      </div>
                  	</div>
                </div>
				
                <div class="form-group has-feedback">
                  	<label for="datepicker_add" class="col-sm-4">Return Date</label>

                  	<div class="col-sm-4"> 
                      <div class="date">
                        <input type="text" class="form-control" id="datepicker_edit" name="datereturn">
						<span class="fa fa-calendar form-control-feedback"></span>
                      </div>
                  	</div>
                </div>
				
				<div class="form-group">
                   	<label for="empidno" class="col-sm-4"> Total no. of days requested</label>

                  	<div class="col-sm-4">
                    	<input type="text" class="form-control" id="empidno" name="empid" required>
                  	</div>
                </div>
          	</div>
			
          	<div class="modal-footer">
            	<button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
            	<button type="submit" class="btn btn-primary btn-flat" name="add"><i class="fa fa-envelope"></i> Send for Approval</button>
            	</form>
          	</div>
        </div>
    </div>
</div>
</div>