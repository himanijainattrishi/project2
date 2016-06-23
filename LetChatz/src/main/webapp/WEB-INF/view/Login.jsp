
<%@include file="Header.jsp"%>
<%@page isELIgnored="false" %>

<section style="height:430px">

<div class="container" >
 
    <div class="row">
        <div class="form_bg">
        
        <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
            </c:if>
             <c:if test="${not empty error}">
                <div class="error" style="color: #ff0000;">${error}</div>
            </c:if> 
        
        
          <%--   <form:form action="userLogin"  method="post"> --%>
          <form:form name="Login" action="perform" method="post" >
                 <h2 class="text-center">Login Page</h2>
                <br/>
                <div class="form-group">
     
                 <input type="text" class="form-control" required class="input" name="name" id="name" placeholder="User id"> 
                 <form:errors path="name" cssClass="error" />
                </div>
                <div class="form-group">
         <%--   password   <form:password path="password" class="form-control"/>  --%>
                   <input type="password" class="form-control" required class="input" name="password" id="password" placeholder="Password">  
                </div>
                <br/>
                <div class="align-center">
            
                  <input type="submit" class="btn btn-default" id="login">Login
                </div>
                <li>New User ?<a href="signUp">Sign Up Here</a></li>
<li><input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/></li>
            </form:form>
        </div>
    </div>
</div>
</section>
<%@include file="Footer.jsp"%>