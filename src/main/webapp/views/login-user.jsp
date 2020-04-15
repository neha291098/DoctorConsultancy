<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="<c:url value="/resources/static/style/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/static/style/index.css" />"
 rel="stylesheet">
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>

</head>
<body background="<c:url value="/resources/static/images/slider3.jpg"/>"/>
	<div class="container">
		<div class="col-md-offset-2 col-md-7">
			<h2 class="text-center">Login</h2>
			<div class="panel panel-info">
				<div class="panel-body">
					<form:form action="loginUser" cssClass="form-horizontal"
						method="post" >
<input type="text" placeholder="Email" name="email"/>
<input type="password" placeholder="Password" name="password" />
<input type="submit" value="Log in" />
						
						<!--  <div class="form-group">
							<label for="email" class="col-md-3 control-label">
							<div style="color:pink">Email</div></label>
							<div class="col-md-9">
								<input type="email" cssClass="form-control" />
							</div>
						</div>
						
						<div class="form-group">
							<label for="password" class="col-md-3 control-label">
							<div style="color: pink">Password</div></label>
							<div class="col-md-9">
								<input type="password" cssClass="form-control" />
							</div>
						</div>
						<div class="form-group">
							<!-- Button -->
							<!-- <div class="col-md-offset-3 col-md-9">
								<form:button cssClass="btn btn-primary">Login</form:button>
							</div>
						</div>-->

					</form:form>
					
				</div>
			</div>
		</div>
	</div>
	<div style="color: red">${error}</div>
</body>
</html>
