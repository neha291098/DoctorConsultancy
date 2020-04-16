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
	<link href="<c:url value="/resources/static/style/index.css" />"
 rel="stylesheet">
 <link href="<c:url value="/resources/static/style/appointment-list.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
<style>
button{
	    background-color: #dae0e5!important;
	    padding: 5px 5px!important;
width: 70%!important;
color:black;

}
.accept{
background-color:green!important;
color:white!important;
}
.reject{
background-color:red!important;
color:white!important;
}
</style>
</head>
<body>
 <div class="fixed-header">
        <div class="container">
            <nav>
               <a href="#">Doctor</a>
                
                <a href="#">Book Appointment</a>
               <a href="#">Diagnostics</a>
                <a href="#">Services</a>
           

          
                
            </nav>
        </div>
    </div>
	<div class="container">
<img src="<c:url value="/resources/static/images/logo.png"/>"/>
			
		
			<div class="panel panel-info">
				<div class="panel-heading">
					<center><div class="panel-title" style="font-size:20px;margin-left:340px">Appointment Details</div></center><br><br>
				</div>
				<div class="panel-body">
					<table class="table table-striped table-bordered">
						<tr>
							<th><center>Appointment Id</center></th>
							<th><center>Doctor Id</center></th>
							<th><center>Doctor Name</center></th>
							<th><center>Specialist</center></th>
							<th><center>Status</center></th>
							<th><center>Selected Date</center></th>
							<th><center>Action</center></th>
						</tr>

						<!-- loop over and print our customers -->
						<c:forEach var="tempBookAppointment" items="${appList}">

							<!-- construct an "update" link with customer id -->
							<c:url var="updateLink" value="/customer/updateForm">
								<c:param name="patientId" value="${tempBookAppointment.patientId}" />
							</c:url>
							<c:url var="cancelLink" value="/loginUs/cancelAppointment">
								
								<c:param name="app_id" value="${tempBookAppointment.app_id}" />
							</c:url>

					

							<tr bgcolor="#b3b3ff">
								<td>${tempBookAppointment.app_id}</td>
								<Td>${tempBookAppointment.doctorid}</Td>
								<td>${tempBookAppointment.doctorname}</td>
								
	<td>${tempBookAppointment.specialist}</td>
	<!--  <td>${tempBookAppointment.status}</td>-->
	
	<td>
	<c:choose>
    						<c:when test="${tempBookAppointment.status == 'Rejected'}">
							<center><button class="reject" disabled>${tempBookAppointment.status}</button></center>
							</c:when>
							
							<c:when test="${tempBookAppointment.status == 'Accepted'}">
							<center><button class="accept" disabled>${tempBookAppointment.status}</button></center>
							</c:when>
							
							<c:otherwise>
							
							<center><button>${tempBookAppointment.status}</button></center>
							
							</c:otherwise>
							</c:choose>
	</td>
	
	<!--  <td>${tempBookAppointment.selectedDate}</td>-->
	
	<td><c:choose>
    						<c:when test="${tempBookAppointment.selectedDate == 'Not Confirmed'}">
							<center>${tempBookAppointment.selectedDate}</center>
							</c:when>
							
							<c:otherwise>
							
							<center><button class="accept">${tempBookAppointment.selectedDate}</button></center>
							
							</c:otherwise>
							
							</c:choose>
							</td>
	<td><a href="${cancelLink}">Cancel</a></td>						

							</tr>

						</c:forEach>

					</table>

				</div>
			</div>
			</div>

</body>

</html>
<!-- https://github.com/tanya876/Medicure -->