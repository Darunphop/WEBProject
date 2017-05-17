
<?php
	session_start();
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "group1";
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

                    <?php

                    $servername = "localhost";
                    $username = "root";
                    $password = "";
                    $dbname = "group1";
                    $conn3 = new mysqli($servername, $username, $password,$dbname);
  mysqli_set_charset($conn3, "utf8");
                  $sql3 = "SELECT * FROM teacher WHERE id= '".$_GET["id"]."' ";
                    $result3 = $conn3->query($sql3);
                    $row3 = $result3->fetch_assoc()
                  ?>


<?php
if($_GET['id'])
{
  $position_ENG = $row3["position_ENG"];
  $name_ENG = $row3["name_ENG"] ;
   $surname_ENG = $row3["surname_ENG"] ;
  $position_TH = $row3["position_TH"] ;
  $name_TH = $row3["name_TH"] ;
  $surname_TH = $row3["surname_TH"] ;
  $graduate = $row3["graduate"] ;
  $specialist = $row3["specialist"] ;
  $email = $row3["email"];
  $phone = $row3["phone"] ;
}
else{
  $position_ENG = "";
  $name_ENG ="";
    $surname_ENG = "";
  $position_TH ="" ;
  $name_TH = "" ;
  $surname_TH = "";
  $graduate = "" ;
  $specialist = "";
  $email = "";
  $phone = "";
}
?>
    <!-- MAIN SECTION -->
     <section class="mainContent full-width clearfix">
      <div class="container">
        <div class="row">

          	 <div class="col-xs-offset-1 col-xs-10">
             		<div class="panel panel-default formPanel">
                          <div class="panel-heading bg-color-1 border-color-1">
                            <h3 class="panel-title">Add teacher</h3>
                          </div>
                          <div class="panel-body">
                                <form action="addteacher.php?id=<?php echo $_GET['id']?>" method="POST" role="form" enctype="multipart/form-data">
                                      <div class="form-group formField">
                                        <div class="col-xs-12">
                                           <label for="">ชื่อ</label>
                                           <input type="text" class="form-control" name="name_TH" placeholder="ชื่อ" required value="<?php echo htmlentities($name_TH); ?>">
                                        </div>
                                      </div>
                                       <div class="form-group formField">
                                        <div class="col-xs-12">
                                              <label for="">นามสกุล</label>
                                               <input type="text" class="form-control" name="surname_TH" placeholder="นามสกุล" required value="<?php echo htmlentities($surname_TH); ?>">
                                        </div>
                                      </div>
									   <div class="form-group formField">
                                        <div class="col-xs-12">
                                           <label for="">Name</label>
                                           <input type="text" class="form-control" name="name_ENG" placeholder="name" required value="<?php echo htmlentities($name_ENG); ?>">
                                        </div>
                                      </div>
                                       <div class="form-group formField">
                                        <div class="col-xs-12">
                                              <label for="">Surname</label>
                                               <input type="text" class="form-control" name="surname_ENG" placeholder="surname" required value="<?php echo htmlentities($surname_ENG); ?>">
                                        </div>
                                      </div>
                                      <div class="form-group formField">
                                        <div class="col-xs-12">
                                              <label for="">ตำแหน่ง</label>
                                               <input type="text" class="form-control" name="position_TH" placeholder="ตำแหน่ง" required value="<?php echo htmlentities($position_TH); ?>">
                                        </div>
                                      </div>
									   <div class="form-group formField">
                                        <div class="col-xs-12">
                                              <label for="">Position</label>
                                               <input type="text" class="form-control" name="position_ENG" placeholder="position" required value="<?php echo htmlentities($position_ENG); ?>">
                                        </div>
                                      </div>
                                       <div class="form-group">
                                        <div class="col-xs-12">
                                              <label for="">สำเร็จการศึกษาจาก</label>
                                              <textarea class="form-control" name="graduate" rows="10"><?php echo htmlentities($graduate); ?></textarea>
                                            </div>

                                        </div>
									 <div class="form-group">
                                        <div class="col-xs-12">
                                              <label for="">เชี่ยวชาญด้าน</label>
                                              <textarea class="form-control" name="specialist" rows="10" ><?php echo htmlentities($specialist); ?></textarea>
                                            </div>

                                        </div>
										<div class="form-group formField">
                                        <div class="col-xs-12">
                                              <label for="">E-mail</label>
                                               <input type="text" class="form-control" name="email" placeholder="E-mail" required value="<?php echo htmlentities($email); ?>">
                                        </div>
                                      </div>
										<div class="form-group formField">
                                        <div class="col-xs-12">
                                              <label for="">Phone number</label>
                                               <input type="text" class="form-control" name="phone" placeholder="Phone number" required value="<?php echo htmlentities($phone); ?>">
                                        </div>
                                      </div>

                                         <div class="form-group">
                                        <div class="col-xs-12">
                                              <label for="">รูปภาพ</label>
                                              <input type="file" name="image" id="image">
                                            </div>

                                        </div>
										
                                      <div class="form-group formField">
                                            <div class="col-xs-12">
                                            	<label></label>
                                                <input type="submit" class="btn btn-primary btn-block bg-color-3 border-color-3" value="Submit">
                                            </div>
                                      </div>
                                </form>
             			 </div>
            		</div>
           
               	 <div class="col-xs-offset-1 col-xs-10">
             		<div class="panel panel-default formPanel">
                          <div class="panel-heading bg-color-1 border-color-1">
                            <h3 class="panel-title">Teacher List</h3>
                          </div>
                          <div class="panel-body">
            <table style="width:80% ;text-align:center;">
             <tr>
    <th>Firstname</th>
    <th>Lastname</th> 
    <th>Option</th>
  </tr>
        <?php

                    $servername = "localhost";
                    $username = "root";
                    $password = "";
                    $dbname = "group1";
                    $conn2 = new mysqli($servername, $username, $password,$dbname);
  mysqli_set_charset($conn2, "utf8");
                  $sql2 = "SELECT * FROM teacher";
                    $result2 = $conn2->query($sql2);
                  ?>
                  <?php while($row2 = $result2->fetch_assoc()): ?>
                          <tr>
                      <td><?=$row2["name_TH"]?></td>
                      <td><?=$row2["surname_TH"]?></td> 
                      <td>
                  <button class="btn btn-danger" onclick="myFunction(<?=$row2["id"]?>)">
                    <i class="fa fa-trash-o fa-lg"></i> Delete</button>
                  <button class="btn btn-default btn-sm" onclick="myFunction2(<?=$row2["id"]?>)">
                    <i class="fa fa-pencil "></i> Edit</a>

                    
                      
                      
                      </td>
                    </tr>
                          
                                        
                            <?php endwhile; ?>
                  </table>
            </div><!--team desc-->
                   
             </div> 
             </div><!--project post-->

           
              </div> 

        </div>
          
      </div>
    </section>
<?php require_once("footer.php"); ?>


    <script>
function myFunction(id) {
    var txt;
    var r = confirm("Are you sure Delete!"+id);
    if (r == true) {
        window.open("removedata.php?table=teacher&id="+id,"_self")
    } else {
        txt = "You pressed Cancel!";
    }

}

function myFunction2(id) {
   
        window.open("teacherform.php?id="+id,"_self")


}
</script>