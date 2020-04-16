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
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
</head>
<body background="<c:url value="/resources/static/images/bg5.jpg"/>"/>
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
					<div class="panel-title" style="font-size:20px">Patient Details</div>
				</div>
				<div class="panel-body">
					<table class="table table-striped table-bordered">
						<tr>
							<th>Name</th>
							<th>Password</th>
							<th>Email</th>
						
							<th>Action</th>
						</tr>

						<!-- loop over and print our customers -->
						<c:forEach var="tempPatient" items="${patient}">

							<!-- construct an "update" link with customer id -->
							<c:url var="updateLink" value="/customer/updateForm">
								<c:param name="patientId" value="${tempPatient.patientId}" />
							</c:url>

							<!-- construct an "delete" link with customer id -->
							<c:url var="deleteLink" value="/customer/delete">
								<c:param name="patientId" value="${tempPatient.patientId}" />
							</c:url>

							<tr bgcolor="green">
								<td>${tempPatient.name}</td>
								<td>${tempPatient.password}</td>
								<td>${tempPatient.email}</td>

								<td>
									<!-- display the update link --> <a href="${updateLink}">Update</a>
									| <a href="${deleteLink}"
									onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
								</td>

							</tr>

						</c:forEach>

					</table>

				</div>
			</div>
			
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title" style="font-size:20px">Doctor Details</div>
				</div>
				<div class="panel-body">
					<table class="table table-striped table-bordered">
						<tr>
							<th>Name</th>
							<th>Password</th>
							<th>Email</th>
						<th>Specialization</th>
							<th>Action</th>
						</tr>

						<!-- loop over and print our customers -->
						<c:forEach var="tempDoctor" items="${doctor}">

							<!-- construct an "update" link with customer id -->
							<c:url var="updateLink" value="/customer/updateForm">
								<c:param name="doctorId" value="${tempDoctor.doctorId}" />
							</c:url>

							<!-- construct an "delete" link with customer id -->
							<c:url var="deleteLink" value="/customer/delete">
								<c:param name="doctorId" value="${tempDoctor.doctorId}" />
							</c:url>
					

							<tr bgcolor="green">
								<td>${tempDoctor.name}</td>
								<td>${tempDoctor.password}</td>
								<td>${tempDoctor.email}</td>
								<td>${tempDoctor.specialization}</td>

								<td>
									<!-- display the update link --> <a href="${updateLink}">Update</a>
									| <a href="${deleteLink}"
									onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
								</td>

							</tr>

						</c:forEach>

					</table>

				</div>
			</div>
		</div>

</body>

</html>
