
<?php
	session_start();
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "phpbasic";
  $conn = new mysqli($servername, $username, $password,$dbname);
  mysqli_set_charset($conn, "utf8");
 require_once("header.php");
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
	
	if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  } 
  
	$strSQL = "SELECT * FROM member WHERE UserID = '".$_SESSION['UserID']."' ";
	$result = $conn->query($strSQL);
	$row = $result->fetch_assoc();

?>
<div class="medical-breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                         <?=$row["Username"];?>
                      <a href="logout.php">Logout</a>
                    </div>
                </div>
            </div>
        </div><!--breadcrumb-->

    <!-- MAIN SECTION -->
     <section class="mainContent full-width clearfix">
      <div class="container">
        <div class="row">
          	 <div class="col-xs-offset-1 col-xs-10">
             		<div class="panel panel-default formPanel">
                          <div class="panel-heading bg-color-1 border-color-1">
                            <h3 class="panel-title">Administrator</h3>
                          </div>
                          <div class="panel-body">
                            <p>    นักศึกษา </p>
                             <p>    <a href="studentform.php?id=&group=student1">นักศึกษา ชั้นปีที่ 1</a> </p>
                              <p>    <a href="studentform.php?id=&group=student2">นักศึกษา ชั้นปีที่ 2 </a> </p>
                               <p>    <a href="studentform.php?id=&group=student3">นักศึกษา ชั้นปีที่ 3</a> </p>
                                <p>    <a href="studentform.php?id=&group=student4">นักศึกษา ชั้นปีที่ 4</a> </p>
                            <p>     <a href="teacherform.php?id=">อาจารย์</a></p>
                              <p>    <a href="staffform.php?id=">เจ้าหน้าที่</a></p>
             			 </div>
            		</div>
             </div>
        </div>
          
      </div>
    </section>

<?php require_once("footer.php"); ?>

