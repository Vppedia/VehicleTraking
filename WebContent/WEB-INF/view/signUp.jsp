<!DOCTYPE html>
<html lang="en">
	
<!-- Mirrored from unifytheme.com/html/campus/sign-up.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 28 Dec 2017 02:22:17 GMT -->
<head>
		<meta charset="UTF-8">
		<!-- For IE -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<!-- For Resposive Device -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<title>sign up</title>

		


		<!-- Main style sheet -->
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<!-- responsive style sheet -->
		<link rel="stylesheet" type="text/css" href="css/responsive.css">

</head>

	<body>
		<div class="main-page-wrapper">

			
			<div id="loader-wrapper">
				<div id="loader"></div>
			</div>
			
			<div class="inner-banner">
				<div class="opacity">
					<div class="container">
						<h2>Sign Up</h2>
						<ul>
							<li><a href="" class="tran3s">Home</a></li>
							<li>/</li>
							
							<li>Sign Up</li>
						</ul>
					</div> 
				</div> 
			</div> 

	      <div class="signUpModal theme-modal-box">
				<div class="modal-dialog">
				    <div class="modal-content">
					    <div class="modal-body">
					        
					        <form action="inserIntoDB" onsubmit="return validateit()">
					        	<h3>Sign Up</h3>
					        	<div class="wrapper">
					        	    <input type="text" placeholder="name" name="name">
					        		<input type="text" placeholder="Username" name="userName">
					        		<input type="text" placeholder="mobile" name="mobile">
					        		<input type="email" placeholder="Email" name="email">
					        		<input type="password" placeholder="Password" name="password" id="userPassword">
					        		<input type="password" placeholder="Repeat Password" id="userConfirmPassword">
					        		<span id="message" style="color:red"></span>
									<button class="p-bg-color hvr-trim" type="submit">Sign Up</button>
					        	</div>
					        </form>
					    </div> 
				    </div> 
				</div> 
			</div> 
			<jsp:include page="commonJsp/Footer.jsp" />
			
			<script type="text/javascript">
			 function validateit(){
		    	   
		    	   var password = document.getElementById("userPassword").value;
		    	   var confirmpassword = document.getElementById("userConfirmPassword").value;
		    	   if(password == confirmpassword)
		    		   return true;
		    	   else
		    		   document.getElementById("message").innerHTML="Password do not match";
		    		   return false;
		       }
			
			</script>
		</div> 
	</body>


</html>