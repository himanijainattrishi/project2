
<%@include file="Header.jsp"%>

<section style="height:430px">

<div class="container" >
    <div class="row">
        <div class="form_bg">
          <%--   <form:form action="userLogin"  method="post"> --%>
          <form:form action="perform" method="post" commandName="loginBean">
                 <h2 class="text-center">Login Page</h2>
                <br/>
                <div class="form-group">
       <form:input path="name" class="form-control input-lg" /> 
              <!--     <input type="text" class="form-control"  name="name" id="name" placeholder="User id"> -->
                </div>
                <div class="form-group">
           password   <form:password path="password" class="form-control"/> 
                <!--   <input type="password" class="form-control"  name="password" id="password" placeholder="Password">  -->
                </div>
                <br/>
                <div class="align-center">
            
                  <input type="submit" class="btn btn-default" id="login">Login
                </div>
            </form:form>
        </div>
    </div>
</div>
</section>
<%@include file="Footer.jsp"%>