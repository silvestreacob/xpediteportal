<?php include 'includes/session.php';?>
<?php 
	if(isset($_POST['id'])){
		$id = $_POST['id'];
		$sql = "SELECT * FROM department WHERE id = '$id'";
		
		$query = $conn->query($sql);
		$row = $query->fetch_assoc();

		echo json_encode($row);
	}
?>