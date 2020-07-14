<?php 
	include 'includes/session.php'; 

	if(isset($_POST['id'])){
		$id = $_POST['id'];
        $sql = "SELECT *,  payrollhistory.idpay AS payid FROM payrollhistory LEFT JOIN 
		employees ON employees.employee_id=payrollhistory.employee_id LEFT JOIN 
		position ON position.id=employees.position_id LEFT JOIN 
		department ON department.id=employees.department_id WHERE payrollhistory.idpay='$id'";
				
		$query = $conn->query($sql);
		$row = $query->fetch_assoc();

		echo json_encode($row);
	}
?>