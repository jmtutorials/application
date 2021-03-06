<!DOCTYPE html>
<%@page import="com.jm.util.JMConstants"%>
<%@page import="com.jm.model.*"%>
<html lang="en">
<head>
  
  <title>J M Tutorials </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
  body {
    font: 400 15px Lato, sans-serif;
    line-height: 1.8;
    color: #818181;
  }
  h2 {
    font-size: 24px;
    text-transform: uppercase;
    color: #303030;
    font-weight: 600;
    margin-bottom: 30px;
  }
  h4 {
    font-size: 19px;
    line-height: 1.375em;
    color: #303030;
    font-weight: 400;
    margin-bottom: 30px;
  }  
  .jumbotron {
    background-color: #3b5998;
    color: #fff;
    padding: 100px 25px;
    font-family: Montserrat, sans-serif;
  }
  .container-fluid {
    padding: 60px 50px;
  }
  .bg-grey {
    background-color: #f6f6f6;
  }
  .logo-small {
    color: #3b5998;
    font-size: 50px;
  }
  .logo {
    color: #3b5998;
    font-size: 200px;
  }
  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail img {
    width: 100%;
    height: 100%;
    margin-bottom: 10px;
  }
  .carousel-control.right, .carousel-control.left {
    background-image: none;
    color: #3b5998;
  }
  .carousel-indicators li {
    border-color: #3b5998;
  }
  .carousel-indicators li.active {
    background-color: #3b5998;
  }
  .item h4 {
    font-size: 19px;
    line-height: 1.375em;
    font-weight: 400;
    font-style: italic;
    margin: 70px 0;
  }
  .item span {
    font-style: normal;
  }
  .panel {
    border: 1px solid #3b5998; 
    border-radius:0 !important;
    transition: box-shadow 0.5s;
  }
  .panel:hover {
    box-shadow: 5px 0px 40px rgba(0,0,0, .2);
  }
  .panel-footer .btn:hover {
    border: 1px solid #3b5998;
    background-color: #fff !important;
    color: #3b5998;
  }
  .panel-heading {
    color: #fff !important;
    background-color: #3b5998 !important;
    padding: 25px;
    border-bottom: 1px solid transparent;
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 0px;
  }
  .panel-footer {
    background-color: white !important;
  }
  .panel-footer h3 {
    font-size: 32px;
  }
  .panel-footer h4 {
    color: #aaa;
    font-size: 14px;
  }
  .panel-footer .btn {
    margin: 15px 0;
    background-color: #3b5998;
    color: #fff;
  }
  .navbar {
    margin-bottom: 0;
    background-color: #3b5998;
    z-index: 9999;
    border: 0;
    font-size: 12px !important;
    line-height: 1.42857143 !important;
    letter-spacing: 4px;
    border-radius: 0;
    font-family: Montserrat, sans-serif;
  }
  .navbar li a, .navbar .navbar-brand {
    color: #fff !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
    color: #3b5998 !important;
    background-color: #fff !important;
  }
  .navbar-default .navbar-toggle {
    border-color: transparent;
    color: #fff !important;
  }
  footer .glyphicon {
    font-size: 20px;
    margin-bottom: 20px;
    color: #3b5998;
  }
  .slideanim {visibility:hidden;}
  .slide {
    animation-name: slide;
    -webkit-animation-name: slide;
    animation-duration: 1s;
    -webkit-animation-duration: 1s;
    visibility: visible;
  }
  @keyframes slide {
    0% {
      opacity: 0;
      transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      transform: translateY(0%);
    }
  }
  @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
    .btn-lg {
      width: 100%;
      margin-bottom: 35px;
    }
  }
  @media screen and (max-width: 480px) {
    .logo {
      font-size: 150px;
    }
  }
  </style>
  <script type="text/javascript">
  var modal = document.getElementById('id01');
	function openLoginPopup(){
		document.getElementById('id01').style.display='block';
		document.getElementById('id01').style.width='auto';
		}
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	    if (event.target == modal) {
	        modal.style.display = "none";
	    }
	}
  </script>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#about">ABOUT</a></li>
        <li><a href="#portfolio">PORTFOLIO</a></li>
        <li><a href="#services">SERVICES</a></li>
        <li><a href="#contact">CONTACT</a></li>
        <li><a data-toggle="modal" data-target="#loginModal"><span class="glyphicon glyphicon-log-in"></span> login</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="jumbotron text-center" style="background-image: url('images/JM_Header.png')">
  <h1>J M Tutorials </h1> 
</div>

<!-- Container (About Section) -->
<div id="about" class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
      <h2>About Us</h2><br>
     
      <p>We are committed to take education to every single door, making it a superb blend of knowledge and job specific. Our mission is to create ethical and intellectual personnel through qualitative education. Today, JM Classes is located at Malad West, Mumbai, Maharashtra. And, we are looking forward to spread our efficiency at every nook and corner of India. We are the player with diverse courses, teaching methodology, efficient faculty team and effective management staff. Choose to contact or reach us for an assured advanced career.</p>
      <br><button class="btn btn-default btn-lg">Get in Touch</button>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-signal logo"></span>
    </div>
  </div>
</div>

<!-- Container (Portfolio Section) -->
<div id="portfolio" class="container-fluid text-center bg-grey"> 
  <h2>What our students say</h2>
  <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
      	<div class="row">
      		<div class="col-sm-6">
      			<img alt="Vijay" src="images/Vijay.jpeg">
      		</div>
      		<div class="col-sm-6">
      			<h4>"Best Coaching for Maths and Science "<br><span>Vijay, Sir JP </span></h4>
      		</div>
      	</div>
      	
      </div>
      <div class="item">
     	<div class="row">
      		<div class="col-sm-6">
      			<img alt="Pallavi" src="images/Pallavi.jpeg">
      		</div>
      		<div class="col-sm-6">
      			<h4>"One word... WOW!!"<br><span>Pallavi , Sir JP </span></h4>
      		</div>
      	</div>
      </div>
      <div class="item">
      <div class="row">
      		<div class="col-sm-6">
      			<img alt="Anaita" src="images/Annu.jpeg">
      		</div>
      		<div class="col-sm-6">
      			<h4>"Best faculties and conceptual learning "<br><span>Anahita, Carmels of St. Joseph </span></h4>
      		</div>
      	</div>
        
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<!-- Container (Services Section) -->
<div id="services" class="container-fluid">
  <div class="text-center">
    <h2>Services</h2>
  </div>
  <div class="row slideanim">
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>SSC</h1>
        </div>
        <div class="panel-body">
          <p>8th , 9th, 10th </p>
          <p>Maths , Science</p>
          <p>Languages</p>
        </div>
        <div class="panel-footer">
          <a href="#contact" class="btn btn-info" role="button">Enquire</a>
        </div>
      </div>      
    </div>     
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>ICSE/CBSE</h1>
        </div>
        <div class="panel-body">
          <p>8th , 9th, 10th </p>
          <p>Maths , Science</p>
          <p> Programmning </p>
        </div>
        <div class="panel-footer">
        <a href="#contact" class="btn btn-info" role="button">Enquire</a>
        </div>
      </div>      
    </div>       
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Bank PO </h1>
        </div>
        <div class="panel-body">
          <p>Bank PO</p>
          <p>Railway Examss</p>
          <p>Nationalised Bank PO</p>
        </div>
        <div class="panel-footer">
          <a href="#contact" class="btn btn-info" role="button">Enquire</a>
        </div>
      </div>      
    </div>    
  </div>
</div>

<!-- Container (Contact Section) -->
<div id="contact" class="container-fluid bg-grey">
  <h2 class="text-center">SEND US AN ENQUIRY HERE</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Contact us and we'll get back to you</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Malad West </p>
      <p><a href="tel:+919930851959"><span class="glyphicon glyphicon-phone"></span> +91 9930851959</a></p>
      <p><a href="mailto:jmpvttutorials@gmail.com"><span class="glyphicon glyphicon-envelope"></span> jmpvttutorials@gmail.com</a></p>
    </div>
  
     <div class="col-sm-7 slideanim">
    <form action="EnquiryServlet" method="post">
    	<input type="hidden" name="action" value="<%=JMConstants.STUDENT_ENQUIRY%>"/>
    	<div class="row">
	        <div class="col-sm-6 form-group">
	          <input class="form-control" id="studentName" name="studentName" placeholder="Name" type="text" required>
	        </div>
	        <div class="col-sm-6 form-group">
	          <input class="form-control" id="emailId" name="emailId" placeholder="Email" type="email" required="true">
	        </div>
      	</div>
      <div class="row">
	        
	        <div class="col-sm-6 form-group">
	          <input class="form-control" id="mobileNo" name="mobileNo" placeholder="Mobile Number" type="number" required="true">
	        </div>
	        
	        <div class="col-sm-6 form-group">
	          <input class="form-control" id="std" name="std" placeholder="Standard" type="number" required="true" min="7" max="10">
	        </div>
      	</div>
      	<div class="row">
	        
	        
      	</div>
      	<div class="row">
	        <div class="col-sm-6 form-group">
	          <input class="form-control" id="schoolName" name="schoolName" placeholder="School Name" type="text" required="true">
	        </div>
	        
	        <div class="col-sm-6 form-group">
	          <input class="form-control" id="referredBy" name="referredBy" placeholder="Referred By " type="text">
	        </div>
	        
      	</div>
      	
      	
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" type="submit">Send</button>
        </div>
      </div>
    </form>
      
    </div>
  </div>
</div>
 <div id="loginModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"> &times;</button>
               
            </div>
            <div class="modal-body">
                   <form action="LoginServlet" method="post">
                  <h2 class="text-center">LOGIN</h2> 
                <div class="form-group">
                  <label class="sr-only" for="email">Email</label><input type="text" class="form-control input-sm" required="true" value="" type="text" placeholder="Email" id="email" name="email">
                       </div>
                        <div class="form-group">  
                          
                           <label class="sr-only" for="password">Password</label>
                                     <input type="password" class="form-control input-sm" required="true" value="" type="text" placeholder="Password" id="password" name="password"></div>
                       
                   <p class="text-center">
                       <button type="submit" class="btn btn-info btn-xs">Sign in</button>
                       <button type="button" class="btn btn-default btn-xs" data-dismiss="modal">Cancel</button> 
                       </p>
                    </form>
            </div>

        </div>
        </div>
    </div>

<footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  
</footer>

<script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
  
  $(window).scroll(function() {
    $(".slideanim").each(function(){
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
        if (pos < winTop + 600) {
          $(this).addClass("slide");
        }
    });
  });
})
</script>

</body>
</html>
