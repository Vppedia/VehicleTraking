 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page isELIgnored="false"%>
<%--  <header class="theme-menu-wrapper menu-style-one">
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
									<li><a href="newVehicleReg" class="tran3s">New Vehicle Registration</a></li>
									<li><a href="viewdetails" class="tran3s">View Vehicle Details</a></li>
									<li><a href="expiry" class="tran3s">Expiry</a></li>
									<c:if test="${roleId==1}">
			                        <li><a href="approvalpending" class="tran3s">Approval Pending</a></li>
	                                </c:if>		
									<!-- <li class="login"><button class="tran3s" data-toggle="modal" data-target=""><i class="flaticon-lock"></i> Login</button></li> -->
								</ul>
						   </div>
						</nav> 
					</div> 
				</div>
			</header> 
			<div class="inner-banner">
				<div class="opacity">
					<div class="container">
						<!-- <h2>Register here</h2>
						<ul>
							<li><a href="" class="tran3s">Home</a></li>
							<li>/</li>
							<li>Registration</li>
						</ul> -->
					</div> 
				</div> 
			</div>
			
			  --%>
			 
			 <header class="theme-menu-wrapper menu-style-one">
				<div class="container topheader">
					<div class="header-wrapper clearfix">
						<div class="col-md-2">
						<div class="logo float-left tran4s"><a href=""><img src="images/logo2.png" alt="Logo"></a></div>
</div>
						<div class="col-md-10">
						<div class="col-md-12">
						
						<div class="col-md-5 pull-right">
      <ul class="nav navbar-nav navbar-right">
	    <!--<li><a href="#"><i class="fa fa-bell margin_icon" aria-hidden="true"></i></a></li>
        <li><a href="#"><i class="fa fa-user margin_icon" aria-hidden="true"></i>Hi User</a></li>-->
         
             <li class="dropdown">
	   <a id="user_nav" href="#" class="dropdown-toggle" data-toggle="dropdown"><span>${roleName}</span>&nbsp;&nbsp;|&nbsp;&nbsp; ${name} <i class="fa fa-user" aria-hidden="true" style="margin:5px;"></i></a>
       <ul class="dropdown-menu user_menu">
        
        <li>    <a target="" href="changedetails">Update Details <i class="fa fa-user" style="margin-left:10px; aria-hidden=" true"=""></i></a></li>
          
       
        <li>    <a href="logout">Logout<i class="fa fa-sign-out" style="margin-left:10px; " aria-hidden="true"></i></a></li>
          
      </ul>
     </li>
      </ul>
      </div>
      
      <div class="col-md-6 pull-right" style="margin-top:17px;color:#000000;">
									<span class="time" style="font-size: smaller;">
							<span id="date"> <script type="text/javascript">
				                                    var d = new Date()
				                                    var weekday = new Array("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday")
				                                    var monthname = new Array("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
				                                    document.write(weekday[d.getDay()] + ", ")
				                                    document.write(monthname[d.getMonth()] + " ")
				                                     document.write(d.getDate() + "  , ")
				                                    document.write(d.getFullYear())
				                                </script>
						</span> <span id="clockDisplay"><script type="text/javascript">
			                                        function renderTime() {
			                                            var currentTime = new Date();
			                                            var diem = "AM";
			                                            var h = currentTime.getHours();
			                                            var m = currentTime.getMinutes();
			                                            var s = currentTime.getSeconds();
			                                            setTimeout('renderTime()', 1000);
			                                            if (h == 0) {
			                                                h = 12;
			                                            } else if (h > 12) {
			                                                h = h - 12;
			                                                diem = "PM";
			                                            }
			                                            if (h < 10) {
			                                                h = "0" + h;
			                                            }
			                                            if (m < 10) {
			                                                m = "0" + m;
			                                            }
			                                            if (s < 10) {
			                                                s = "0" + s;
			                                            }
			                                            var myClock = document.getElementById('clockDisplay');
			                                            myClock.textContent = h + ":" + m + ":" + s + " " + diem;
			                                            myClock.innerText = h + ":" + m + ":" + s + " " + diem;
			                                        }
			                                        renderTime();
			                                    </script></span>

					</span></div>
      </div>
						<div class="col-md-12" style="background: #36d64c;">
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
									
									 <!--  <li class=" dropdown"><a href="#"
                                                                                        class="dropdown-toggle " data-toggle="dropdown" role="button"
                                                                                        aria-haspopup="true" aria-expanded="false">New Vehicle Registration<span
                                                                                                class="caret"></span></a>
                                                                                        <ul class="dropdown-menu">
                                                                                                <li><a href="newVehicleReg">Commercial Vehicle</a></li>
                                                                                               
                                                                                        </ul></li> -->
                                                                                          <li class=" dropdown"><a href="#"
                                                                                        class="dropdown-toggle " data-toggle="dropdown" role="button"
                                                                                        aria-haspopup="true" aria-expanded="false">New Vehicle Registration <span
                                                                                                class="caret"></span></a>
                                                                                        <ul class="dropdown-menu">
                                                                                                <li><a href="newVehicleReg" >Commercial Vehicle</a></li>
                                                                                                
                                                                                        </ul></li>
									<!-- <li><a href="newVehicleReg" class="tran3s">New Vehicle Registration</a></li> -->
									<li class=" dropdown"><a href="#"
                                                                                        class="dropdown-toggle " data-toggle="dropdown" role="button"
                                                                                        aria-haspopup="true" aria-expanded="false">View Vehicle Details<span
                                                                                                class="caret"></span></a>
                                                                                        <ul class="dropdown-menu">
                                                                                                <li><a href="CommercialVehicleDetails">Commercial Vehicle</a></li>
                                                                                                
                                                                                        </ul></li>
                                                                                       
									 <li class=" dropdown"><a href="#"
                                                                                        class="dropdown-toggle " data-toggle="dropdown" role="button"
                                                                                        aria-haspopup="true" aria-expanded="false">Expiry<span
                                                                                                class="caret"></span></a>
                                                                                        <ul class="dropdown-menu">
                                                                                                <li><a href="Insurance">Insurance</a></li>
                                                                                                 <li><a href="RC">RC</a></li>
                                                                                                  <li><a href="PUC">PUC</a></li>
                                                                                                
                                                                                        </ul></li>
									<c:if test="${roleId==1}">
			                        <li><a href="approvalpending" class="tran3s">Approval Pending</a></li>
	                                </c:if>		
									<!-- <li class="login"><button class="tran3s" data-toggle="modal" data-target=""><i class="flaticon-lock"></i> Login</button></li> -->
								</ul>
						   </div> </nav>  </div></div>
						</div>
					</div> 
			</header> 
			<div class="inner-banner">
				<div class="opacity">
					<div class="container">
						<!-- <h2>Register here</h2>
						<ul>
							<li><a href="" class="tran3s">Home</a></li>
							<li>/</li>
							<li>Registration</li>
						</ul> -->
					</div> 
				</div> 
			</div>
			
 