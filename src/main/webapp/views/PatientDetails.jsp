<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="<c:url value="/resources/static/style/bootstrap.min.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/static/style/index.css" />"
rel="stylesheet">
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-bar-block .w3-bar-item {padding:20px}
body, html {
  height: 100%;
  line-height: 1.8;
}

/* Full height image header */
.bgimg-1 {
  background-position: center;
  background-image: url("/resources/static/images/slider3.jpg");
  min-height: 106%;
  margin:0px 0px;
  padding:0px 20px;
  z-index:-1;
}

.w3-bar .w3-button {
  padding: 16px;
}
nav a{
    padding: 7px 15px!important;
    }
.table td, .table th {
border-top:0px!important;
}
.w3-container{
    padding: 3.01em 90px!important;
}
button{
	    background-color: #dae0e5!important;
	    padding: 5px 0px!important;
width: 100%!important;
color:black;
margin-top:5px;
margin-botton:5px;
}
</style>
</head>
<body>
<!-- added index start -->
<div class="fixed-header">
        <div class="container">
            <nav>
             <img src="<c:url value="/resources/static/images/logo-edited.png"/>"/>
               <a href="">Home</a>
                <a href="appointment">Book Appointment</a>
                 <a href="#">Doctors</a>
           
<a href="list">View Records</a>
               <a href="loginUs/logout" style="float:right">Logout! <%out.print(request.getSession().getAttribute("user")); %></a>
            </nav>
        </div>
    </div>
   
 
 
 


<!-- Team Section -->
<div class="w3-container"  id="team"><br>
<!--<span><button onclick="goBack()" style="width:8%!important;text-align:left">Go Back</button></span>-->
  <h3 class="w3-center">APPOINTMENT DETAILS</h3>
  <br>
  <p class="w3-center w3-large"></p>
  <div class="w3-row-padding w3-grayscale" style="">
    <div class="w3-col l3 m6 w3-margin-bottom" style="width:30%;height:50%">
      <div class="w3-card">
        
        <div class="w3-container">
        <center><h3 style="color: cadetblue">Basic Details</h3></center><br>
          <table class="table">
						<tr>
							<th>Id:</th>
							<td>${particularPatient.patientId}</td>
						</tr>
						<tr>
							<th>Name:</th>
							<Td>${particularPatient.name}</Td>
						</tr>
						<tr>
							<th>Gender:</th>
							<Td>Female</Td>
						</tr>
						<tr>
							<th>DOB:</th>
							<Td>29-10-1998</Td>
						</tr>
						<tr>
							<th>Blood Group:</th>
							<Td>A+</Td>
						</tr>
						<tr>
							<th>Email:</th>
							<td>${particularPatient.email}</td>
						</tr>
						<tr>
							<th>Ph. Number:</th>
							<td>${particularPatient.phoneNum}</td>
						</tr>

			</table>
        </div>
      </div>
    </div>
  <div class="w3-col l3 m6 w3-margin-bottom" style="width:70%;height:50%">
      <div class="w3-card">
        
        <div class="w3-container">
        <table class="table table-striped table-bordered">
					
					
					
						<tr>
							<th><center>AId</center></th>
							<th><center>Appt. Date</center></th>
							<th><center>Status</center></th>

							<th><center>Payment</center></th>
							<th><center>Prescription</center></th>
						</tr>
						
						<c:forEach var="tempApp" items="${particularPatientApp}">
        				<c:url var="showPresPage" value="/loginUs/displayPresFromHistory">
								<c:param name="app_id" value="${tempApp.appid}" />
						</c:url>
							<tr bgcolor="">
								<td><center>${tempApp.appid}</center></td>
								
						
							
							<!-- <td>${tempApp.selectedDate}</td>-->
							
							<td><center>${tempApp.selectedDate}</center>
							</td>
							
							
							<td><center>${tempApp.status}</center>
							</td>
							
							<td><center>${tempApp.payment}</center></td>
							
							<td>
							<c:choose>
  							<c:when test="${tempApp.prescription == ''}">
   							<center><button class="accept"><a href="${showPresPage}">Add</a></button></center>
  							</c:when>
  							
  							<c:otherwise>
    						<center><a href="${showPresPage}">View</a></center>
							</c:otherwise>
							</c:choose>
							</td>
							
							</tr>

						</c:forEach>
          
         
          
        </div>
      </div>
    </div>
  
  
  
  </div>
</div>


   
 
    <!-- <footer class="w3-row-padding w3-padding-32" style="background-color:black">
    <div class="w3-third" style="color:white">
      <h3>MEDICURE</h3>
      <a href="">Book appointment</a><br>
      <a href="">About Us</a><br>
       <a href="">Contact Us</a>
    </div>
 
    <div class="w3-third" style="color:white">
      <h3>SOCIAL</h3>
      <a href="">Facebook</a><br>
      <a href="">Twitter</a><br>
       <a href="">Instagram</a>
      <!-- <ul class="w3-ul w3-hoverable">
        <li class="w3-padding-0">
          <!-- <img src="/w3images/workshop.jpg" class="w3-left w3-margin-right" style="width:50px"> -->
          <!-- <span class="w3-large" style="color:white">Twitter</span><br>
         
        </li>
        <li class="w3-padding-0">
          <!--<img src="/w3images/gondol.jpg" class="w3-left w3-margin-right" style="width:50px"> -->
          <!-- <span class="w3-large" style="color:white">Facebook</span><br>
       
        </li>
      </ul>
    </div>

    <div class="w3-third w3-serif" style="color:white">
      <h3>Contact Us</h3>
      <a href="">Ph no: 7985855652</a>
      <br>
      <a href="">Ph no: 9450216745</a>
     
    </div>
  </footer>


<!-- added index end -->
<!--<table class="table table-striped table-bordered">
						<tr>
							<th><center>Id</center></th>
							<th><center>Name</center></th>
							<th><center>Email</center></th>
							<th><center>Ph. Number</center></th>
						</tr>

						<tr bgcolor="#b3b3ff">
								<td>${particularPatient.patientId}</td>
								<Td>${particularPatient.name}</Td>
								<td>${particularPatient.email}</td>
								
								<td>${particularPatient.phoneNum}</td>
	
						</tr>

						

					</table>
					<!-- action="savePres" cssClass="form-horizontal"
			method="post" modelAttribute="pres" onsubmit="return validate()"-->
					<!-- <table class="table table-striped table-bordered">
					
					
					
						<tr>
							<th><center>AId</center></th>
							<th><center>Selected Date</center></th>
							<th><center>Status</center></th>

							<th><center>Payment</center></th>
							<th><center>Prescription</center></th>
						</tr>

						<!-- loop over and print our customers -->
						<!-- <c:forEach var="tempApp" items="${particularPatientApp}">
						
						
						<div style="display:none">
						<input type="text" name="date1" value="77">
						<input type="text" name="date2" value="${tempApp.date2}">
						<input type="number" name="patientId" value="${tempApp.patientId}">
						<input type="number" name="doctorid" value="${tempApp.doctorid}">
						<input type="text" name="doctorname" value="${tempApp.doctorname}">
						<input type="text" name="patientname" value="${tempApp.patientname}">
						<input type="text" name="doctoraddress" value="${tempApp.doctoraddress}">
						<input type="text" name="specialist" value="${tempApp.specialist}">
						</div>-->

							<!-- construct an "update" link with doctor id -->
							<!--<c:url var="acceptedLink" value="/loginUs/accepted">
								<c:param name="app_id" value="${tempApp.appid}" />
							</c:url>
							<c:url var="rejectedLink" value="/loginUs/rejected">
								<c:param name="app_id" value="${tempApp.appid}" />
							</c:url>
							
							<c:url var="acceptedDate1" value="/loginUs/acceptedDate">
								<c:param name="app_id" value="${tempApp.appid}" />
								<c:param name="finaldate" value="${tempApp.date1}" />
							</c:url>
	
							<c:url var="acceptedDate2" value="/loginUs/acceptedDate">
								<c:param name="app_id" value="${tempApp.appid}" />
								<c:param name="finaldate" value="${tempApp.date2}" />
							</c:url>
							
							<c:url var="savePrescription" value="/loginUs/savePres">
								<c:param name="app_id" value="${tempApp.appid}" />
								<c:param name="prescription"  value="${prescription}" />
							</c:url>
							
							<c:url var="showPresPage" value="/loginUs/displayPresFromHistory">
								<c:param name="app_id" value="${tempApp.appid}" />
							</c:url>
							
							<tr bgcolor="#b3b3ff">
								<td>${tempApp.appid}</td>
								
						
							
							<!-- <td>${tempApp.selectedDate}</td>-->
							
							<!--<td>${tempApp.selectedDate}
							
							
							<!-- 
							<center><button><a href="${acceptedDate1}">${tempApp.date1}</a></button></center>
							<center><button><a href="${acceptedDate2}">${tempApp.date2}</a></button></center>
							 -->
							 
							 
							
							<!--</td>
							
							
							<td>${tempApp.status}
							</td>
							
							<td>${tempApp.payment}</td>
							
							<td>
							<c:choose>
  							<c:when test="${tempApp.prescription == ''}">
   							<center><button class="accept"><a href="${showPresPage}">Add Prescription</a></button></center>
  							</c:when>
  							
  							<c:otherwise>
    						<center><button><a href="${showPresPage}">View Prescription</a></button></center>
							</c:otherwise>
							</c:choose>
							</td>
							
							
							<!--  <td><center><button onclick="showDiv()">Add Prescription</button></center></td>
							<div id="pres" style="display:none"><input type="textbox" id="presvalue" name="prescription"/>
							<!--<button type="button" name="submit" id="submit" tabindex="10" value="Go" onclick="getInputValue();"/>-->
							<!-- <c:set var="prescription" value="javascript:getVal()"></c:set>-->
							
						
							<!--<center><button> <a href="${savePrescription}">Save</a></button></center></div>
							<!-- </div>-->
							</tr>

						<!--</c:forEach>

					</table>
					
							<script>
							function showDiv(){
								document.getElementById("pres").style.display="block";
							}
							
							 function getVal(){
								 
							      return document.getElementById('presvalue').value; //s1 is the id of html button
							   }
							function getInputValue(){
								var prescription = document.getElementById("presvalue").value;
							}
							
							</script>	-->				
<script>
function goBack() {
  window.history.back();
}
</script>					
</body>
</html>