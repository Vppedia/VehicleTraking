
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
					<li><a href="#">Add Vehicle Model</a></li>
					<!--  <li>Question</li> -->
				</ul>
			</div>

		</div>
	</div></div>
	
	<div class="container-fluid" >
	
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
						<th>Model Name</th>
						<th>Model Description</th>
						<th>Action Edit</th>
						<th>Action Delete</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${model}" var="model" varStatus="loop">
						<tr>
							<td>${loop.index+1}.</td>
							<td>${model.typeOfVehicle}</td>
							<td>${model.ownerName}</td>
							<td>${model.modelName}</td>
							<td>${model.description}</td>
							<td><input type="button" class="btn btn-primary"
								data-name="${model.modelName}" data-description="${model.description}"
								data-toggle="modal" data-id="${model.modelId}" data-id1="${model.vehicleCategory}" data-id2="${model.vehicleId}" data-target="#C-role-edit"
								id="edit" value="Edit"> 
								 <!-- Modal --></td>
							<td> <input type="button" onclick="deleteStudent(${model.modelId})" class="btn btn-primary "data-name="" data-description=""
								data-toggle="" data-id="" data-target=""
								id="delete" value="delete" style="margin:0px 0px;" ></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			 <form method="post" id="deleteVehicle" >
          		<input type="hidden" name="modelId" id="deleteModelId"/>
          	</form>
			<!-- / panel preview -->
			<div class="modal fade" id="C-role-edit" role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Add Model</h4>
						</div>
						
						<form action="addModel" method="post">
						
<!--for edit or new entry purpose --> 
                         <input type="hidden"  name="modelId" id="modelId" value="0"/>
						
							<div class="modal-body">
								
								<div class="row" id="vehicletype">
									<label class="col-md-6">Vehicle Type</label>
									<div class="col-md-6">
									<select class="form-control" name="vehicleCategory" id="type" onchange="getVehicleGroup(this);">
										<option value="0">Select Vehicle Type</option>
										<option value="1"> Commercial</option>
										<option value="2"> Personal </option>
										</select>
									</div>
								</div>
								<p></p>
								<div class="row" id="vehiclegroup">
									<label class="col-md-6">Vehicle Group</label>
									<div class="col-md-6">
									<select class="form-control" name="checkboxvalue" id="csd">
										<option value="0">select vehicle group</option>
									    </select>	
									</div>
								</div>
								<p></p>
								<div class="row">
									<label class="col-md-6">Model Name</label>
									<div class="col-md-6">
										<input class="form-control"  id="modelName" name="modelName" placeholder="Model Name"
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
    var Id = $(this).data('id1');
//    $("#type").val(Id);
    $("#modelName").val($(this).data('name'));
    $("#description").val($(this).data('description'));
  //  $("#csd").val($(this).data('id2'));
    $("#modelId").val($(this).data('id'));
    document.getElementById('vehicletype').style="display:none";
    document.getElementById('vehiclegroup').style="display:none";
    $("#C-role-edit").show();
});

function deleteStudent(id){
	//deleteCluster
	$("#deleteModelId").val(id);
	document.getElementById("deleteVehicle").action = "deleteVehicleModel";
	document.getElementById("deleteVehicle").method = "post";
	document.getElementById("deleteVehicle").submit();
}

function clearForm(){
	document.getElementById("csd").value = 0;
	document.getElementById("type").value = 0;
	document.getElementById("modelId").value = 0;
	document.getElementById("modelName").value= '';
	document.getElementById("description").value= '';
	document.getElementById('vehicletype').style="display";
    document.getElementById('vehiclegroup').style="display";
}

function getVehicleGroup(vehicleType)
{
	 var id = vehicleType.value;
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				var i;
				var obj = JSON.parse(this.responseText);
				var rolelist = '';
				for (i = 0; i < obj.length; i++) {

					rolelist += "<option value="+obj[i].groupId+ ">"
							+ obj[i].groupName + "</option>";
				}
				document.getElementById("csd").innerHTML = "<option value='0'>Select vehicle group</option>"
						+ rolelist;
			}
		};
		var action = "getVehicleGroup?vehicleType=" + id;
		xhttp.open("POST", action, true);
		xhttp.send();
}
</script>

</html>