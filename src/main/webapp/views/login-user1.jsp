<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log In</title>
<link rel="stylesheet" href="/resources/static/css/login.css">

</head>
<body background="<c:url value="/resources/static/images/slider3.jpg"/>"/>

<div class="form">



<div id="login">
<div id="triangle"></div>
<h1>Log In</h1>
<form:form id="eloginform" action="loginAction" method="post" modelAttribute="user">
<input type="text" placeholder="Email" name="email"/>
<input type="password" placeholder="Password" name="password" />
 
<input type="submit" value="Log in" />
</form:form>
</div>

</div>
<div style="color: red">${error}</div>
</body>
</html>

