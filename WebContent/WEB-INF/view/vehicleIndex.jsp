<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    

<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Indian Institute of Management Ahmedabad (IIMA) | Home - IIMA</title>

        <!-- Bootstrap -->
        <link href="css/bootstrap.css" rel="stylesheet">

        <!-- Custom -->
        <link href="css/custom.css" rel="stylesheet">

      
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/font-awesome.css">

        <!-- CSS STYLE-->
        <link rel="stylesheet" type="text/css" href="css/style.css" media="screen" />

        <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
        <link rel="stylesheet" type="text/css" href="rs-plugin/css/settings.css" media="screen" />
<style>

table {
    border-collapse: collapse;
    width: 70%;
	margin-left:232px;
}
th{background-color:#428bca; color:#fff;}
th, td {
    padding: 8px;
    text-align: left;
    border: 1px solid #000;

}
.button_margin{margin-top:60px;width:157px;}
.margin_left_top{margin-left:615px;} 
	body  {
    background-image: url("images/bg1.png"); }
</style>

    </head>
    <body>

 
        <div class="container-fluid">

	
						
		               <h1 class="text-center" style="margin-top:140px;"><b>Welcome ! Track your Vehicle with us!!!</b></h1></br>
							</center>
<div class="container">
	<div class="row">	
	<div class="col-md-3">	</div>
<div class="col-md-4">	
<input type="button" value="Vehicle Registration" onclick="csd();" class="btn btn-primary button_margin"></center>
</div>

<div class="col-md-3">	
<input type="button" value="Vehicle Details" data-toggle="modal" data-target="#proccess-done" class="btn btn-primary button_margin"></center>
</div>
	<div class="col-md-3">	</div>
</div></div>
</div>



<style>



</style>
<!-- get jQuery from the google apis -->
<script src="js/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="js/bootstrap.js"></script>
<script>
function csd()
{
	alert("csd");
	window.location.href="vehicleRegistration";
}

</script>
</body>

</html> --%>
<!DOCTYPE html>
<html lang="en">
	

<head>
		<meta charset="UTF-8">
		
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<title>Vehicle Information Management</title>
<link rel="stylesheet" type="text/css" href="css/style.css">

		<link rel="stylesheet" type="text/css" href="css/responsive.css">
	</head>

	<body>
		<div class="main-page-wrapper">

			
			<header class="theme-menu-wrapper menu-style-one">
				<div class="container">
					<div class="header-wrapper clearfix">
						
						<div class="logo float-left tran4s"><a href=""><img src="images/logo2.png" alt="Logo"></a></div>

						
						<nav class="theme-main-menu float-right navbar" id="mega-menu-wrapper">
							
						   <div class="navbar-header">
						     <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1" aria-expanded="false">
						       <span class="sr-only">Toggle navigation</span>
						       <span class="icon-bar"></span>
						       <span class="icon-bar"></span>
						       <span class="icon-bar"></span>
						     </button>
						   </div>
						   <!-- Collect the nav links, forms, and other content for toggling -->
						   <div class="collapse navbar-collapse" id="navbar-collapse-1">
								<ul class="nav">
									<li class="dropdown-holder menu-list"><a href="" class="tran3s">Home</a>
										<ul class="sub-menu">
											<li><a href="">Home one</a></li>
											<li><a href="">Home Two</a></li>
										</ul>
									</li>
									
									<li class="dropdown-holder menu-list"><a href="#" class="tran3s">Menu 1</a>
										<ul class="sub-menu">
											<li><a href="">Menu 2</a></li>
											              <li><a href="">Menu 2</a></li>
											<li><a href="">Menu 2</a></li>
										</ul>
									</li>
									<li><a href="" class="tran3s">Contact Us</a></li>
									<li class="login"><button class="tran3s" data-toggle="modal" data-target=""><i class="flaticon-lock"></i> Login</button></li>
								</ul>
						   </div>
						</nav> 
					</div> 
				</div>
			</header> 
			<div id="theme-main-banner" class="banner-one">
				<div data-src="images/slide-1.png">
					<div class="camera_caption">
						<div class="container text-center">
							<h3 class="wow fadeInUp animated">Know about your vehicle</h3>
							<h1 class="wow fadeInUp animated" data-wow-delay="0.2s">Enter your <span class="p-color">Vehicle number</span></h1>
							<a class="tran3s wow fadeInLeft animated banner-button" data-wow-delay="0.3s" onclick="csd();">New Vehicle</a>
							<a href="" class="tran3s wow fadeInRight animated button-one banner-button hvr-trim" data-wow-delay="0.3s">Already Registered</a>
						</div>
					</div> 
				</div>
				<div data-src="images/slide-2.png">
					<div class="camera_caption">
						<div class="container text-center">
							<h3 class="wow fadeInUp animated">Know about your vehicle</h3>
							  <h1 class="wow fadeInUp animated" data-wow-delay="0.2s">Enter your <span class="p-color">Vehicle number</span></h1>
							<a class="tran3s wow fadeInLeft animated banner-button" data-wow-delay="0.3s" onclick="csd();">New Vehicle</a>
							 <a href="" class="tran3s wow fadeInRight animated button-one banner-button hvr-trim" data-wow-delay="0.3s">Already Registered</a>
						</div> 
					</div> 
				</div>
			</div> 

<footer>
				<div class="bottom-footer">
					<div class="container">
						<ul class="float-right">
							<li><a href="#" class="tran3s"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
									<li><a href="#" class="tran3s"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
									<li><a href="#" class="tran3s"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
						</ul>
						<p class="float-left">&copy; 2017 <a href="#" class="tran3s s-color">Vehicle Information</a>. All rights reserved</p>		
					</div>
				</div> 
			</footer>

<script type="text/javascript" src="vendor/jquery.2.2.3.min.js"></script>
		
		<script type="text/javascript" src="vendor/bootstrap-select/dist/js/bootstrap-select.js"></script>

		<!-- Bootstrap JS -->
		<script type="text/javascript" src="vendor/bootstrap/bootstrap.min.js"></script>

		<script type='text/javascript' src='vendor/Camera-master/scripts/jquery.mobile.customized.min.js'></script>
	    <script type='text/javascript' src='vendor/Camera-master/scripts/jquery.easing.1.3.js'></script> 
	    <script type='text/javascript' src='vendor/Camera-master/scripts/camera.min.js'></script>
	    <!-- Mega menu  -->
		<script type="text/javascript" src="vendor/bootstrap-mega-menu/js/menu.js"></script>
		
		
		<script type="text/javascript" src="vendor/WOW-master/dist/wow.min.js"></script>
		
		<script type="text/javascript" src="vendor/owl-carousel/owl.carousel.min.js"></script>
		<!-- js count to -->
		<script type="text/javascript" src="vendor/Counter/jquery.counterup.min.js"></script>
		<script src="vendor/Counter/jquery.waypoints.min.js"></script>
		
		<script type="text/javascript" src="vendor/particles.js-master/particles.min.js"></script>
		<script type="text/javascript" src="vendor/particles.js-master/demo/js/lib/stats.js"></script>
		<script type="text/javascript" src="vendor/particles.js-master/demo/js/app.js"></script>

		
		<script type="text/javascript" src="js/theme.js"></script>
<script type="text/javascript">
function csd()
{
	window.location.href="menu";
}
</script>

		</div>
	</body>


</html>