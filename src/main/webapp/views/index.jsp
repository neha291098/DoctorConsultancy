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
<link href="<c:url value="/resources/static/style/indexnew.css" />"
rel="stylesheet">
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-bar-block .w3-bar-item {padding:20px}
body, html {
  height: 100%;
  line-height: 1.8;
}

/* Full height image header */
.bgimg-1 {
  background-position: center;
  background-image: url("/resources/static/images/slider3.jpg");
  min-height: 106%;
  margin:0px 0px;
  padding:0px 20px;
  z-index:-1;
}

.w3-bar .w3-button {
  padding: 16px;
}
</style>

</head>
<body>
    <div class="fixed-header">
        <div class="container">
            <nav>
              
               <a href="">Home</a>
                <a href="appointment">Book Appointment</a>
                 <a href="#">Doctors</a>
               <a href="diagnostic">About Us</a>
                <a href="#">Contact Us</a>
           
<a href="list">View Records</a>
               <a href="patient/signup" class="signup">SignUp</a>
                 <a href="login" class="login">Login</a>
               
            </nav>
        </div>
    </div>
    
 
 
 
<!-- Header with full-height image -->
<header class="bgimg-1 w3-display-container w3-grayscale-min" id="home">

<!-- <div class="navbar">
  <a href="#home">Home</a>
  <a href="#news">News</a>
  <a href="#contact">Contact</a>
</div> -->

  <div class="w3-display-left w3-text-white" style="padding:48px;color:black">
    <span class="w3-jumbo w3-hide-small" style="color:black">Medicure Consultancy</span><br>
    <span class="w3-xxlarge w3-hide-large w3-hide-medium" style="color:black">Medicure Consultancy</span><br>
    <span class="w3-large" style="color:black">Smile, it lets your teeth breathe</span>
    <p><a href="#about" class="w3-button w3-white w3-padding-large w3-large w3-margin-top w3-opacity w3-hover-opacity-off" style="color:black">Book Appointment</a></p>
  </div>
  <div class="w3-display-bottomleft w3-text-grey w3-large" style="padding:24px 48px">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
</header>

<div class="w3-container" id="about">
  <h3 class="w3-center">ABOUT MEDICURE</h3>
  <p class="w3-center w3-large"></p>
  <div class="w3-row-padding w3-center" style="margin-top:64px">
    <div class="w3-quarter">
      <i class="fa fa-desktop w3-margin-bottom w3-jumbo w3-center"></i>
      <p class="w3-large">Online Booking</p>
      <p>We provide online appointment booking service. You can book your appointment by simple easy steps.</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-heart w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">Life Matters</p>
      <p>We provide best treatment facilities, with highly qualified doctors.<p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-diamond w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">Best Doctors</p>
      <p>We provide you the facility to book appointments with the best doctors across the city.</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-cog w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large">Support</p>
      <p>Feel free to contact us anytime, if you have any queries regarding the process.</p>
    </div>
  </div>
</div>

<!-- Team Section -->
<div class="w3-container"  id="team">
  <h3 class="w3-center">OUR DOCTORS</h3>
  <p class="w3-center w3-large"></p>
  <div class="w3-row-padding w3-grayscale" style="margin-top:64px">
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-card">
        <img src="<c:url value="/resources/static/images/doc1.jpg"/>" alt="John" style="width:100%">
        <div class="w3-container">
        <br>
          <center><h3>Dr. Satyendra Singh</h3></center>
          <center><p class="w3-opacity">General Physician</p></center>
          <p>Dr. Satyendra Singh is one of the best physicians in the area and has 9 years of experience. 
           He has completed his MBBS from Era Lucknow Medical College, Lucknow and CCDM from
           Apollo Hospitals. </p>
          <p><button class="w3-button w3-light-grey w3-block"><!-- <i class="fa fa-envelope"></i> --> Book Appointment</button></p>
        </div>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-card">
        <img src="<c:url value="/resources/static/images/doc2.jpg"/>" alt="Jane" style="width:100%">
        <div class="w3-container">
        <br>
          <center><h3>Dr. Pratik Mishra</h3></center>
          <center><p class="w3-opacity">General Physician</p></center>
          <p>Dr. Pratik Mishra is a General Physician and has a professional experience of 5 years. He completed his MBBS from R.G. Kar Medical 
          College, Kolkata  and PGCC (Diabetes) and HYUY.</p>
          <p><button class="w3-button w3-light-grey w3-block"> Book Appointment</button></p>
        </div>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-card">
        <img src="<c:url value="/resources/static/images/doc3.jpg"/>" alt="Mike" style="width:100%">
        <div class="w3-container">
        <br>
          <center><h3>Dr. Ruby Kansal</h3></center>
          <center><p class="w3-opacity">Pediatrician</p></center>
          <p>Dr. Ruby Kansal is a Pediatrician and has a professional experience of 5 years.She completed her MBBS from Kasturba Medical College 
          in 2008 and MD - Pediatrics from Kasturba Medical College.</p>
          <p><button class="w3-button w3-light-grey w3-block">Book Appointment</button></p>
        </div>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-card">
        <img src="<c:url value="/resources/static/images/doc4.jpg"/>" alt="Dan" style="width:100%">
        <div class="w3-container">
        <br>
          <center><h3>Dr. Divya Aggarwal</h3></center>
          <center><p class="w3-opacity">Pediatrician</p></center>
          <p>Dr. Divya Aggarwal is a Pediatrician and has a professional experience of 12 years. She completed her MBBS from Kasturba Medical College 
          in 2008 and MD - Pediatrics from Kasturba Medical College in 2011. </p>
          <p><button class="w3-button w3-light-grey w3-block">Book Appointment</button></p>
        </div>
      </div>
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
  
 <script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>  
</body>
</html>                            
     
   