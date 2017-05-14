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
	
	
?>

        <div class="medical-breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h2>Gallery</h2>
                    </div>
                </div>
            </div>
        </div><!--breadcrumb-->
        <div class="divide70"></div>
		
	
        <div class="container">
            <div class="row">
				<?php while($row = $result->fetch_assoc()): ?>
                <div class="col-sm-6 col-md-3 margin20 ">
				<div class="box bg-color-1">
				 <div class="box-img border-color-4 text-center">
                        <div class="gallery"><a  href="teacherprofile.php?id=<?=$row["id"]?>">
						<img  src=<?=$row["img"]?> alt="image" class="img-responsive">	  
                        </div>
						<div class="box-info">
                                <h4><a href="teacherprofile.php?id=<?=$row["id"]?>"><?=$row["name_TH"]?> <?=$row["surname_TH"]?></a></h4>
								<h5><a href="teacherprofile.php?id=<?=$row["id"]?>"><?=$row["name_ENG"]?> <?=$row["surname_ENG"]?></a></h5>
								<h5><a href="teacherprofile.php?id=<?=$row["id"]?>"><?=$row["email"]?> <?=$row["phone"]?></a></h5>
                        </div>
                 </div>

                    
                 </div>
                </div><!--col-->
			<?php endwhile; ?>
              
               
                
              
               
                
            </div>
            <div class="divide10"></div>
            <ul class="pagination pull-right">
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">...</a></li>
            </ul>
        </div>

  <div class="divide40"></div>

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