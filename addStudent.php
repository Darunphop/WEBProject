<?php


 if (basename($_FILES["image"]["name"]))
 {
	if($_POST["cpe_group"]==22){
		$target_dir = "img/student4/";}
		else if($_POST["cpe_group"]==23){
		$target_dir = "img/student3/";}
		elseif($_POST["cpe_group"]==24){
		$target_dir = "img/student2/";}
		else{
		$target_dir = "img/student1/";}
	$target_file = $target_dir . basename($_FILES["image"]["name"]);
	$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
		

  
	/*************************ตรวจสอบว่าเป็น file ที่ upload เป็นรูปภาพ***********************************/
	if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
&& $imageFileType != "gif" ) {
    	echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
    	exit(1);
    } else {
    /*******************************ตรวจสอบว่า upload file สำเร็จหรือไม่********************************/
		if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
			//echo "The file ". basename( $_FILES["image"]["name"]). " has been uploaded.";
		} else {
			echo "Sorry, there was an error uploading your file.";
			exit(1);
		}
}
 }
 else{

 }

	
	
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
	
//	$computerLanguage = implode(",", $_POST["computerLanguage"]); //เปลี่ยน array เป็น String โดยเชื่อมแต่ละตัวด้วย ","

	if(isset($_POST["computerLanguage"]))
	{
		$computerLanguage = implode(",", $_POST["computerLanguage"]);//เปลี่ยน array เป็น String โดยเชื่อมแต่ละตัวด้วย ","
	}else
	{
		$_POST["computerLanguage"]="";//กำหนดค่าให้ตัวแปร ป้องกัน notice
	}
	
		/**********************image upload***********************/
	if($_POST["cpe_group"]==22){
		$target_dir = "img/student4/";}
		else if($_POST["cpe_group"]==23){
		$target_dir = "img/student3/";}
		elseif($_POST["cpe_group"]==24){
		$target_dir = "img/student2/";}
		else{
		$target_dir = "img/student1/";}
	$target_file = $target_dir . basename($_FILES["image"]["name"]);
	$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);

	if($_GET['id'])
{

if(!basename($_FILES["image"]["name"])){
	if($_POST["cpe_group"]==22){
		$sql = "UPDATE student4 SET ";
$sql .="student_ID = '".$_POST["student_ID"]."' ";
$sql .=",name_TH = '".$_POST["name_TH"]."' ";
$sql .=",surname_TH = '".$_POST["surname_TH"]."' ";
$sql .=",nick_name = '".$_POST["nick_name"]."' ";
$sql .=",name_ENG = '".$_POST["name_ENG"]."' ";
$sql .=",surname_ENG = '".$_POST["surname_ENG"]."' ";
$sql .=",garduate = '".$_POST["garduate"]."' ";
$sql .=",cpe_group = '".$_POST["cpe_group"]."' ";
$sql .=",entrance = '".$_POST["entrance"]."' ";
$sql .=",email = '".$_POST["email"]."' ";
$sql .=",advisor = '".$_POST["advisor"]."' ";
$sql .=",email = '".$_POST["email"]."' ";
$sql .="WHERE id = '".$_GET["id"]."' ";

	   }
    else if($_POST["cpe_group"]==23){
		$sql = "UPDATE student3 SET ";
$sql .="student_ID = '".$_POST["student_ID"]."' ";
$sql .=",name_TH = '".$_POST["name_TH"]."' ";
$sql .=",surname_TH = '".$_POST["surname_TH"]."' ";
$sql .=",nick_name = '".$_POST["nick_name"]."' ";
$sql .=",name_ENG = '".$_POST["name_ENG"]."' ";
$sql .=",surname_ENG = '".$_POST["surname_ENG"]."' ";
$sql .=",garduate = '".$_POST["garduate"]."' ";
$sql .=",cpe_group = '".$_POST["cpe_group"]."' ";
$sql .=",entrance = '".$_POST["entrance"]."' ";
$sql .=",email = '".$_POST["email"]."' ";
$sql .=",advisor = '".$_POST["advisor"]."' ";
$sql .=",email = '".$_POST["email"]."' ";
$sql .="WHERE id = '".$_GET["id"]."' ";
    }
    else if($_POST["cpe_group"]==24){
		$sql = "UPDATE student2 SET ";
$sql .="student_ID = '".$_POST["student_ID"]."' ";
$sql .=",name_TH = '".$_POST["name_TH"]."' ";
$sql .=",surname_TH = '".$_POST["surname_TH"]."' ";
$sql .=",nick_name = '".$_POST["nick_name"]."' ";
$sql .=",name_ENG = '".$_POST["name_ENG"]."' ";
$sql .=",surname_ENG = '".$_POST["surname_ENG"]."' ";
$sql .=",garduate = '".$_POST["garduate"]."' ";
$sql .=",cpe_group = '".$_POST["cpe_group"]."' ";
$sql .=",entrance = '".$_POST["entrance"]."' ";
$sql .=",email = '".$_POST["email"]."' ";
$sql .=",advisor = '".$_POST["advisor"]."' ";
$sql .=",email = '".$_POST["email"]."' ";
$sql .="WHERE id = '".$_GET["id"]."' ";
    }
    else{
  		$sql = "UPDATE student1 SET ";
$sql .="student_ID = '".$_POST["student_ID"]."' ";
$sql .=",name_TH = '".$_POST["name_TH"]."' ";
$sql .=",surname_TH = '".$_POST["surname_TH"]."' ";
$sql .=",nick_name = '".$_POST["nick_name"]."' ";
$sql .=",name_ENG = '".$_POST["name_ENG"]."' ";
$sql .=",surname_ENG = '".$_POST["surname_ENG"]."' ";
$sql .=",garduate = '".$_POST["garduate"]."' ";
$sql .=",cpe_group = '".$_POST["cpe_group"]."' ";
$sql .=",entrance = '".$_POST["entrance"]."' ";
$sql .=",email = '".$_POST["email"]."' ";
$sql .=",advisor = '".$_POST["advisor"]."' ";
$sql .=",email = '".$_POST["email"]."' ";
$sql .="WHERE id = '".$_GET["id"]."' ";
    }

}else{

	if($_POST["cpe_group"]==22){
		$sql = "UPDATE student4 SET ";
$sql .="student_ID = '".$_POST["student_ID"]."' ";
$sql .=",name_TH = '".$_POST["name_TH"]."' ";
$sql .=",surname_TH = '".$_POST["surname_TH"]."' ";
$sql .=",nick_name = '".$_POST["nick_name"]."' ";
$sql .=",name_ENG = '".$_POST["name_ENG"]."' ";
$sql .=",surname_ENG = '".$_POST["surname_ENG"]."' ";
$sql .=",garduate = '".$_POST["garduate"]."' ";
$sql .=",cpe_group = '".$_POST["cpe_group"]."' ";
$sql .=",entrance = '".$_POST["entrance"]."' ";
$sql .=",email = '".$_POST["email"]."' ";
$sql .=",advisor = '".$_POST["advisor"]."' ";
$sql .=",email = '".$_POST["email"]."' ";
$sql .=",img = '".$target_file."' ";
$sql .="WHERE id = '".$_GET["id"]."' ";

	   }
    else if($_POST["cpe_group"]==23){
		$sql = "UPDATE student3 SET ";
$sql .="student_ID = '".$_POST["student_ID"]."' ";
$sql .=",name_TH = '".$_POST["name_TH"]."' ";
$sql .=",surname_TH = '".$_POST["surname_TH"]."' ";
$sql .=",nick_name = '".$_POST["nick_name"]."' ";
$sql .=",name_ENG = '".$_POST["name_ENG"]."' ";
$sql .=",surname_ENG = '".$_POST["surname_ENG"]."' ";
$sql .=",garduate = '".$_POST["garduate"]."' ";
$sql .=",cpe_group = '".$_POST["cpe_group"]."' ";
$sql .=",entrance = '".$_POST["entrance"]."' ";
$sql .=",email = '".$_POST["email"]."' ";
$sql .=",advisor = '".$_POST["advisor"]."' ";
$sql .=",email = '".$_POST["email"]."' ";
$sql .=",img = '".$target_file."' ";
$sql .="WHERE id = '".$_GET["id"]."' ";
    }
    else if($_POST["cpe_group"]==24){
		$sql = "UPDATE student2 SET ";
$sql .="student_ID = '".$_POST["student_ID"]."' ";
$sql .=",name_TH = '".$_POST["name_TH"]."' ";
$sql .=",surname_TH = '".$_POST["surname_TH"]."' ";
$sql .=",nick_name = '".$_POST["nick_name"]."' ";
$sql .=",name_ENG = '".$_POST["name_ENG"]."' ";
$sql .=",surname_ENG = '".$_POST["surname_ENG"]."' ";
$sql .=",garduate = '".$_POST["garduate"]."' ";
$sql .=",cpe_group = '".$_POST["cpe_group"]."' ";
$sql .=",entrance = '".$_POST["entrance"]."' ";
$sql .=",email = '".$_POST["email"]."' ";
$sql .=",advisor = '".$_POST["advisor"]."' ";
$sql .=",email = '".$_POST["email"]."' ";
$sql .=",img = '".$target_file."' ";
$sql .="WHERE id = '".$_GET["id"]."' ";
    }
    else{
  		$sql = "UPDATE student1 SET ";
$sql .="student_ID = '".$_POST["student_ID"]."' ";
$sql .=",name_TH = '".$_POST["name_TH"]."' ";
$sql .=",surname_TH = '".$_POST["surname_TH"]."' ";
$sql .=",nick_name = '".$_POST["nick_name"]."' ";
$sql .=",name_ENG = '".$_POST["name_ENG"]."' ";
$sql .=",surname_ENG = '".$_POST["surname_ENG"]."' ";
$sql .=",garduate = '".$_POST["garduate"]."' ";
$sql .=",cpe_group = '".$_POST["cpe_group"]."' ";
$sql .=",entrance = '".$_POST["entrance"]."' ";
$sql .=",email = '".$_POST["email"]."' ";
$sql .=",advisor = '".$_POST["advisor"]."' ";
$sql .=",email = '".$_POST["email"]."' ";
$sql .=",img = '".$target_file."' ";
$sql .="WHERE id = '".$_GET["id"]."' ";
    }
}}
else{
	/**********************end image upload**********************/

	if($_POST["cpe_group"]==22){
	$sql = "INSERT INTO student4 (student_ID,name_TH,surname_TH,nick_name,name_ENG,surname_ENG,garduate,cpe_group,entrance,email,advisor,img)
            VALUES ('".$_POST["student_ID"]."', '".$_POST["name_TH"]."','".$_POST["surname_TH"]."','".$_POST["nick_name"]."','".$_POST["name_ENG"]."','".$_POST["surname_ENG"]."','".$_POST["garduate"]."','".$_POST["cpe_group"]."','".$_POST["entrance"]."','".$_POST["email"]."','".$_POST["advisor"]."','".$target_file."')";
    }
    else if($_POST["cpe_group"]==23){
	$sql = "INSERT INTO student3 (student_ID,name_TH,surname_TH,nick_name,name_ENG,surname_ENG,garduate,cpe_group,entrance,email,advisor,img)
            VALUES ('".$_POST["student_ID"]."', '".$_POST["name_TH"]."','".$_POST["surname_TH"]."','".$_POST["nick_name"]."','".$_POST["name_ENG"]."','".$_POST["surname_ENG"]."','".$_POST["garduate"]."','".$_POST["cpe_group"]."','".$_POST["entrance"]."','".$_POST["email"]."','".$_POST["advisor"]."','".$target_file."')";
    }
    else if($_POST["cpe_group"]==24){
	$sql = "INSERT INTO student2 (student_ID,name_TH,surname_TH,nick_name,name_ENG,surname_ENG,garduate,cpe_group,entrance,email,advisor,img)
            VALUES ('".$_POST["student_ID"]."', '".$_POST["name_TH"]."','".$_POST["surname_TH"]."','".$_POST["nick_name"]."','".$_POST["name_ENG"]."','".$_POST["surname_ENG"]."','".$_POST["garduate"]."','".$_POST["cpe_group"]."','".$_POST["entrance"]."','".$_POST["email"]."','".$_POST["advisor"]."','".$target_file."')";
    }
    else{
    $sql = "INSERT INTO student1 (student_ID,name_TH,surname_TH,nick_name,name_ENG,surname_ENG,garduate,cpe_group,entrance,email,advisor,img)
            VALUES ('".$_POST["student_ID"]."', '".$_POST["name_TH"]."','".$_POST["surname_TH"]."','".$_POST["nick_name"]."','".$_POST["name_ENG"]."','".$_POST["surname_ENG"]."','".$_POST["garduate"]."','".$_POST["cpe_group"]."','".$_POST["entrance"]."','".$_POST["email"]."','".$_POST["advisor"]."','".$target_file."')";
    }
}


	if ($conn->query($sql) === TRUE) {
		header('Location:studentform.php?id=&group='.$_GET['group']);
	} else {
		echo "Error: " . $sql . "<br>" . $conn->error;
	}
	
	$conn->close();

?>


  