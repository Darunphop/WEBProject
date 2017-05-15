<?php




	/**********************image upload***********************/
	$target_dir = "img/";
	$target_file = $target_dir . basename($_FILES["img"]["name"]);
	$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
	
	/*************************ตรวจสอบว่าเป็น file ที่ upload เป็นรูปภาพ***********************************/
	if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
&& $imageFileType != "gif" ) {
    	echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
    	exit(1);
    } else {
    /*******************************ตรวจสอบว่า upload file สำเร็จหรือไม่********************************/
		if (move_uploaded_file($_FILES["img"]["tmp_name"], $target_file)) {
			//echo "The file ". basename( $_FILES["image"]["name"]). " has been uploaded.";
		} else {
			echo "Sorry, there was an error uploading your file.";
			exit(1);
		}
}
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

	if ($conn->query($sql) === TRUE) {
		header('Location:studentform.php');
	} else {
		echo "Error: " . $sql . "<br>" . $conn->error;
	}
	
	$conn->close();

?>


  
