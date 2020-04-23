<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<body background="<c:url value="/resources/static/images/bg6.jpg"/>"/>
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

<form:form id="bookAppointment" action="saveAppointment" method="post" modelAttribute="book">

<p class="contact"><label for="name">Name</label></p>
<input id="name" name="name" placeholder="Enter your name" required tabindex="1" type="text">

<p class="contact"><label for="fname">Email</label></p>
<input id="email" name="email" placeholder="Enter Email" required tabindex="2" type="email">

<p class="contact"><label for="gender">Gender</label></p>
<select class="select-style gender" name="gender" tabindex="3">

            <option value="select">Select Your Gender</option>
            <option value="Female">Female</option>
            <option value="Male">Male</option>
            <option value="Transgender">Others</option>
            </select><br><br>

<label for="birthday">Birthday:</label>
<input type="date" id="dob" name="dob" tabindex="4">

<p class="contact"><label for="phone">Mobile phone</label></p>
<input id="phone" name="phoneNo" placeholder="phone number" required tabindex="5" type="tel"
pattern="[0-9]{10}"> 

<p class="contact"><label for="symptom">Symptoms</label></p>
<input id="symptom" name="symptom" placeholder="Symptoms" required tabindex="6" type="text">

<p class="street"><label for="street">Address</label></p>
<input id="street" name="street" placeholder="Street Address" required tabindex="7" type="text">

<p class="pincode"><label for="pincode">Pin Code</label></p>
<input id="pincode" name="pincode" placeholder="Enter Pin Code" required tabindex="8" type="text">
<br>
<input class="buttom" name="submit" id="submit" tabindex="9" value="Book Appointment" type="submit"> 
</form:form>
</div>
</body>
</html>