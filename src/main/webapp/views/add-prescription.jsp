<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table class="table table-striped table-bordered">
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
</form:form>
</body>
</html>