
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
    $table = $_GET["group"];
                  $sql3 = "SELECT * FROM $table ";
                  $sql3 .="WHERE id = '".$_GET["id"]."' ";
                    $result3 = $conn3->query($sql3);
                    $row3 = $result3->fetch_assoc()
                  ?>


<?php
if($_GET['id'])
{

  $name_ENG = $row3["name_ENG"] ;
   $surname_ENG = $row3["surname_ENG"] ;
  $name_TH = $row3["name_TH"] ;
  $surname_TH = $row3["surname_TH"] ;
  $nick_name = $row3["nick_name"] ;
  $student_ID = $row3["student_ID"] ;
  $garduate = $row3["garduate"];
  $advisor = $row3["advisor"];
  $entrance = $row3["entrance"] ;
  $email = $row3["email"] ;
  $cpe_group = $row3["cpe_group"] ;

}
else{

  $name_ENG = "" ;
   $surname_ENG = "";
  $name_TH ="" ;
  $surname_TH = "" ;
  $nick_name = "" ;
  $student_ID ="" ;
    $garduate = "";
  $advisor = "";
  $entrance = "" ;
  $email = "" ;
  $cpe_group = "" ;
}
$areas = array(
    '25' => '25',
    '24' => '24',
    '23' => '23',
    '22' => '22'
);
?>

    <!-- MAIN SECTION -->
     <section class="mainContent full-width clearfix">
      <div class="container">
        <div class="row">
          	 <div class="col-xs-offset-1 col-xs-10">
             		<div class="panel panel-default formPanel">
                          <div class="panel-heading bg-color-1 border-color-1">
                            <h3 class="panel-title">Add Student</h3>
                          </div>
                          <div class="panel-body">
                                <form action="addStudent.php?id=<?php echo $_GET['id']?>&group=<?php echo $_GET['group']?>" method="POST" role="form" enctype="multipart/form-data">
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
                                              <label for="">ชื่อเล่น</label>
                                               <input type="text" class="form-control" name="nick_name" placeholder="ชื่อเล่น" required value="<?php echo htmlentities($nick_name); ?>">
                                        </div>
                                      </div>
                                      <div class="form-group formField">
                                        <div class="col-xs-12">
                                              <label for="">รหัสนักศึกษา</label>
                                               <input type="text" class="form-control" name="student_ID" placeholder="รหัสนักศึกษา" required value="<?php echo htmlentities($student_ID); ?>">
                                        </div>
                                      </div>
									   <div class="form-group formField">
                                        <div class="col-xs-12">
                                              <label for="">ช่องทางการเข้าศึกษา</label>
                                               <input type="text" class="form-control" name="entrance" placeholder="entrance" required value="<?php echo htmlentities($entrance); ?>">
                                        </div>
                                      </div>
										<div class="form-group formField">
                                        <div class="col-xs-12">
                                              <label for="">รุ่นที่</label></br>
                                              
                                                <select name="cpe_group" >
                                                <?php foreach ($areas as $value => $text): ?>
                                                    <option value="<?php echo $value; ?>" <?php if ($cpe_group == $value) {echo 'selected';} ?>><?php echo $text; ?>
                                                    </option> 
                                                <?php endforeach; ?>
                                                </select> </div>
                                      </div>
										<div class="form-group formField">
                                        <div class="col-xs-12">
                                              <label for="">Email</label>
                                               <input type="text" class="form-control" name="email" placeholder="email" required value="<?php echo htmlentities($email); ?>">
                                        </div>
                                      </div>
										<div class="form-group formField">
                                        <div class="col-xs-12">
                                              <label for="">อาจารย์ที่ปรึกษา</label>
                                               <input type="text" class="form-control" name="advisor" placeholder="advisor" required value="<?php echo htmlentities($advisor); ?>">
                                        </div>
                                      </div>
									  <div class="form-group formField">
                                        <div class="col-xs-12">
                                              <label for="">จบการศึกษา</label>
                                               <input type="text" class="form-control" name="garduate" placeholder="garduate" required value="<?php echo htmlentities($garduate); ?>">
                                        </div>
                                      </div>
                                         <div class="form-group">
                                        <div class="col-xs-12">
                                              <label for="">รูปภาพ</label>
                                              <input type="file" name="image" id="image" >
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
             </div>
        <div class="col-xs-offset-1 col-xs-10">
             		<div class="panel panel-default formPanel">
                          <div class="panel-heading bg-color-1 border-color-1">
                            <h3 class="panel-title">Student List</h3>
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
                  $sql2 = "SELECT * FROM $table ";
                    $result2 = $conn2->query($sql2);
                  ?>
                  <?php while($row2 = $result2->fetch_assoc()): ?>
                          <tr>
                      <td><?=$row2["name_TH"]?></td>
                      <td><?=$row2["surname_TH"]?></td> 
                      <td>
                  <button class="btn btn-danger" onclick="myFunction(<?=$row2["id"]?>,'<?=$table?>')">
                    <i class="fa fa-trash-o fa-lg"></i> Delete</button>
                  <button class="btn btn-default btn-sm" onclick="myFunction2(<?=$row2["id"]?>,'<?=$table?>')">
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
function myFunction(id,g) {
    var txt;
    var r = confirm("Are you sure Delete!"+id);
    if (r == true) {
        window.open("removedata.php?table="+g+"&id="+id,"_self")
    } else {
        txt = "You pressed Cancel!";
    }

}

function myFunction2(id,g) {
   
        window.open("studentform.php?id="+id+"&group="+g,"_self")


}
</script>