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
	
	$sql = "SELECT * FROM student2";
	$result = $conn->query($sql);
	
	
?>
    <!-- MAIN SECTION -->
     <section class="mainContent full-width clearfix">
          <div class="container">
                <div class="row">
                	 <?php while($row = $result->fetch_assoc()): ?>
                          <div class="col-md-4 col-xs-12">
                            <div class="box bg-color-1">
                              <div class="box-img border-color-1 text-center">
                               <a href="studentProfile2.php?id=<?=$row["id"]?>">
                                  <img src=<?=$row["img"]?> alt="image" class="img-responsive">
                                </a>
                              </div>
                              <div class="box-info">
                                <h4><a href="studentProfile2.php?id=<?=$row["id"]?>"><?=$row["name_TH"]?> <?=$row["surname_TH"]?></a></h4>
                              </div>
                            </div>
                          </div>
                      <?php endwhile; ?>
          </div>
    </section>
<?php $conn->close(); ?>
<?php require_once("footer.php"); ?>
    