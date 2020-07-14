<?php require_once 'includes/session.php';?>
<?php
	if(isset($_POST['id'])){
		$id = $_POST['id'];
		$sql = "SELECT *, employees.idno as empid FROM employees LEFT JOIN position ON position.id=employees.position_id LEFT JOIN department ON
		department.id=employees.department_id WHERE employees.idno = '$id'";
		
		$query = $conn->query($sql);
		$row = $query->fetch_assoc();

		echo json_encode($row);
	}
?>
