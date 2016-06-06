<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page isELIgnored="false"%>

<html>
<head>
<title>HOME PAGE</title>
<meta name="viewport content=" width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap-theme.min.css">  
<link href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css" rel="stylesheet" type="text/css" /> 
<link
	href="https://cdnjs.cloudflare.com/ajax/libsl/twitter-bootstrap/4.0.0-alpha/css/bootstrap.min.css"
	rel="stylesheet" />

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha/css/bootstrap.css"
	rel="stylesheet" />
	<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
 
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.3/angular.min.js"></script>
  <script type="text/javascript">
  
  $(function () {
	  $("#datepicker").datepicker({ 
	        autoclose: true, 
	        todayHighlight: true
	  }).datepicker('update', new Date());;
	});

  
  
  
  
  </script>
  <style>
  
  
 body {
    margin-top: 75px;
}
.img-responsive {
    display: block;
    height: auto;
    max-width: 100%;
}
.navbar-default {
	background-color: #CC0000;
}
.dropdown-submenu {
	position: relative;
}

body {
  background-color: lightblue;
}
.form_bg {
   background-color: pink;
    color:#666;
    padding:20px;
    border-radius:10px;
    position: absolute;
    border:1px solid #fff;
    margin: auto;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    width: 320px;
    height: 280px;
}
.align-center {
    text-align:center;
}
label
{margin-left: 20px;}
#datepicker{width:180px; margin: 0 20px 20px 20px;}
#datepicker > span:hover{cursor: pointer;}

.navbar-text > a {
	color: inherit; 
	text-decoration: none;
}

  .header {
        color: #36A0FF;
        font-size: 27px;
        padding: 10px;
    }

    .bigicon {
        font-size: 35px;
        color: #36A0FF;
    }
 </style>

 </head>
 <body>
 
   
 
 
 <header class="navbar navbar-inverse navbar-fixed-top bs-docs-nav" role="banner">
    <div class="container">
        <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="index.html" class="navbar-brand">Letzchaaat</a>
        </div>
        <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
            <form class="navbar-form navbar-right" role="search">
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Search">
              </div>
              <button type="submit" class="btn btn-default">Submit</button>
            </form>
            <ul class="nav navbar-nav">
                <li class="active"><a href="${session.getContextPath()}/LetChatz/index">Home</a></li>
                <li><a href="contact.html">Contact</a></li>
                <li><a href="about.html">About US</a></li>
            </ul>
        </nav>
    </div>
</header>
 
  <script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
 
 <script src="resource/bootstrap/js/bootstrap.min.js"></script> 
 <script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script> 
 </body>
 
 </html>