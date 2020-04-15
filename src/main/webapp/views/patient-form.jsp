<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Doctor Consultancy</title>
<link href="<c:url value="/resources/static/style/bootstrap.min.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/static/style/index.css" />"
 rel="stylesheet">
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>

</head>
<body  background="<c:url value="/resources/static/images/slider3.jpg"/>"/>

<div class="container">
<div class="col-md-offset-2 col-md-7">
<div class="panel panel-info">

<div class="panel-body">
<form:form action="savePatient" cssClass="form-horizontal"
method="post" modelAttribute="patient">

<!-- need to associate this data with patient id -->
<form:hidden path="id" />

<div class="form-group">
<h1>Sign Up</h1><br><br>
<label for="Name" class="col-md-3 control-label">Patient
Name</label>
<div class="col-md-9">
<form:input path="name" cssClass="form-control"/>

</div>
</div>
<div class="form-group">
<label for="password" class="col-md-3 control-label">Password</label>
<div class="col-md-9">
<form:password path="password" cssClass="form-control" />

</div>
</div>

<div class="form-group">
<label for="phonenum" class="col-md-3 control-label">Phone Number</label>
<div class="col-md-9">
<form:input path="phonenum" cssClass="form-control"/>

</div>
</div>

<div class="form-group">
<label for="email" class="col-md-3 control-label">Email</label>
<div class="col-md-9">
<form:input path="email" cssClass="form-control" />

</div>
</div>

<div class="form-group">
<!-- Button -->
<div class="col-md-offset-3 col-md-9">
<form:button cssClass="btn btn-primary">Submit</form:button>
</div>
</div>

</form:form>
</div>
</div>
</div>
</div>
</body>
</html>