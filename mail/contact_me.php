<!DOCTYPE html>
<html lang="en">
<head>

  <!-- SITE TITTLE -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Computer Enginerring - Chiangmai University</title>
  
  <!-- Bootstrap -->
  <link href="../bootstrap/css/bootstrap.css" rel="stylesheet">

  <!-- PLUGINS CSS STYLE -->
  <link href="../css/owl.carousel.css" rel="stylesheet">
  <link href="../css/owl.theme.css" rel="stylesheet">
  <link href="../css/flexslider.css" rel="stylesheet">
  <link href="../css/animate.css" rel="stylesheet">
  <!-- <link href="css/style.css" rel="stylesheet"> -->
  <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet">

  <!--Revolution slider css-->
<link href="../rs-plugin/css/settings.css" rel="stylesheet" type="text/css" media="screen">
<link href="../css/rev-style.css" rel="stylesheet" type="text/css" media="screen">
<!--custom css for only medial template-->
<link href="../css/medical.css" type="text/css" rel="stylesheet">

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>

<body>
  <div class="container">
    <div class="top-bar">
        <div class="row">
            <div class="col-md-7 hidden-xs hidden-sm">
                <span><i class="pe-7s-phone"></i> +66  5394 2023</span>
            </div>
            <div class="col-md-5 text-right">
                <div class="top-bar-right">
                    <a href="#" class="social-icon-sm si-border-round si-facebook">
                        <i class="fa fa-facebook"></i>
                        <i class="fa fa-facebook"></i>
                    </a>
                    <a href="#" class="social-icon-sm si-border-round si-twitter">
                        <i class="fa fa-twitter"></i>
                        <i class="fa fa-twitter"></i>
                    </a>
                    <a href="#" class="social-icon-sm si-border-round si-g-plus">
                        <i class="fa fa-youtube-play"></i>
                        <i class="fa fa-youtube-play"></i>
                    </a>
                    <a href="" class="appointment">กดไปเถอะ ไม่มีอะไรหรอก</a>
                </div>

            </div>
        </div>
    </div>
  </div>
  <!-- Static navbar -->
  <nav class="navbar navbar-default navbar-static-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><img src="../img/cpehead-logo.png" alt="KAREE" width="180"></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="../index.php">Home</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div><!--/.container-fluid -->
  </nav>

	<?php
// check if fields passed are empty
// function mailLoad(){
if(empty($_POST['name'])  		||
   empty($_POST['email']) 		||
   empty($_POST['message'])	||
   !filter_var($_POST['email'],FILTER_VALIDATE_EMAIL))
   {
	echo "No arguments Provided!";
//	return false;
   }
	
$name = $_POST['name'];
$email_address = $_POST['email'];
$message = $_POST['message'];
	
// create email body and send it	
$to = 'cpe@eng.cmu.ac.th'; // hi mate thanks for purchase guna theme, just replace your email with emailme@myprogrammingblog.com
$email_subject = "Contact form submitted by:  $name";
$email_body = "You have received a new message. \r\n".
				  " Here are the details:\n \nName: $name \n ".
				  "Email: $email_address\n Message \n $message";
$headers = "From: cpe@eng.cmu.ac.th\n";
$headers .= "Reply-To: $email_address";	
//mail($to,$email_subject,$email_body,$headers);

// return "mailto:" . $to . "?subject=" . $email_subject . "&body=" . $email_body ;

// }
echo "<a href='mailto:" . $to . "?subject=" . $email_subject . "&body=" . $email_body . "'>$email_body</a>";
//return true;	
?>

<?php require_once("../footer.php"); ?>
