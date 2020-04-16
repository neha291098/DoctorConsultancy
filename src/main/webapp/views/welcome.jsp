<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">

<link href="<c:url value="/resources/static/style/bootstrap.min.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/static/style/index.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/static/style/nav.css" />"
rel="stylesheet">
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>

<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>


 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-bar-block .w3-bar-item {padding:20px}
.w3-tag, .fa {cursor:pointer}
.w3-tag {height:15px;width:15px;padding:0;margin-top:6px}
</style>

<title>Insert title here</title>
</head>

<body background="<c:url value="/resources/images/slider2.jpg"/>"/>
 <div class="fixed-header">
        <div class="container">
            <nav>
           
               <a href="#">Doctor</a>
                
              
               <a href="#">Diagnostics</a>
                <a href="#">Services</a>
                <a href="list">View Records</a>
<a href="logout" style="float:right">Logout! <%out.print(request.getSession().getAttribute("user")); %></a>
               
                </nav>
                </div>
             </div>
           <div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <strong style="font-size:30px;color:green;">MEDICURE</strong>
  <br><br>
   <a href="/loginUs/edit">Edit Profile</a>
  <br><br>
  <a href="/loginUs/bookapp">Book Appointment</a>

  <br><br>
  <a href="/loginUs/bookAppList">Check Appointment</a>
  <br><br>
  
  <a href="#">Delete Appointment</a>
  <br><br>
  
</div>
<h2>xfcgvhbjn</h2>
<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>

<div class="w3-main w3-content w3-padding" style="max-width:1200px;margin-top:50px">

  <!-- First Photo Grid-->
  <div class="w3-row-padding w3-padding-16 w3-center" id="food">
    <div class="w3-quarter">
      <img src="<c:url value="/resources/static/images/dentist1.jpg"/>" style="width:100%">
      <h3><b>Keep calm and trust your dentist</b></h3>
      <!--<p>Just some random text, lorem ipsum text praesent tincidunt ipsum lipsum.</p>-->
    </div>
    <div class="w3-quarter">
      <img src="<c:url value="/resources/static/images/dentist2.jpg"/>" style="width:100%">
      <h3><b>Smiles are free but they are worth a lot</b></h3>
     
    </div>
    <div class="w3-quarter">
      <img src="<c:url value="/resources/static/images/dentist3.jpg"/>" style="width:100%">
      <h3><b>Life is short ,smile while you still have teeth</b></h3>
    <!--  <p>Lorem ipsum text praesent tincidunt ipsum lipsum.</p>-->
    <!--  <p>What else?</p> -->
    </div>
    <div class="w3-quarter">
    <img src="<c:url value="/resources/static/images/dentist4.jpg"/>" style="width:100%">
      <h3><b>Dont rush when you brush</b></h3>
      
    </div>
  </div>
  </div>
  
  <!-- Grid -->
  <div class="w3-row w3-container">
    <div class="w3-center w3-padding-64">
      <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">TOP DEALS AND OFFERS</span>
    </div>
    <div class="w3-col l3 m6 w3-light-grey w3-container w3-padding-16">
      <h3>Big Savings</h3>
      <p>Get unlimited online consultations during the COVID-19 outbreak<br><br></p>
      <h4>Rs. 799/month</h4>
      <button>Buy Now</button>
    </div>

    <div class="w3-col l3 m6 w3-grey w3-container w3-padding-16">
     <h3>YOU BELONG.</h3>
      <p>No dental insurance? 
      No problem! Our membership plan is a cost-effective way to pay for your annual exams,cleanings,and more!Download our brochure or give us a call.</p>
   <button>Membership program(PDF)</button>
    </div>

    <div class="w3-col l3 m6 w3-dark-grey w3-container w3-padding-16">
      <h3>Wisdom teeth Surgery</h3>
      <p>100% Medisave coverage
      <br><br>
Conservative surgical protocol<br><br></p>
<button>Book Online</button>
    </div>

    <div class="w3-col l3 m6 w3-black w3-container w3-padding-16">
      <h3>Metal Braces
</h3>
      <p>Low initial fees<br><br>
Progressive payment

No surprise fees.</p><br>
<button>Book Now</button>
    </div>
  </div>

  <!-- Grid -->
  
   <footer class="w3-row-padding w3-padding-32" style="background-color:black">
   
    <div class="w3-third" style="color:white">
      <h3>ABOUT MEDICURE</h3>
      <a href="">For Patients</a><br>
      <br>
       <a href="">For Doctors</a>
    </div>
  
    <div class="w3-third" style="color:white">
      <h3>SOCIAL</h3>
      <ul class="w3-ul w3-hoverable">
        <li class="w3-padding-16">
          <img src="/w3images/workshop.jpg" class="w3-left w3-margin-right" style="width:50px">
          <span class="w3-large" style="color:white">Twitter</span><br>
         
        </li>
        <li class="w3-padding-16">
          <img src="/w3images/gondol.jpg" class="w3-left w3-margin-right" style="width:50px">
          <span class="w3-large" style="color:white">Facebook</span><br>
        
        </li> 
      </ul>
    </div>

    <div class="w3-third w3-serif" style="color:white">
      <h3>Contact Us</h3>
      <a href="">7985855652</a>
      <br><br>
      <a href="">9450216745</a>
     
    </div>
  </footer>

<!-- End page content -->
</body>
</html>





