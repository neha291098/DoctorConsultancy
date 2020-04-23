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
</style>
</head>
<body>

<!-- adding index -->
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
							<td>${presBasic.patientId}</td>
						</tr>
						<tr>
							<th>Name:</th>
							<Td>${presBasic.name}</Td>
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
							<td>${presBasic.email}</td>
						</tr>
						<tr>
							<th>Ph. Number:</th>
							<td>${presBasic.phoneNum}</td>
						</tr>

			</table>
        </div>
      </div>
    </div>
  <div class="w3-col l3 m6 w3-margin-bottom" style="width:70%;height:50%">
      <div class="w3-card">
        
        <div class="w3-container">
        
        <form:form id="display" action="./savePres" method="post" modelAttribute="pres">

		<div style="display:none">
						<input type="number" name="patientId" value="${pres.patientId}">
						<input type="number" name="doctorid" value="${pres.doctorid}">
						<input type="text" name="doctorname" value="${pres.doctorname}">
						<input type="text" name="patientname" value="${pres.patientname}">
						<input type="text" name="doctoraddress" value="${pres.doctoraddress}">
						<input type="text" name="specialist" value="${pres.specialist}">
						<input type="number" name="appid" value="${pres.appid}">
						<input type="text" name="selectedDate" value="${pres.selectedDate}">
						<input type="text" name="date1" value="${pres.date1}">
						<input type="text" name="date2" value="${pres.date2}">
						<input type="text" name="status" value="${pres.status}">
						<input type="text" name="payment" value="${pres.payment}">
		</div>
		
          <center><h3 style="color: cadetblue">${pres.doctorname}</h3></center>
          <center><p class="w3-opacity" style="margin-bottom:0px!important">${pres.specialist}</p></center>
          <center><p class="w3-opacity">${pres.doctoraddress}</p></center>
          <table class="table" style="width:25%!important">
						<tr>
							<th style="padding:0!important">Appt. Id:</th>
							<td style="padding:0!important">${pres.appid}</td>
						</tr>
					
						<tr>
							<th style="padding:0!important">Appt. Date:</th>
							<td style="padding:0!important">${pres.selectedDate}</Td>
						</tr>
		</table>
          
          
          <textarea name="prescription" rows="6" cols="100" value="" placeholder="Enter prescription">${pres.prescription}</textarea>
          
          <p><button class="w3-button w3-light-grey w3-block">Save Prescription</button></p>
          

					 
						
			</form:form>
          
        </div>
      </div>
    </div>
  
  
  
  </div>
</div>


   
 
    <footer class="w3-row-padding w3-padding-32" style="background-color:black">
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
      </ul> -->
    </div>

    <div class="w3-third w3-serif" style="color:white">
      <h3>Contact Us</h3>
      <a href="">Ph no: 7985855652</a>
      <br>
      <a href="">Ph no: 9450216745</a>
     
    </div>
  </footer>
 
<!-- end added index -->

<!-- <table class="table table-striped table-bordered">
						<tr>
							<th><center>Id</center></th>
							<th><center>Name</center></th>
							<th><center>Email</center></th>
							<th><center>Ph. Number</center></th>
						</tr>

						<tr bgcolor="#b3b3ff">
								<td>${presBasic.patientId}</td>
								<Td>${presBasic.name}</Td>
								<td>${presBasic.email}</td>
								
								<td>${presBasic.phoneNum}</td>
	
						</tr>

						

					</table>
<form:form id="display" action="./savePres" method="post" modelAttribute="pres">
 <div style="display:none">
					
						<input type="number" name="patientId" value="${pres.patientId}">
						<input type="number" name="doctorid" value="${pres.doctorid}">
						<input type="text" name="doctorname" value="${pres.doctorname}">
						<input type="text" name="patientname" value="${pres.patientname}">
						<input type="text" name="doctoraddress" value="${pres.doctoraddress}">
						<input type="text" name="specialist" value="${pres.specialist}">
						<input type="number" name="appid" value="${pres.appid}">
						<input type="text" name="selectedDate" value="${pres.selectedDate}">
						<input type="text" name="date1" value="${pres.date1}">
						<input type="text" name="date2" value="${pres.date2}">
						<input type="text" name="status" value="${pres.status}">
						<input type="text" name="payment" value="${pres.payment}">
						</div>
						
						<input type="text" name="prescription" value="${pres.prescription}" placeholder="Enter prescription"/>
						<input class="buttom" name="submit" id="submit" tabindex="10"  type="submit"> 
</form:form>-->
</body>
</html>