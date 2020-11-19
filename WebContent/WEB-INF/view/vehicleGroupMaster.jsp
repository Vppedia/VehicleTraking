<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html><!-- 
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Vehicle Information Management</title>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon"/>
Bootstrap
<link href="css/bootstrap.css" rel="stylesheet">
Custom
<link href="css/custom.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/font-awesome.css">

CSS STYLE
<link rel="stylesheet" type="text/css" href="css/style.css"
	media="screen" />

SLIDER REVOLUTION 4.x CSS SETTINGS
<link rel="stylesheet" type="text/css" href="rs-plugin/css/settings.css"
	media="screen" />
	
	

</head> -->
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
					<li><a href="#">Add Vehicle Type</a></li>
					<!--  <li>Question</li> -->
				</ul>
			</div>

		</div>
	</div></div>
	
	<div class="container-fluid">
	
	<div class="container">
		<div class="row">
			<!-- panel preview -->
			<div class="space"></div>
			
			<div class="btn-container" >

				<input type="button" class="btn btn-primary pull-right"
					data-toggle="modal" data-target="#C-role-edit" value="Add Vehicle" style="margin-bottom:20px;" onclick="clearForm();" >

			</div>
			<div class="clearfix"></div>
			
			<table id="main-fourum" class="table table-striped table-bordered">
				<thead>
					<tr>
						 <th>Sr. No.</th>
						<th>Vehicle Group</th>
						<th>Type</th>
						<th>Description</th>
						<th>Action Edit</th>
						<th>Action Delete</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${Vehicle}" var="veh" varStatus="loop">
						<tr>
							<td>${loop.index+1}.</td>
							<td>${veh.vehicleName}</td>
							<td>${veh.typeOfVehicle}</td>
							<td>${veh.description}</td>
							<td><input type="button" class="btn btn-primary"
								data-name="${veh.vehicleName}" data-description="${veh.description}"
								data-toggle="modal" data-id="${veh.vehicleCategory}" data-id1="${veh.vehicleId}" data-target="#C-role-edit"
								id="edit" value="Edit"> 
								 <!-- Modal --></td>
							<td> <input type="button" onclick="deleteVehicle(${veh.vehicleId})" class="btn btn-primary "data-name="" data-description=""
								data-toggle="" data-id="" data-target=""
								id="delete" value="delete" style="margin:0px 0px;" ></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			 <form method="post" id="deleteVehicle" >
          		<input type="hidden" name="vehicleId" id="deleteVehicleId"/>
          	</form>
			<!-- / panel preview -->
			<div class="modal fade" id="C-role-edit" role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Add Vehicle</h4>
						</div>
						
						<form action="addVehicle" method="post">
						
<!--for edit or new entry purpose --> 
                         <input type="hidden"  name="vehicleId" id="vehicleId" value="0"/>
						
							<div class="modal-body">
								
								<div class="row">
									<label class="col-md-6">Vehicle Type</label>
									<div class="col-md-6">
									<select class="form-control" name="vehicleCategory" id="type">
										<option value="0"> Select </option>
										<option value="1"> Commercial</option>
										<option value="2"> Personal </option>
										</select>
									</div>
								</div>
								<p></p>
								<div class="row">
									<label class="col-md-6">Vehicle Group Name</label>
									<div class="col-md-6">
										<input class="form-control"  id="vehicleName" name="vehicleName" placeholder="Vehicle Group Name"
											type="text" name="vehicleTypeName" required>
									</div>
								</div>
								<p></p>
								<div class="row">
									<label class="col-md-6">Description</label>
									<div class="col-md-6">
										<input class="form-control" id="description" name="description" placeholder="Description"
											type="text" name="description" required>
									</div>
								</div>
						
							</div>
							<div class="modal-footer">
								<button type="submit" class="btn btn-default">Add</button>
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Cancel</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div></div>
	<jsp:include page="commonJsp/Footer.jsp" />
</body>
<script type="text/javascript">

$(document).on("click", "#edit", function () {
    var Id = $(this).data('id');
    $("#type").val(Id);
    $("#vehicleName").val($(this).data('name'));
    $("#description").val($(this).data('description'));
    $("#vehicleId").val($(this).data('id1'));
    $("#C-role-edit").show();
});

function deleteVehicle(id){
	//deleteCluster
	$("#deleteVehicleId").val(id);
	document.getElementById("deleteVehicle").action = "deleteVehicleType";
	document.getElementById("deleteVehicle").method = "post";
	document.getElementById("deleteVehicle").submit();
}

function clearForm(){
	document.getElementById("vehicleId").value = 0;
	document.getElementById("type").value = '';
	document.getElementById("vehicleName").value= '';
	document.getElementById("description").value= '';
}
</script>





</html>