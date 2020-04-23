<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>online consultancy</title>
<link href="<c:url value="/resources/static/style/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/static/style/navbar.css" />"
rel="stylesheet">
 
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
 <link href="<c:url value="/resources/static/style/appointment-list.css" />"
	rel="stylesheet">
	<link href="<c:url value="/resources/static/style/nav.css" />"
rel="stylesheet">
<style>
	table{
  width:100%!important;
}

button{
	    background-color: #dae0e5!important;
	    padding: 5px 5px!important;
width: 100%!important;
color:black;
margin-top:5px;
margin-botton:5px;
}
.accept{
background-color:#CCCCFF!important;
}
.reject{
background-color:#FF9999!important;
}
img{
margin-left:0px!important;
margin-right:0px!important;}
body{
font-family: "Karma", sans-serif!important;
}
</style>
</head>
<body style="font-family:'Karma',sans-serif!important">
<!-- 	        
	            margin: 8px 38px!important; -->
	            
	            
<div class="fixed-header">
        <div class="container">
            <nav>
             <img src="<c:url value="/resources/static/images/logo-edited.png"/>"/>
               <a href="">Home</a>
                <a href="appointment">Book Appointment</a>
                 <a href="#">Doctors</a>
           
<a href="list">View Records</a>
               <a href="../loginUs/logout" style="float:right">Logout! <%out.print(request.getSession().getAttribute("user")); %></a>
               
                <!--  <a href="login" class="login">Login</a>-->
               
            </nav>
        </div>
    </div>
	         
	     
 
	<div class="container"><br><br><br><br><br>
 
			
		
			<div class="panel panel-info">
				<div class="panel-heading">
					<center><div class="panel-title" style="font-size:30px;margin-left:340px">Appointment Details</div></center><br><br>
				</div>
				<div class="panel-body">
				<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <strong style="font-size:30px;color:green;">MEDICURE</strong>
  <br><br>
  <a href="loginUs/checkAppointment">Check Appointment</a>
  <br><br>
  
  <a href="#">Cancel Appointment</a>
  <br><br>
  
</div>      
					<table class="table table-striped table-bordered">
						<tr>
							<th><center>Id</center></th>
							<th><center>PId</center></th>
							<th><center>Patient Name</center></th>
							<th><center>Choose Date</center></th>
							
						
							<th><center>Update Status</center></th>
							<th><center>Payment</center></th>
							<th><center>Prescription</center></th>
						</tr>

						<!-- loop over and print our customers -->
						<c:forEach var="tempApp" items="${checkList}">

							<!-- construct an "update" link with doctor id -->
							<c:url var="acceptedLink" value="/loginUs/accepted">
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
							<c:url var="showPresPage" value="/loginUs/displayPresFromHistory">
								<c:param name="app_id" value="${tempApp.appid}" />
							</c:url>
							
							<tr bgcolor="">
								<td><center>${tempApp.appid}</center></td>
								<td><center>${tempApp.patientId}</center></td>
								<td><center>${tempApp.patientname}</center></td>
								
						
							
							<!-- <td>${tempApp.selectedDate}</td>-->
							
							<td>
							<c:choose>
  							<c:when test="${tempApp.selectedDate eq tempApp.date1}">
   							<center><button class="accept">${tempApp.date1}</button></center>
  							</c:when>
  							
  							<c:when test="${tempApp.selectedDate eq tempApp.date2}">
    						<center><button  class="accept">${tempApp.date2}</button></center>
  							</c:when>
  							
  							<c:otherwise>
  							
  							<c:choose>
    						<c:when test="${tempApp.status == 'Rejected'}">
							<center><button disabled>${tempApp.date1}</button></center>
							<center><button disabled>${tempApp.date2}</button></center>
							</c:when>
							
							<c:otherwise>
							
							<center><button><a href="${acceptedDate1}">${tempApp.date1}</a></button></center>
							<center><button><a href="${acceptedDate2}">${tempApp.date2}</a></button></center>
							
							</c:otherwise>
							</c:choose>
							</c:otherwise>
							</c:choose>
							</td>
							
							
							<td>
							<c:choose>
  							<c:when test="${tempApp.status == 'Accepted'}">
   							<center><button class="accept">Accepted</button></center>
  							</c:when>
  							
  							<c:when test="${tempApp.status == 'Rejected'}">
    						<center><button  class="reject">Rejected</button></center>
  							</c:when>
  							<c:otherwise>
    					
							<center><button> <a href="${acceptedLink}">Accept</a></button></center>
							<center><button><a href="${rejectedLink}">Reject</a></button></center>
							</c:otherwise>
							</c:choose>
							</td>
							
							<td><center>${tempApp.payment}</center></td>
								<td>
								<c:choose>
  							<c:when test="${tempApp.prescription == ''}">
   							<center>Not available</center>
  							</c:when>
  							
  							<c:otherwise>
    						<center><button><a href="${showPresPage}">View</a></button></center>
							</c:otherwise>
							</c:choose>
								</td>
							
							
							</tr>

						</c:forEach>

					</table>

				</div>
			</div>
		</div>
   <footer class="w3-row-padding w3-padding-32" style="background-color:black;margin-top: 50px;">
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
  <script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}
function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>
</body>

</html>