<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
  <head>
  <title>Vehicle Registration</title>
  <link type="text/css" href="css/custom.css" rel="stylesheet">

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->
		<link rel="stylesheet" href="assets/css/select2.min.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="assets/css/jquery-ui.custom.min.css" />
		<link rel="stylesheet" href="assets/css/chosen.min.css" />
		<link rel="stylesheet" href="assets/css/bootstrap-datepicker3.min.css" />
		<link rel="stylesheet" href="assets/css/bootstrap-timepicker.min.css" />
		<link rel="stylesheet" href="assets/css/daterangepicker.min.css" />
		<link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css" />
		<link rel="stylesheet" href="assets/css/bootstrap-colorpicker.min.css" />
<link rel="stylesheet" type="text/css" href="css/style.css">
		<!-- responsive style sheet -->
		<link rel="stylesheet" type="text/css" href="css/responsive.css">
		<!-- ace styles -->
		<link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />


		<!-- ace settings handler -->
		<script src="assets/js/ace-extra.min.js"></script>
		
		<style>
		.marg {
		margin-left:45%;
		}
		.form-group {
    width: 100%;
    float: left;
}
	
.button_css{
background-color:#2e8c3b;
border-radius: 5px;
    border-color: #36d64c;
	margin-bottom:40px;
	color:white}

	</style>
		
  </head>
  <body onload="csd11();">
 	 <jsp:include page="commonJsp/Header.jsp" />	
  <div class="space"></div>
  <div class="container">
   <form  action="addToTable1" method="post" enctype="multipart/form-data">
   <input type="hidden" name="personalCommercial" value="Commercial">
      <div class="main_box section_one panel panel-primary">
     <div class="panel-heading">
           Registration
        </div>
        <br>
    <div class="panel-body">
    <c:forEach items="${model}" var="csd" varStatus="loop">
    <c:set var="csd13" value="${csd.typeOfVehicle}"/>
     <c:set var="csd14" value="${csd.modelName}"/>
    <div class="col-md-6">
        <div class="form-group">
		<label class="control-label text-left col-xs-12 col-sm-5 no-padding-right" for="text">Registration Number</label>
            <div class="col-xs-12 col-sm-7">
			<div class="clearfix">
			<input maxlength="100" required="" class="col-xs-12 col-sm-6 form-control" placeholder="RC Number" type="text" name="registrationNo" value="${csd.registrationNo}">
          	</div>
            </div>
            
        </div>
         </div>
        <div class="col-md-6">
         <div class="form-group">
		<label class="control-label text-left col-xs-12 col-sm-5 no-padding-right" for="text">Company Name</label>
            <div class="col-xs-12 col-sm-7">
			<div class="clearfix">
			<input maxlength="100" required="" class="col-xs-12 col-sm-6 form-control" placeholder="Name of the Company" type="text" name="modelCompany" value="${csd.modelCompany}">
          	</div>
            </div>
            </div>
            </div>
      
       
        <div class="col-md-6">
      <div class="form-group">
         <label class="control-label text-left col-xs-12 col-sm-5 no-padding-right" for="text">Owner Name</label>
       <div class="col-xs-12 col-sm-7">
		 <input type="text" class="form-control" name="ownerName" value="${csd.ownerName}" >

        </div>
         
      </div>
    </div>
	 <div class="col-md-6">
      <div class="form-group">
        <label class="control-label text-left col-xs-12 col-sm-5 no-padding-right" for="text">Date of Purchase</label>
       <div class="col-xs-12 col-sm-7">
		<div class="input-group">
    <input class="form-control date-picker" id="id-date-picker-1" type="text" name="dateOfPurchase" data-date-format="dd-mm-yyyy" value="${csd.dateOfPurchase}"/>
																	<span class="input-group-addon">
																		<i class="fa fa-calendar bigger-110"></i>
																	</span>
																</div>

        </div>
         
      </div>
    </div>
    
     <div class="col-md-6">
      <div class="form-group">
        <label class="control-label text-left col-xs-12 col-sm-5 no-padding-right" for="text">RC Issue Date</label>
       <div class="col-xs-12 col-sm-7">
		<div class="input-group">
    <input class="form-control date-picker"  type="text" name="rcDateOfIssue" data-date-format="dd-mm-yyyy" value="${csd.rcDateOfIssue}" />
																	<span class="input-group-addon">
																		<i class="fa fa-calendar bigger-110"></i>
																	</span>
																</div>

        </div>
         
      </div>
    </div>
    
     <div class="col-md-6">
      <div class="form-group">
       <label class="control-label text-left col-xs-12 col-sm-5 no-padding-right" for="text">RC Expiry Date</label>
       <div class="col-xs-12 col-sm-7">
		<div class="input-group">
    <input class="form-control date-picker"  type="text" name="rcDateOfExp" data-date-format="dd-mm-yyyy" value="${csd.rcDateOfExp}"/>
																	<span class="input-group-addon">
																		<i class="fa fa-calendar bigger-110"></i>
																	</span>
																</div>

        </div>
         
      </div>
    </div>
    
     <div class="col-md-6">
      <div class="form-group">
       <label class="control-label text-left col-xs-12 col-sm-5 no-padding-right" for="text">Insurance Issue Date</label>
       <div class="col-xs-12 col-sm-7">
		<div class="input-group">
    <input class="form-control date-picker"  type="text" name="insuranceIssueDate" data-date-format="dd-mm-yyyy" value="${csd.insuranceIssueDate}"/>
																	<span class="input-group-addon">
																		<i class="fa fa-calendar bigger-110"></i>
																	</span>
																</div>

        </div>
         
      </div>
    </div>
    
     <div class="col-md-6">
      <div class="form-group">
       <label class="control-label text-left col-xs-12 col-sm-5 no-padding-right" for="text">Insurance Expiry Date</label>
      <div class="col-xs-12 col-sm-7">
		<div class="input-group">
    <input class="form-control date-picker" type="text" name="insuranceExpiryDate" data-date-format="dd-mm-yyyy" value="${csd.insuranceExpiryDate}"/>
																	<span class="input-group-addon">
																		<i class="fa fa-calendar bigger-110"></i>
																	</span>
																</div>

        </div>
         
      </div>
    </div>
    
     <div class="col-md-6">
      <div class="form-group">
       <label class="control-label text-left col-xs-12 col-sm-5 no-padding-right" for="text">PUC Issue Date</label>
       <div class="col-xs-12 col-sm-7">
		<div class="input-group">
    <input class="form-control date-picker"  type="text" name="PUCDateOfIssue" data-date-format="dd-mm-yyyy" value="${csd.PUCDateOfIssue}"/>
																	<span class="input-group-addon">
																		<i class="fa fa-calendar bigger-110"></i>
																	</span>
																</div>

        </div>
         
      </div>
    </div>
    
     <div class="col-md-6">
      <div class="form-group">
        <label class="control-label text-left col-xs-12 col-sm-5 no-padding-right" for="text">PUC Expiry Date</label>
       <div class="col-xs-12 col-sm-7">
		<div class="input-group">
    <input class="form-control date-picker" type="text" name="PUCDateOfExp" data-date-format="dd-mm-yyyy" value="${csd.PUCDateOfExp}"/>
																	<span class="input-group-addon">
																		<i class="fa fa-calendar bigger-110"></i>
																	</span>
																</div>

        </div>
         
      </div>
    </div>
<div class="col-md-6">
      <div class="form-group">
       <label class="control-label text-left col-xs-12 col-sm-5 no-padding-right" for="text">Model Manufracture Year</label>
       <div class="col-xs-12 col-sm-7">
		 <input type="text" class="form-control" name="modelYear" value="${csd.modelYear}">

        </div>
         
      </div>
    </div>
	<div class="col-md-6">
      <div class="form-group">
        <label class="control-label text-left col-xs-12 col-sm-5 no-padding-right" for="text">Chachis Number</label>
       <div class="col-xs-12 col-sm-7">
		 <input type="text" class="form-control" name="chacisNo" value="${csd.chacisNo}">

        </div>
         
      </div>
    </div>
	<div class="col-md-6">
      <div class="form-group">
        <label class="control-label text-left col-xs-12 col-sm-5 no-padding-right" for="text">Engine Number</label>
       <div class="col-xs-12 col-sm-7">
		 <input type="text" class="form-control" name="engineNo" value="${csd.engineNo}">

        </div>
         
      </div>
    </div>
	<div class="col-md-6">
      <div class="form-group">
        <label class="control-label text-left col-xs-12 col-sm-5 no-padding-right" for="text">Key Number</label>
       <div class="col-xs-12 col-sm-7">
		 <input type="text" class="form-control" name="keyNo" value="${csd.keyNo}">

        </div>
         
      </div>
    </div>
	<div class="col-md-6">
      <div class="form-group">
        <label class="control-label text-left col-xs-12 col-sm-5 no-padding-right" for="text">Fitness</label>
       <div class="col-xs-12 col-sm-7">
		<div class="input-group">
    <input class="form-control date-picker"  type="text" name="fitness" data-date-format="dd-mm-yyyy" value="${csd.fitness}"/>
																	<span class="input-group-addon">
																		<i class="fa fa-calendar bigger-110"></i>
																	</span>
																</div>

        </div>
         
      </div>
    </div>
	<div class="col-md-6">
      <div class="form-group">
        <label class="control-label text-left col-xs-12 col-sm-5 no-padding-right" for="text">Permit</label>
       <div class="col-xs-12 col-sm-7">
		 <div class="input-group">
    <input class="form-control date-picker" type="text" name="permit" data-date-format="dd-mm-yyyy" value="${csd.permit}" />
																	<span class="input-group-addon">
																		<i class="fa fa-calendar bigger-110"></i>
																	</span>
																</div>

        </div>
         
      </div>
    </div>
	 
	
	  
 
 </c:forEach>
 </div>
 </div>
 <input type="submit" value="Submit" class="center-block button_css"  />
 </form>
 </div>
 
 <jsp:include page="commonJsp/Footer.jsp" />
		<script src="assets/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
		
		<script src="assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->
		<script src="assets/js/wizard.min.js"></script>
		<script src="assets/js/jquery.validate.min.js"></script>
		<script src="assets/js/jquery-additional-methods.min.js"></script>
		<script src="assets/js/bootbox.js"></script>
		<script src="assets/js/jquery.maskedinput.min.js"></script>
		<script src="assets/js/select2.min.js"></script>
<script src="assets/js/bootstrap-datepicker.min.js"></script>
		<!-- ace scripts -->
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
			
				$('[data-rel=tooltip]').tooltip();
			
				$('.select2').css('width','200px').select2({allowClear:true})
				.on('change', function(){
					$(this).closest('form').validate().element($(this));
				}); 
			
			
				var $validation = false;
				$('#fuelux-wizard-container')
				.ace_wizard({
					//step: 2 //optional argument. wizard will jump to step "2" at first
					//buttons: '.wizard-actions:eq(0)'
				})
				.on('actionclicked.fu.wizard' , function(e, info){
					if(info.step == 1 && $validation) {
						if(!$('#validation-form').valid()) e.preventDefault();
					}
				})
				//.on('changed.fu.wizard', function() {
				//})
				.on('finished.fu.wizard', function(e) {
					bootbox.dialog({
						message: "Thank you! Your information was successfully saved!", 
						buttons: {
							"success" : {
								"label" : "OK",
								"className" : "btn-sm btn-primary"
							}
						}
					});
				}).on('stepclick.fu.wizard', function(e){
					//e.preventDefault();//this will prevent clicking and selecting steps
				});
			
			
				//jump to a step
				/**
				var wizard = $('#fuelux-wizard-container').data('fu.wizard')
				wizard.currentStep = 3;
				wizard.setState();
				*/
			
				//determine selected step
				//wizard.selectedItem().step
			
			
			
				//hide or show the other form which requires validation
				//this is for demo only, you usullay want just one form in your application
				$('#skip-validation').removeAttr('checked').on('click', function(){
					$validation = this.checked;
					if(this.checked) {
						$('#sample-form').hide();
						$('#validation-form').removeClass('hide');
					}
					else {
						$('#validation-form').addClass('hide');
						$('#sample-form').show();
					}
				})
			
			
			
				
				
			
			})
		</script>
        
        <script>

 
  
 var a=1
function addRect(){
     if(a<10)
	 {
	 document.getElementById("internships").innerHTML += '<div class="row"><div class="border"><div class="col-sm-3"><p>Add URL</p></div><div class="col-sm-3 inpur_box"><input type="text" class="form-control"  placeholder="URL"></div><div class="col-sm-3 text-center"><input type="text" class="form-control"  placeholder="Description"></div></div></div>';
	 a++;
	 }
	 
 }
 


 function removeRect(){
     var main = document.getElementById("internships");
	a--;
     if (main.children.length > 0) {           
         main.lastChild.remove();                                                            }
 }
 
    
</script>
        
        <script>

 
	 $(document).ready(function() {
	    var x=1;  
    $("#add-panel").click(function() {
		
		var wrapper=$('#internships1');
	  var data1=$('#internshipbox1').html();
	    
		if(x<11)
		{
       var domElement = $(' <div class="main_box section_one panel panel-primary"><div class="panel-heading">Role'+x+'</div>'+data1+'</div></div> ');
		
		
        $(wrapper).append(domElement);
		x++;
		}
				
    });
	
	 $("#remove-panel").click(function() {
		
		 var main = document.getElementById("internships1");
	a--;
     if (main.children.length > 0) {           
         main.lastChild.remove();  
		 }
				
    });
	
	
	
    
});

	 function csd()
	 {
	 	alert("csd");
	 	document.getElementById('csd').action="addToTable1";
	 	document.getElementById('csd').method="post";
	 	document.getElementById('csd').submit();
	 }    
	 
	 function csd1()
	 {
		 var id=document.getElementById('installment').checked;
		 //alert(id);
	 	if(id==true)
	 		{
	 		document.getElementById('installment').value=1;
	 		$('#installmentdetails').show();
	 		}
	 	else
	 		{
	 		document.getElementById('installment').value=0;
	 		document.getElementById('installmentdetails').style="display:none";
	 		} 
	 	alert(document.getElementById('installment').value);
	 } 
	 
	 function csd2()
	 {
		 var id=document.getElementById('taxno').checked;
		 //alert(id);
	 	if(id==true)
	 		{
	 		$('#taxdiv').show();
	 		document.getElementById('taxyes').checked=false;
	 		}
	 	else
	 		{
	 		document.getElementById('taxdiv').style="display:none";
	 		} 
	 }  
	 
	 function csd3()
	 {
		 var id=document.getElementById('taxyes').checked; 
		 if(id==true)
	 		{
			 document.getElementById('taxdiv').style="display:none";
	 		document.getElementById('taxno').checked=false;
	 		}
	 }
	 
	 function getModel(vehicleId)
	 {
		 var id = vehicleId.value;
			var xhttp = new XMLHttpRequest();
			xhttp.onreadystatechange = function() {
				if (this.readyState == 4 && this.status == 200) {
					var i;
					var obj = JSON.parse(this.responseText);
					var rolelist = '';
					for (i = 0; i < obj.length; i++) {

						rolelist += "<option value="+obj[i].modelId+ ">"
								+ obj[i].modelName + "</option>";
					}
					document.getElementById("model").innerHTML = "<option value='0'>Select Model</option>"
							+ rolelist;
				}
			};
			var action = "getModel?vehicleId=" + id;
			xhttp.open("POST", action, true);
			xhttp.send();
	 }
	 
	 function csd11()
	 {
		 var id="${csd13}";
		 var id1="${csd14}";
		 if( document.getElementById('otherstate').length>0)
			 {
			 document.getElementById('taxno').checked=true;
			 }
			var k;
		 document.getElementById('typeofvehical').value= id;
			var xhttp = new XMLHttpRequest();
			xhttp.onreadystatechange = function() {
				if (this.readyState == 4 && this.status == 200) {
					var i;
				
					var obj = JSON.parse(this.responseText);
					var rolelist = '';
					rolelist += "<option value='0'>Select Model</option>";
					for (i = 0; i < obj.length; i++) {
                        if(id1==obj[i].modelId)
                        	{
                        	k=obj[i].modelName;
                        	}
                        else
                        	{
						rolelist += "<option value="+obj[i].modelId+ ">"
								+ obj[i].modelName + "</option>";
                        	}
					}
					document.getElementById("model").innerHTML = "<option value="+id1+">"+k+"</option>"
							+ rolelist;
				}
			};
			var action = "getModel?vehicleId=" + id;
			xhttp.open("POST", action, true);
			xhttp.send();
			document.getElementById('model').value=id1;
		 var id=document.getElementById('inn').value;
	 	if(id.length>0)
	 	{
	 		document.getElementById('installment').checked=true;
	 		$('#installmentdetails').show();
	 	}
	 	var id6=document.getElementById('otherstate').value;
	 	if(id6!='')
	 		{
	 		$('#taxdiv').show();
	 		document.getElementById('taxyes').checked=false;
	 		document.getElementById('taxno').checked=true;
	 		}
	 	else
	 		{
	 		document.getElementById('taxdiv').style="display:none";
	 		document.getElementById('taxyes').checked=true;
	 		document.getElementById('taxno').checked=false;
	 		}
	 } 
	 
	
	 
       </script> 

  
        <script>
        
        
        $('.date-picker').datepicker({
					autoclose: true,
					todayHighlight: true
				})
				//show datepicker when clicking on the icon
				.next().on(ace.click_event, function(){
					$(this).prev().focus();
				});
        </script>
</body>
</html>
 