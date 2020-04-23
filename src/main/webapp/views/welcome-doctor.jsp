<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="<c:url value="/resources/static/style/bootstrap.min.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/static/style/index.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/static/style/nav.css" />"
rel="stylesheet">
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>

<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>


 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Insert title here</title>
</head>

<body background="<c:url value="/resources/static/images/slider2.jpg"/>"/>
 <div class="fixed-header">
        <div class="container">
            <nav>
           
               <a href="#">Doctor</a>
                
              
               <a href="#">Diagnostics</a>
                <a href="#">Services</a>
                <a href="list">View Records</a>
<a href="loginUs/logout" style="float:right">Logout! <%out.print(request.getSession().getAttribute("user")); %></a>





             
                </nav>
                </div>
             </div>
           <div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <strong style="font-size:30px;color:green;">MEDICURE</strong>
  <br><br>
  <a href="loginUs/checkAppointment">Check Appointment</a>
  <br><br>
  
  <a href="#">Cancel Appointment</a>
  <br><br>
  
</div>



<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Choose any one</span>


<form:form id="displayDetails" action="loginUs/displayDetails" method="post" modelAttribute="basicDetails">
<!-- Taking email as input -->
<div style="display:none">
</div>
<input type="email" name="email">
<input class="buttom" name="submit" id="submit" tabindex="10"  type="submit"> 
<div style="color: red">${errorInput}</div>
</form:form>

<form:form id="displayAppDetails" action="loginUs/displayAppDetails" method="post" modelAttribute="basicAppDetails">
<!-- Taking email as input--> 
<div style="display:none">
</div>
<input type="number" name="appid">
<input class="buttom" name="submit" id="submit" tabindex="10"  type="submit"> 
<div style="color: red">${errorInputId}</div>
</form:form> 

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}
function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>


</body>
</html>