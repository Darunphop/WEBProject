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
	
	$sql = "SELECT * FROM student4 where id='".$_GET["id"]."'";
	$result = $conn->query($sql);
	$row = $result->fetch_assoc()
	
	
?>
    <!-- MAIN SECTION -->
    <section class="mainContent full-width clearfix">
      <div class="container">
            <div class="row">
                  <div class="col-sm-4 col-xs-12">
                    <div class="StudentPhoto">
                      <img src="<?=$row["img"]?>" alt="img" class="img-rounded img-responsive">
                    </div>
                  </div>
                  <div class="col-sm-8 col-xs-12">
                    <div class="studentInfo">
                          <h3><?=$row["name_TH"]?> <?=$row["surname_TH"]?></h3>
						  <h3><?=$row["name_ENG"]?> <?=$row["surname_ENG"]?></h3>
						  <div class="teachersProfession bg-color-1">ชื่อเล่น</div>
                          <div class="professionDetails"><?=$row["nick_name"]?></div>
                          <div class="teachersProfession bg-color-2">รหัสนักศึกษา</div>
                          <div class="professionDetails"><?=$row["student_ID"]?></div>
                          <div class="teachersProfession bg-color-3">รุ่นที่</div>
                          <div class="professionDetails"><?=$row["cpe_group"]?></div>
						  <div class="teachersProfession bg-color-4">email</div>
                          <div class="professionDetails"><?=$row["email"]?></div>
						  <div class="teachersProfession bg-color-5">อาจารย์ที่ปรึกษา</div>
                          <div class="professionDetails"><?=$row["advisor"]?></div>
						  <div class="teachersProfession bg-color-6">ช่องทางการเข้าศึกษา</div>
                          <div class="professionDetails"><?=$row["entrance"]?></div>
                          <div class="teachersProfession bg-color-7">จบการศึกษาจาก</div>
                          <div class="professionDetails"><?=$row["garduate"]?></div>

                    </div>
                  </div>
            </div>
      </div>
    </section>
<?php $conn->close(); ?>
<?php require_once("footer.php"); ?>
    