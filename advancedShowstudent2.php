<?php require_once("header.php"); ?>
<?php

	$servername = "localhost";
	$username = "group1";
	$password = "group1";
	$dbname = "group1";
	$conn = new mysqli($servername, $username, $password,$dbname);
	mysqli_set_charset($conn, "utf8");

	// Check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	} 
	
	$sql = "SELECT * FROM student2";
	$result = $conn->query($sql);
	
	
?>
    <!-- MAIN SECTION -->
     <section class="mainContent full-width clearfix">
          <div class="container">
                <div class="row">
                	 <?php while($row = $result->fetch_assoc()): ?>
					<div class="col-sm-6 col-md-3 margin20 ">
						<div class="box bg-color-1">
							<div class="box-img border-color-1 text-center">
								<div class="gallery"><a  href="studentprofile2.php?id=<?=$row["id"]?>">
									<img  src=<?=$row["img"]?> alt="image" class="img-responsive">	  
								</div>
								<div class="box-info">
									<br>
									<br>
									<h4><a href="studentprofile2.php?id=<?=$row["id"]?>"><?=$row["name_TH"]?> <?=$row["surname_TH"]?></a></h4>
									<h5><a href="studentprofile2.php?id=<?=$row["id"]?>"><?=$row["name_ENG"]?> <?=$row["surname_ENG"]?></a></h5>
									<h5><a href="studentprofile2.php?id=<?=$row["id"]?>"><?=$row["student_ID"]?> </a></h5>
								</div>
							</div>	
						</div>
					</div><!--col-->
				<?php endwhile; ?>
          </div>
    </section>
<?php $conn->close(); ?>
<?php require_once("footer.php"); ?>
    