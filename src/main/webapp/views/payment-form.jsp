<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="<c:url value="/resources/static/style/bootstrap.min.css" />"
rel="stylesheet">

<link href="<c:url value="/resources/static/style/payment-form.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/static/style/navbar.css" />"
rel="stylesheet">

<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
<style>


</style>
</head>
<body>
<div class="fixed-header">
        <div class="container">
            <nav>
             <img src="<c:url value="/resources/static/images/logo-edited.png"/>"/>
               <a href="">Home</a>
                <a href="appointment">Book Appointment</a>
                 <a href="#">Doctors</a>
           
<a href="list">View Records</a>
               <a href="patient/signup" class="w3-button w3-white w3-padding-large w3-large w3-margin-top" style="color:black;padding: 8px 10px!important;margin-top: 0px!important;margin-left: 15px;">SignUp</a>
               <a href="login" class="w3-button w3-white w3-padding-large w3-large w3-margin-top" style="color:black;padding: 8px 10px!important;margin-top: 0px!important;margin-left: 15px;">Login</a>
               
                <!--  <a href="login" class="login">Login</a>-->
               
            </nav>
        </div>
    </div>
    
    
    <h2>Responsive Checkout Form</h2>
<p>Resize the browser window to see the effect. When the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other.</p>
<div class="row">
  <div class="col-75">
    <div class="container1">
      <form action="paymentGateway" method="post">
     
        <div class="row">


          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" placeholder="John More Doe">
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum"  placeholder="1111-2222-3333-4444">
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" placeholder="September">
            <div class="row" style="margin: 0px 0px;">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear"  placeholder="2018">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv"  placeholder="352">
              </div>
            </div>
          </div>
          
        </div>
        
       <input type="submit" value="Continue to checkout" class="btn">
      </form>
    </div>
  </div>
  <div class="col-25">
    <div class="container1">
      <h4>Payment Detail <!--<span class="price" style="color:black"><i class="fa fa-shopping-cart"></i> <b>4</b></span>  --></h4>
      <p><a href="#">Appointment id-17</a> <span class="price">Rs. 600</span></p>

      <hr>
      <p>Total <span class="price" style="color:black"><b>Rs. 600</b></span></p>
    </div>
  </div>
</div>
    
    
    
    
    
    
    <footer class="w3-row-padding w3-padding-32" style="background-color:black">
    <div class="w3-third" style="color:white">
      <h3>MEDICURE</h3>
      <a href="">Book appointment</a><br>
      <a href="">About Us</a><br>
       <a href="">Contact Us</a>
    </div>
 
    <div class="w3-third" style="color:white">
      <h3>SOCIAL</h3>
      <a href="">Facebook</a><br>
      <a href="">Twitter</a><br>
       <a href="">Instagram</a>
      <!-- <ul class="w3-ul w3-hoverable">
        <li class="w3-padding-0">
          <!-- <img src="/w3images/workshop.jpg" class="w3-left w3-margin-right" style="width:50px"> -->
          <!-- <span class="w3-large" style="color:white">Twitter</span><br>
         
        </li>
        <li class="w3-padding-0">
          <!--<img src="/w3images/gondol.jpg" class="w3-left w3-margin-right" style="width:50px"> -->
          <!-- <span class="w3-large" style="color:white">Facebook</span><br>
       
        </li>
      </ul> -->
    </div>

    <div class="w3-third w3-serif" style="color:white">
      <h3>Contact Us</h3>
      <a href="">Ph no: 7985855652</a>
      <br>
      <a href="">Ph no: 9450216745</a>
     
    </div>
  </footer>
</body>
</html>