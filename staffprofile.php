<?php require_once("header.php"); ?>
<?php

	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "database";
	$conn = new mysqli($servername, $username, $password,$dbname);
	mysqli_set_charset($conn, "utf8");

	// Check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	} 
	
	$sql = "SELECT * FROM staff where id='".$_GET["id"]."'";
	$result = $conn->query($sql);
	$row = $result->fetch_assoc()
	
	
?>

    <!-- MAIN SECTION -->
    <section class="mainContent full-width clearfix">
      <div class="container">
            <div class="row">
                  <div class="col-sm-4 col-xs-12">
                    <div class="teachersPhoto">
                      <img src="<?=$row["img"]?>" alt="image" class="img-rounded img-responsive">
                    </div>
                  </div>
                  <div class="col-sm-8 col-xs-12">
                    <div class="teachersInfo">
                          <h3><?=$row["name_TH"]?> <?=$row["surname_TH"]?></h3>
                          <div class="teachersProfession bg-color-1">ตำแหน่ง</div>
                          <div class="professionDetails"><?=$row["position_TH"]?></div>
						  <div class="teachersProfession bg-color-5">ติดต่อ</div>
                          <div class="professionDetails"><?=$row["email"]?></div>
                    </div>
                  </div>
            </div>
      </div>
    </section>
<?php $conn->close(); ?>
<?php require_once("footer.php"); ?>
    