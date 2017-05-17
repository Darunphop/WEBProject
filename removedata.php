<?php
	session_start();
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "group1";
  $conn2 = new mysqli($servername, $username, $password,$dbname);
  mysqli_set_charset($conn2, "utf8");
	if($_SESSION['UserID'] == "")
	{
		echo "Please Login!";
		exit();
	}

	if($_SESSION['Status'] != "ADMIN")
	{
		echo "This page for Admin only!";
		exit();
	}	
	
	if ($conn2->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  } 
  
	$strSQL = "SELECT * FROM member WHERE UserID = '".$_SESSION['UserID']."' ";
	$result = $conn2->query($strSQL);
	$row = $result->fetch_assoc();

?>

<?php



	
	/**************************connect database*********************************/
	
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "group1";
	$conn = new mysqli($servername, $username, $password,$dbname);
	mysqli_set_charset($conn, "utf8");

	// Check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	} 
	


	$sql = "DELETE FROM ".$_GET['table']." WHERE id=".$_GET['id']."";
	$conn->query($sql);
	if ($_GET['table'] == "staff") {
		header('Location:staffform.php?id=');

	} 
	if ($_GET['table'] == "student1" || $_GET['table'] == "student2"  || $_GET['table'] == "student3" || $_GET['table'] == "student4" ) {
		header('Location:studentform.php?id='.'&group='.$_GET['table']);
	}
	if ($_GET['table'] == "teacher") {
		header('Location:teacherform.php?id=');
	}
	else {
		echo "Error: " . $sql . "<br>" . $conn->error;
	}
	
	$conn->close();

?>


  
