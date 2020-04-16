<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Medicure</title>
<link href="<c:url value="/resources/static/style/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/static/style/index.css" />"
 rel="stylesheet">
 <link href="<c:url value="/resources/static/style/patient-form.css" />"
 rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/static/js/app.js" />"></script>
</head>
<body class="bgbody" background="<c:url value="/resources/static/images/slider3.jpg"/>"/>
<div class="fixed-header">
        <div class="container">
            <nav>
               <a href="#">Doctor</a>
                
                <a href="#">Book Appointment</a>
               <a href="#">Diagnostics</a>
                <a href="#">Services</a>
                </nav>
                </div>
             </div >
             
<div class="container" style="margin-top:150px!important;background-color:white;width: 457px;margin:auto;padding-left:50px;padding-top:50px">
<div class="col-md-offset-2 col-md-7">
<div class="panel panel-info">
<div class="panel-heading">
</div>
<div class="panel-body">

 <form:form id="loginform" action="loginUs" method="post" modelAttribute="user">
 <h4>Login</h4>



<div class="form-group"  style="padding:20px">
<div class="fa fa-envelope icon">
<label for="email" class="col-md-3 control-label" style="color:white">Email</label>
<div class="col-md-9">
<input  name="email" type="text" id="email" cssClass="form-control" style="width:500px;"/>
</div>
</div>
</div>
<div class="form-group"  style="padding:20px">
<div class="fa fa-key icon">
<label for="password" class="col-md-3 control-label" style="color:white">Password</label>
<div class="col-md-9">
<input  name="password" type="password" id="password" cssClass="form-control" style="width:500px;"/>
</div>
</div>
</div>



<div class="form-group">
<!-- Button -->
<div class="col-md-offset-3 col-md-9">
<button cssClass="btn btn-primary" style="align:center;" onclick="myalert()">Login</button>
</div>
</div>
 
 
  
  </form:form>
  </div>
  </div>
  </div>
  </div>
  <div style="color: blue">${error}</div>
</body>
</html>