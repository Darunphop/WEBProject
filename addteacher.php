<?php




 if (basename($_FILES["image"]["name"]))
 {
	$target_dir = "img/staff/";
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


	/**********************image upload***********************/

	/**********************end image upload**********************/

	
	/**************************connect database*********************************/
	
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
	
//	$computerLanguage = implode(",", $_POST["computerLanguage"]); //เปลี่ยน array เป็น String โดยเชื่อมแต่ละตัวด้วย ","

	if(isset($_POST["computerLanguage"]))
	{
		$computerLanguage = implode(",", $_POST["computerLanguage"]);//เปลี่ยน array เป็น String โดยเชื่อมแต่ละตัวด้วย ","
	}else
	{
		$_POST["computerLanguage"]="";//กำหนดค่าให้ตัวแปร ป้องกัน notice
	}
	
if($_GET['id'])
{

if(!basename($_FILES["image"]["name"])){
	
$sql = "UPDATE teacher SET ";
$sql .="position_ENG = '".$_POST["position_ENG"]."' ";
$sql .=",name_ENG = '".$_POST["name_ENG"]."' ";
$sql .=",surname_TH = '".$_POST["surname_TH"]."' ";
$sql .=",position_TH = '".$_POST["position_TH"]."' ";
$sql .=",name_TH = '".$_POST["name_TH"]."' ";
$sql .=",surname_TH = '".$_POST["surname_TH"]."' ";
$sql .=",graduate = '".$_POST["graduate"]."' ";
$sql .=",specialist = '".$_POST["specialist"]."' ";
$sql .=",email = '".$_POST["email"]."' ";
$sql .=",phone = '".$_POST["phone"]."' ";
$sql .="WHERE id = '".$_GET["id"]."' ";


}else{

	echo $target_file;
$sql = "UPDATE teacher SET ";
$sql .="position_ENG = '".$_POST["position_ENG"]."' ";
$sql .=",name_ENG = '".$_POST["name_ENG"]."' ";
$sql .=",surname_ENG = '".$_POST["surname_ENG"]."' ";
$sql .=",position_TH = '".$_POST["position_TH"]."' ";
$sql .=",name_TH = '".$_POST["name_TH"]."' ";
$sql .=",surname_TH = '".$_POST["surname_TH"]."' ";
$sql .=",graduate = '".$_POST["graduate"]."' ";
$sql .=",specialist = '".$_POST["specialist"]."' ";
$sql .=",email = '".$_POST["email"]."' ";
$sql .=",phone = '".$_POST["phone"]."' ";
$sql .=",img = '".$target_file."' ";
$sql .="WHERE id = '".$_GET["id"]."' ";
}
}else{
	$sql = "INSERT INTO teacher (position_ENG,name_ENG,surname_ENG,position_TH,name_TH,surname_TH,graduate,specialist,email,phone,img)
            VALUES ('".$_POST["position_ENG"]."', '".$_POST["name_ENG"]."','".$_POST["surname_ENG"]."','".$_POST["position_TH"]."','".$_POST["name_TH"]."','".$_POST["surname_TH"]."','".$_POST["graduate"]."','".$_POST["specialist"]."','".$_POST["email"]."','".$_POST["phone"]."','".$target_file."')";

}
	if ($conn->query($sql) === TRUE) {
		header('Location:teacherform.php?id=');
	} else {
		echo "Error: " . $sql . "<br>" . $conn->error;
	}
	
	$conn->close();

?>


  
