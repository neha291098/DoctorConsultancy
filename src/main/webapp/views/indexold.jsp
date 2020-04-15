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
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>


</head>
<body>
    <div class="fixed-header">
        <div class="container">
            <nav>
               <a href="#">Doctor</a>
                
                <a href="#">Book Appointment</a>
               <a href="#">Diagnostics</a>
                <a href="#">Services</a>
                <a href="patient/list">View patients</a>
             
               <a href="signup" class="signup">SignUp</a>
                 <a href="login" class="login">Login</a>
            </nav>
        </div>
    </div>
   
<div class="slideshow-container">

<div class="mySlides fade">
  <!-- <div class="numbertext">1 / 3</div> -->
  <img src="<c:url value="/resources/static/images/slider3.jpg"/>" style="width:100%;height:600px">
  <!--<div class="text">Caption Text</div>-->
</div>

<div class="mySlides fade">
 <!-- <div class="numbertext">2 / 3</div>-->
  <img src="<c:url value="/resources/static/images/slider2.jpg"/>" style="width:100%;height:600px">
  <!--<div class="text">Caption Two</div>-->
</div>

<div class="mySlides fade">
  <!--<div class="numbertext">3 / 3</div>-->
  <img src="<c:url value="/resources/static/images/slider1.jpg"/>" style="width:100%;height:600px">
  <!--<div class="text">Caption Three</div>-->
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
<br>
<br>

    <center><h2>Find Doctors In Top Specialities</h2></center>
<img  src="<c:url value="/resources/static/images/slider2.jpg"/>" style="width:100%;max-width:300px">
<h3>Dentist</h3>

<!-- The Modal -->
<div id="myModal" class="modal">
  <span class="close">&times;</span>
  <img class="modal-content" id="img01">
  <div id="caption"></div>
</div>  



    <div >
       
      
       <footer>
  <p>Copyright@Medicure 2020</p>
</footer> 
    </div>
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
      
    