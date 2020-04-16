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
<link href="<c:url value="/resources/static/style/appointment-list.css" />"
	rel="stylesheet">
	<style>
	table{
    margin-left: 170px;
    margin-right: 130px;
}
img{
	margin-left:650px;
	margin-right:650px;
}
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
<body >
<!-- 	        
	            margin: 8px 38px!important; -->
 <div class="fixed-header">
        <div class="container">
            <nav>
               <a href="#">Doctor</a>
                
                <a href="#">Book Appointment</a>
               <a href="#">Diagnostics</a>
                <a href="#">Services</a>
                <a href="../loginUs/logout" style="float:right">Logout! <%out.print(request.getSession().getAttribute("user")); %></a>
           

          
                
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
							<th><center>Patient Id</center></th>
							<th><center>Patient Name</center></th>
							<th><center>Choose Date</center></th>
							
						
							<th><center>Update Status</center></th>
						</tr>

						<!-- loop over and print our customers -->
						<c:forEach var="tempApp" items="${checkList}">

							<!-- construct an "update" link with doctor id -->
							<c:url var="acceptedLink" value="/loginUs/accepted">
								<c:param name="app_id" value="${tempApp.app_id}" />
							</c:url>
							<c:url var="rejectedLink" value="/loginUs/rejected">
								<c:param name="app_id" value="${tempApp.app_id}" />
							</c:url>
							
							<c:url var="acceptedDate1" value="/loginUs/acceptedDate">
								<c:param name="app_id" value="${tempApp.app_id}" />
								<c:param name="finaldate" value="${tempApp.date1}" />
							</c:url>
							<c:url var="acceptedDate2" value="/loginUs/acceptedDate">
								<c:param name="app_id" value="${tempApp.app_id}" />
								<c:param name="finaldate" value="${tempApp.date2}" />
							</c:url>
							
							<tr bgcolor="#b3b3ff">
								<td>${tempApp.app_id}</td>
								<td>${tempApp.patientId}</td>
								<td>${tempApp.patientname}</td>
								
						
							
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
							
							</tr>

						</c:forEach>

					</table>

				</div>
			</div>
		</div>

</body>

</html>