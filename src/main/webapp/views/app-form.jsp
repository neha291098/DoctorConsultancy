<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Appointment</title>
<link href="<c:url value="/resources/static/style/register.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/static/style/bootstrap.min.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/static/style/index.css" />"
 rel="stylesheet">
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body background="<c:url value="/resources/static/images/slider3.jpg"/>"/>
<div class="fixed-header">
        <div class="container">
            <nav>
               <a href="#">Doctor</a>
               
             
               <a href="#">Diagnostics</a>
                <a href="#">Services</a>
                </nav>
                </div>
             </div >
<div  class="form">
<h3>Book Appointment</h3>
<form:form id="bookAppointment" action="appAction" method="post" modelAttribute="appForm">

<div style="display:none">
<input type="text" name="patientname" value=${patient.name}>
<input type="text" name="patientId" value=${patient.patientId}>
<input type="text" name="status" value="Applied"/>
<input type="text" name="selectedDate" value="Not Confirmed"/>
<input type="text" name="payment" value="Pending"/>
<input type="text" name="prescription" value=""/></div>

<label for="birthday">Birthday:</label>
<input type="date" id="dob" name="dob" tabindex="1">

<p class="contact"><label for="symptom">Symptoms</label></p>
<input id="symptom" name="symptom" placeholder="Symptoms" tabindex="3" type="text">

<p class="contact"><label for="gender">Specialization</label></p>
<select class="select-style gender" id="specialist" name=specialist tabindex="5" onkeydown="fetchDoctors()">

            <option value="select">Select Your specialist</option>
            <option value="Dentist">Dentist</option>
           <option value="Gynacologist">Gynacologist</option>
           <option value="Pediatrician">Pediatrician</option>
</select><br><br>

<a href="javascript:fetchDoctors()">Show Doctors</a>
 
<!-- <input id="spacialization" name="specialist" value="Dentist" tabindex="4" readonly="readonly"> -->
     
<div id="doctorType" style="display:none">            

</div>


<p class="contact"><label for="street">Address</label></p>
<input id="street" name="doctoraddress" placeholder="Street Address" tabindex="6" type="text">

<p class="contact"><label for="pincode">Pin Code</label></p>
<input id="pincode" name="pincode" placeholder="Enter Pin Code" tabindex="7" type="text">

<p class="contact"><label for="pincode">Date 1</label></p>
<input type="date" id="dob" name="date1" tabindex="8">

<p class="contact"><label for="pincode">Date 2</label></p>
<input type="date" id="dob" name="date2" tabindex="9">
<br>
<input class="buttom" name="submit" id="submit" tabindex="10" value="Book Appointment" type="submit"> 
</form:form>
</div>
<script>
function fetchDoctors() {
  var x = document.getElementById("specialist").value;
  //x.value = x.value.toUpperCase();
  if(x=="Dentist"){
	  document.getElementById("doctorType").innerHTML='<p class="contact"><label for="gender">Doctor</label></p>'+
	  '<select class="select-style gender" id="doctorid" name="doctorid" tabindex="5">'+
	  '<option value="select">Select Your Doctor</option>'+
      '<option value="1">Dr. Srivatsa</option>'+
	  '<option value="3">Dr. Aradhna(Dentist)</option>'+
	  '</select><br><br>';
	  document.getElementById("doctorType").style.display="block";
  }
  else if(x=="Gynacologist"){
	  document.getElementById("doctorType").style.display="block";
	  document.getElementById("doctorType").innerHTML='<p class="contact"><label for="gender">Doctor</label></p>'+
	  '<select class="select-style gender" id="doctorid" name="doctorid" tabindex="5">'+
      '<option value="select">Select Your Doctor</option>'+
      '<option value="1">Dr. Srivatsa</option>'+
	  '<option value="3">Dr. Aradhna(gyna)</option>'+
      '</select><br><br>';
  }
  else if(x=="Pediatrician"){
	  document.getElementById("doctorType").style.display="block";
	  document.getElementById("doctorType").innerHTML='<p class="contact"><label for="gender">Doctor</label></p>'+
	  '<select class="select-style gender" id="doctorid" name="doctorid" tabindex="5">'+
	  '<option value="select">Select Your Doctor</option>'+
      '<option value="1">Dr. Srivatsa</option>'+
      '<option value="3">Dr. Aradhna(pedia)</option>'+
      '</select><br><br>';
  }
}
</script>

</body>
</html>