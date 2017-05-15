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
	
	$sql = "SELECT * FROM teacher";
	$result = $conn->query($sql);
	$sql2 = "SELECT * FROM staff";
	$result2 = $conn->query($sql2);
	
?>

        <div class="medical-breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h2>บุคลากรของภาควิชา</h2>
                    </div>
                </div>
            </div>
        </div><!--breadcrumb-->
        <div class="divide70"></div>

        <div class="container">   
            <ul class="filter list-inline">
                <li><a class="active" href="#" data-filter="*">แสดงทั้งหมด</a></li>
                <li><a href="#" data-filter=".teacher "> คณาจารย์ </a></li>
                <li><a href="#" data-filter=".staff "> เจ้าหน้าที่ </a></li>
            </ul>
            <div class="row">
                <div class="portfolio-box iso-call col-3-space">
					<?php while($row = $result->fetch_assoc()): ?>
                    <div class="project-post cardiac  teacher ">
                        <div class="box bg-color-0">
						<div class="box-img border-color-0 text-center">
						<div class="item-img-wrap ">
                            <img src=<?=$row["img"]?> alt="image" class="img-responsive">
                        </div> 
                        <div class="team-desc">
                            <h3><a href="teacherprofile.php?id=<?=$row["id"]?>"><?=$row["name_TH"]?> <?=$row["surname_TH"]?></a></h3>
                            <span>teacher</span>
						</div>
						</div>
                        </div><!--team desc-->
                    </div><!--project post-->
					<?php endwhile; ?>
                    <?php while($row = $result2->fetch_assoc()): ?>
					<div class="project-post staff">
						<div class="box bg-color-0">
						<div class="box-img border-color-0 text-center">
                       <div class="item-img-wrap ">
                            <img src=<?=$row["img"]?> alt="image" class="img-responsive">
                            
                        </div> 
                        <div class="team-desc">
                            <h3><a href="staffprofile.php?id=<?=$row["id"]?>"><?=$row["name_TH"]?> <?=$row["surname_TH"]?></a></h3>
                            <span>Staff</span>
							</div>
						</div>
                        </div><!--team desc-->
                    </div><!--project post-->
					<?php endwhile; ?>


                </div>
            </div>
        </div><!--container-->



        <div class="cta">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 text-center">
                        <h3>Take a tour of our medical facility</h3>
                    </div>
                    <div class="col-md-4 text-center">
                        <a href="#" class="btn btn-white-border btn-lg">Make an appointment</a>
                    </div>
                </div>
            </div>
        </div>
<?php require_once("footer.php"); ?>
