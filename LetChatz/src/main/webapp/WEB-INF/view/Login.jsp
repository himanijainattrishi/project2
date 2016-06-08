
<%@include file="Header.jsp"%>

<section style="height:430px">

<div class="container" >
    <div class="row">
        <div class="form_bg">
            <form:form action="userLogin" commandName="loginBean" method="post">
                 <h2 class="text-center">Login Page</h2>
                <br/>
                <div class="form-group">
            id   <form:input path="id" class="form-control input-lg" />
                 <!--    <input type="email" class="form-control" id="userid" placeholder="User id"> -->
                </div>
                <div class="form-group">
             password   <form:password path="password" class="form-control"/>
                   <!--  <input type="password" class="form-control" id="pwd" placeholder="Password"> -->
                </div>
                <br/>
                <div class="align-center">
            
                  <button type="submit" class="btn btn-default" id="login">Login</button> 
                </div>
            </form:form>
        </div>
    </div>
</div>
</section>
<%@include file="Footer.jsp"%>