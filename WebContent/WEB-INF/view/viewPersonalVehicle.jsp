<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<!-- For IE -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<!-- For Resposive Device -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<title>Campus - Education, Course, e-Learning and Events HTML Template</title>

		<!-- Favicon -->
		<link rel="icon" type="image/png" sizes="56x56" href="images/fav-icon/icon.png">


		<!-- Main style sheet -->
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<!-- responsive style sheet -->
		<link rel="stylesheet" type="text/css" href="css/responsive.css">


		<!-- Fix Internet Explorer ______________________________________-->

		<!--[if lt IE 9]>
			<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
			<script src="vendor/html5shiv.js"></script>
			<script src="vendor/respond.js"></script>
		<![endif]-->

			
	</head>

<body>
<div class="affix" style="width:100%;" >
	<jsp:include page="commonJsp/Header.jsp" />
	<div class="clearfix"></div>
	<div class="breadcumb-wrapper">
		<div class="clearfix">
			<div class="pull-left">
				<ul class="list-inline link-list">
					<li><a href="superadminhome">Home</a></li>
					<li><a href="#">View Commercial</a></li>
					<!--  <li>Question</li> -->
				</ul>
			</div>

		</div>
	</div></div>
	
	<div class="container-fluid" style="padding-top:200px;min-height:738px;">
	
	<div class="container">
		<div class="row">
			<!-- panel preview -->
			<div class="space"></div>
			<div class="clearfix"></div>
			<table id="main-fourum" class="table table-striped table-bordered">
				<thead>
					<tr>
						 <th>Sr. No.</th>
						 <th>RC Number</th>
						 <th>Vehicle Type</th>
						 <th>Vehicle Model</th>
						 <th>Edit</th>
						 
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${model}" var="approval" varStatus="loop">
						<tr>
							<td>${loop.index+1}.</td>
							<td>${approval.registrationNo}</td>
							<td>${approval.typeOfVehicle}</td>
							<td>${approval.modelName}</td>
							<td><form id="approve${approval.vehicleId}" method="post">
							             	<input type="hidden" value="${approval.vehicleId}" name="vehicleId" id="csd"/>
							          	</form>
						           		<input type="button" value="edit" class="btn btn-primary" onclick="edit(${approval.vehicleId})"/></td>
						           		
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div></div>
	<jsp:include page="commonJsp/Footer.jsp" />
</body>
<script type="text/javascript">
function edit(vehicleId){
    alert(vehicleId);
    document.getElementById("approve"+vehicleId).action="editPersonalVehicleDetails";	
	document.getElementById("approve"+vehicleId).method="post";
	document.getElementById("approve"+vehicleId).submit();
}

function remove(vehicleId){
  
    document.getElementById("reject"+vehicleId).action="deleteCommercialVehicleDetails";	
	document.getElementById("reject"+vehicleId).method="post";
	document.getElementById("reject"+vehicleId).submit();
}

</script>

</html>