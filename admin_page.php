
<?php
	session_start();
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "phpbasic";
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

    <!-- MAIN SECTION -->
     <section class="mainContent full-width clearfix">
      <div class="container">
        <div class="row">
          	 <div class="col-xs-offset-1 col-xs-10">
             		<div class="panel panel-default formPanel">
                          <div class="panel-heading bg-color-1 border-color-1">
                            <h3 class="panel-title">Administrator</h3>
                          </div>
                          <div class="panel-body">
                            <p>    นักศึกษา </p>
                             <p>    <a href="studentform.php?id=&group=student1">นักศึกษา ชั้นปีที่ 1</a> </p>
                              <p>    <a href="studentform.php?id=&group=student2">นักศึกษา ชั้นปีที่ 2 </a> </p>
                               <p>    <a href="studentform.php?id=&group=student3">นักศึกษา ชั้นปีที่ 3</a> </p>
                                <p>    <a href="studentform.php?id=&group=student4">นักศึกษา ชั้นปีที่ 4</a> </p>
                            <p>     <a href="teacherform.php?id=">อาจารย์</a></p>
                              <p>    <a href="staffform.php?id=">เจ้าหน้าที่</a></p>
             			 </div>
            		</div>
             </div>
        </div>
          
      </div>
    </section>
<footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 margin30">
                        <h3>About Medical</h3>
                        <p>
                            Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                        </p>
                        <ul class="list-unstyled contact-details">
                            <li class="clearfix">
                                <i class="pe-7s-home"></i>
                                <p>
                                    124, Munna wali street, queens road, 302012
                                </p>
                            </li>
                            <li class="clearfix">
                                <i class="pe-7s-phone"></i>
                                <p>
                                    +01 1800 555 33
                                </p>
                            </li>
                            <li class="clearfix">
                                <i class="pe-7s-mail"></i>
                                <p>
                                    support@assanmedical.com
                                </p>
                            </li>
                        </ul>
                        <div class="socials-colored">
                            <a href="#" class="social-icon si-dark si-colored-facebook">
                                <i class="fa fa-facebook"></i>
                                <i class="fa fa-facebook"></i>
                            </a>
                            <a href="#" class="social-icon si-dark si-colored-twitter">
                                <i class="fa fa-twitter"></i>
                                <i class="fa fa-twitter"></i>
                            </a>
                            <a href="#" class="social-icon si-dark si-colored-google-plus">
                                <i class="fa fa-google-plus"></i>
                                <i class="fa fa-google-plus"></i>
                            </a>
                            <a href="#" class="social-icon si-dark si-colored-google-plus">
                                <i class="fa fa-youtube-play"></i>
                                <i class="fa fa-youtube-play"></i>
                            </a>
                            <a href="#" class="social-icon si-dark si-colored-linkedin">
                                <i class="fa fa-linkedin"></i>
                                <i class="fa fa-linkedin"></i>
                            </a>
                        </div>
                    </div><!--col-->
                    <div class="col-md-3 margin30">
                        <h3>Quick links</h3>
                        <ul class="list-unstyled quick-links">
                            <li><a href="index.php">Home</a></li>
                            <li><a href="#">Faqs</a></li>
                            <li><a href="about.php">About us</a></li>
                            <li><a href="#">make an appointment</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Privacy & policy</a></li>
                            <li><a href="#">Terms & conditions</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 margin30">
                        <h3>latest news</h3>
                        <ul class="list-unstyled latest-news">
                            <li>
                                <a href="#">Sed do eiusmod tempor incididunt ut labore</a>
                                <em><i class="fa fa-comments-o"></i> 6 comments</em>
                            </li>
                            <li>
                                <a href="#">Lorem Ipsum is simply dummy text of the printing.</a>
                                <em><i class="fa fa-comments-o"></i> 6 comments</em>
                            </li>
                            <li>
                                <a href="#">Sed do eiusmod tempor incididunt ut labore</a>
                                <em><i class="fa fa-comments-o"></i> 6 comments</em>
                            </li>                          
                        </ul>
                    </div>
                    <div class="col-md-3 margin30">
                        <h3>Quick Contact</h3>
                        <form role="form">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Name">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Email">
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" rows="3" placeholder="Message"></textarea>
                            </div>
                            <div class="form-group text-right">
                                <button type="button" class="btn btn-theme-bg btn-lg">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
<?php require_once("footer.php"); ?>

