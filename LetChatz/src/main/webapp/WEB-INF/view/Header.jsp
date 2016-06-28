<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page isELIgnored="false"%>

<html>
<head>
<title>HOME PAGE</title>
<meta name="viewport content=" width=device-width, initial-scale=1.0">
 <link href="resources/bootstrap/css/font-awesome.min.css" rel="stylesheet">
	<link href="resources/bootstrap/css/main.css" rel="stylesheet">
	<link href="resources/bootstrap/css/animate.css" rel="stylesheet">	
	<link href="resources/bootstrap/css/animate.min.css" rel="stylesheet">	
	<link href="resources/bootstrap/css/responsive.css" rel="stylesheet">
	<link href="resources/bootstrap/css/prettyPhoto.css" rel="stylesheet">
	
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/bootstrap/css/Freebar.min.css">
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap-theme.min.css"> 
<link rel="stylesheet" href="resources/bootstrap/js/angular.min.js"> 
<link rel="stylesheet" href="resources/bootstrap/css/font-awesome.min.js"> 
<link href="resources/bootstrap/css/main.css" rel="stylesheet">
<link href="resources/bootstrap/css/style.css" rel="stylesheet">
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
  
 /*  $(function () {
	  $("#datepicker").datepicker({ 
	        autoclose: true, 
	        todayHighlight: true
	  }).datepicker('update', new Date());;
	});
   */
  function formSubmit()
  {
	  document.getElementById("logout").submit();
  }
   
  /*  $(function () {
	   $('.example-popover').popover({
	     container: 'body'
	   })
	 }) */

  
  
  
  
  </script>
  <style>
 
  
 /* body {
    margin-top: 75px;
} */
.img-responsive {
    display: block;
    height: auto;
    max-width: 100%;
}

/* .navbar-default {
	background-color: #CC0000;
}
.dropdown-submenu {
	position: relative;
}
 */
  body {
  
  background: linear-gradient(to bottom, #68EACC 0%, #497BE8 100%);
  color: #777;
  
  /*  background-color: #808040; */
}  
.btn
{

  border: 0;
  font-size: 0.75rem;
  height: 2.5rem;
  line-height: 2.5rem;
  padding: 0 1.5rem;
  color: white;
  background: #8E49E8;
  text-transform: uppercase;
  border-radius: .25rem;
  letter-spacing: .2em;
  transition: background .2s;

}
/* .form-all
{

	background: #006666;
	border: 1px solid #00cc99;
	border-radius: 5px;
	color: white !important;
} */


.form_bg {
    background-color: #006666; 
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
 .sidebar {
    float: left;
    width: 23%;
	margin-top: 10px;
} 
 .sidebar1 {
    float: right;
    width: 23%;
	margin-top: 10px;
} 
.sidebar h4 {
	padding-bottom: 0;
	font-size: 13px;
	color: #fff;
	text-transform: uppercase;
	font-weight: normal;
	padding: 7px 7px;
	border-bottom: 1px solid #A31923;
  	background-color: #DE2D3A;
}
.sidebar1 h4 {
	padding-bottom: 0;
	font-size: 13px;
	color: #fff;
	text-transform: uppercase;
	font-weight: normal;
	padding: 7px 7px;
	border-bottom: 1px solid #A31923;
  	background-color: #DE2D3A;
}

.sidebar ul {
	margin: 0;
	padding: 0;
	list-style: none;
}
.sidebar1 ul {
	margin: 0;
	padding: 0;
	list-style: none;
}
.sidebar ul li {
	background-color: #E6E7E9;
	margin-bottom: 20px;
	line-height: 1.9em;
}
.sidebar1 ul li {
	background-color: #E6E7E9;
	margin-bottom: 20px;
	line-height: 1.9em;
}

.sidebar li ul {
    list-style: none outside none;
    margin: 0px;
}
.sidebar1 li ul {
    list-style: none outside none;
    margin: 0px;
}

.sidebar li ul li {
	display: block;
	border-top: none;
	padding: 7px;
	margin: 0;
	line-height: 1.5em;
	font-size: 13.5px;
}
.sidebar1 li ul li {
	display: block;
	border-top: none;
	padding: 7px;
	margin: 0;
	line-height: 1.5em;
	font-size: 13.5px;
}

.sidebar li ul li.text { 
	border-bottom: none;
}
.sidebar1 li ul li.text { 
	border-bottom: none;
}
.sidebar li ul li a {
	font-weight: normal;
}
.sidebar1 li ul li a {
	font-weight: normal;
}

.sidebar li ul li a:hover {
}



.sidebar li ul li a.readmore {
   color: #799AC0;
   font-weight: bold;
}
.sidebar1 li ul li a.readmore {
   color: #799AC0;
   font-weight: bold;
}

 
 

/* #container {
	width: 960px;
	margin: 20px auto;
	padding: 10px;
	box-shadow: 0 5px 5px 5px #CCCCCC;
	background-color: #fff;
} */
#content {
    float: right;
    width: 71%;
}


 </style>

 </head>
 <body>
 <img class="img-responsive" src="resources/images/niitcloud.jpg" alt="event-image">
  <header class="navbar navbar navbar-fixed-top bs-docs-nav" role="banner">
    <div class="collapse navbar-collapse">
     <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
             <!--  <a class="navbar-brand" href="index">
		                	<img class="img-responsive" src="resources/images/niitcloud.jpg" alt="logo">
		                </a>   -->
        </div> 
        
        <c:url value="/perform_logout" var="logout"/>
        <form action="${logout}"  method="post" id="logout">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csfr.token}"/>
        
        </form>
        
        
   <!--    -->
        
        
        
       <!--  <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation"> -->
           <%--  <form class="navbar-form navbar-right" role="search">
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Search">
              </div>
              <button type="submit" class="btn btn-default">Submit</button>
            </form> --%>
            <ul class="nav navbar-nav navbar-right">
            <!-- <ul class="nav navbar-nav"> -->
            <li class="scroll"><a href="index"> <span class="glyphicon glyphicon-home"></span>HOME</a></li>
               <%--  <li class="active"><a href="${session.getContextPath()}/LetChatz/index"> <span class="glyphicon glyphicon-home"></span>HOME</a></li> --%>
                <li class="scroll"><a href="Contact"><span class="glyphicon glyphicon-phone"></span>CONTACT</a></li>
               <c:if test="${pageContext.request.userPrincipal.name!=null}">
               <font size=5 color="black">welcome:${pageContext.request.userPrincipal.name}</font>
            <li class="scroll">  <a href="javascript:formSubmit()">LOGOUT</a></li>
                <security:authentication var="user" property="principal.authorities"/>
                <security:authorize var="LoggedIn" access="isAuthenticated()">
                <security:authorize access="hasRole('ROLE_ADMIN')">
               ADMIN
                </security:authorize>
                 <security:authorize access="hasRole('ROLE_USER')">
                USER
                </security:authorize>
                </security:authorize>
                </c:if> 
               <c:if test="${pageContext.request.userPrincipal.name==null}"> 
                
                 <!-- <ul class="nav navbar-nav navbar-right"> -->
     <li class="scroll"><a href="Login"><span class="glyphicon glyphicon-user"></span> LOGIN</a></li>
      <li class="scroll"><a href="Register"><span class="glyphicon glyphicon-log-in"></span> NEW USER</a></li>
    </ul>
             <!--   <li><a href="Login">LOGIN</a></li>
                <li><a href="Register">REGISTER</a></li>  -->
            </c:if> 
              
             <c:if test="${pageContext.request.userPrincipal.name!=null}">
                
              
             <%--  <a href="${pageContext.request.contextPath}/Success"> USER PROFILE</a> --%>
       
           
              </c:if>  
            </ul>
        </nav>
    </div>
</header>

 <script type="text/javascript" src="resources/bootstrap/js/jquery.js"></script>
    <script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
  	<script type="text/javascript" src="resources/bootstrap/js/gmaps.js"></script>
	<script type="text/javascript" src="resources/bootstrap/js/smoothscroll.js"></script>
    <script type="text/javascript" src="resources/bootstrap/js/jquery.parallax.js"></script>
    <script type="text/javascript" src="resources/bootstrap/js/coundown-timer.js"></script>
    <script type="text/javascript" src="resources/bootstrap/js/jquery.scrollTo.js"></script>
    <script type="text/javascript" src="resources/bootstrap/js/jquery.nav.js"></script>
    <script type="text/javascript" src="resources/bootstrap/js/main.js"></script>  
 
 <script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
  <script src="resources/bootstrap/js/bootstrap.min.js"></script> 
<!--  <script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>  -->
 </body>
 
 </html>