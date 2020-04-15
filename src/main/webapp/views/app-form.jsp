<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<input type="text" name="patientname" value=${sessionScope.userDetails.name}>
<input type="text" name="id" value=${sessionScope.userDetails.id}></div>

<div class="form-group">
<label for="birthday">Birthdate</label>
<div class="col-md-9">
<input type="date" id="dob" name="dob" tabindex="4">
</div>
</div>



<div class="form-group">
<label for="street">Address</label>
<div class="col-md-9">
<input id="street" name="doctoraddress" placeholder="Street Address" tabindex="7" type="text">
</div>
</div>

<div class="form-group">
<label for="street">Doctor</label>
<div class="col-md-9">
<select id="d_id" name="d_id">
    <option value="1">Srivatsa</option>
    <option value="3">Aradhna</option>

  </select>
</div>
</div>

<div class="form-group">
<label for="birthday">Date 1</label>
<div class="col-md-9">
<input type="date" id="dob" name="date1" tabindex="4">
</div>
</div>

<div class="form-group">
<label for="birthday">Date2</label>
<div class="col-md-9">
<input type="date" id="dob" name="date2" tabindex="4">
</div>
</div>

<div class="form-group">
<div class="col-md-offset-3 col-md-9">
<input type="submit" value="Book appointment" />
</div>
</form:form>
</div>
</body>
</body>
</html>