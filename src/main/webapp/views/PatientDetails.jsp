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
								<td>${particularPatient.patientId}</td>
								<Td>${particularPatient.name}</Td>
								<td>${particularPatient.email}</td>
								
								<td>${particularPatient.phoneNum}</td>
	
						</tr>

						

					</table>
					<!-- action="savePres" cssClass="form-horizontal"
			method="post" modelAttribute="pres" onsubmit="return validate()"-->
					<table class="table table-striped table-bordered">
					
					
					
						<tr>
							<th><center>AId</center></th>
							<th><center>Selected Date</center></th>
							<th><center>Status</center></th>

							<th><center>Payment</center></th>
							<th><center>Prescription</center></th>
						</tr>

						<!-- loop over and print our customers -->
						<c:forEach var="tempApp" items="${particularPatientApp}">
						
						
						<!-- <div style="display:none">
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
							
							<td>${tempApp.selectedDate}
							
							
							<!-- 
							<center><button><a href="${acceptedDate1}">${tempApp.date1}</a></button></center>
							<center><button><a href="${acceptedDate2}">${tempApp.date2}</a></button></center>
							 -->
							 
							 
							
							</td>
							
							
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

						</c:forEach>

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
							
							</script>					
					
</body>
</html>