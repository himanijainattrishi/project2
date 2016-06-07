<%@include file="Header.jsp" %>

<div class="container">
  <form:form action="edit/{id}" class="form-horizontal well"  enctype="multipart/form-data" method="post" commandName="user1">
    <h1>Edit Profile</h1>
  	<hr>
	<div class="row">
      <!-- left column -->
      <div class="col-md-3">
        <div class="text-center">
          <img src="//placehold.it/100" class="avatar img-circle" alt="avatar">
          <h6>Upload a different photo...</h6>
          <form:input type="file" path="image" class="form-control"/>
          
        </div>
      </div>
      <%=request.getParameter("name") %>
      user name is:
   ${loginBean.name}
   ${user1.name}
      <!-- edit form column -->
    <div class="col-md-9 personal-info">
        <div class="alert alert-info alert-dismissable">
          <a class="panel-close close" data-dismiss="alert">×</a> 
          <i class="fa fa-coffee"></i>
        <strong>STUDENT INFO</strong>
        </div> 
      <!--   <h3>Student info</h3> -->
        
        <form class="form-horizontal" role="form">
          <div class="form-group">
            <label class="col-lg-3 control-label">First name:</label>
            <div class="col-lg-8">
              <form:input class="form-control" path="name" value="${user1.name}"/>
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Last name:</label>
            <div class="col-lg-8">
              <form:input class="form-control" path="lastName"/>
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">password:</label>
            <div class="col-lg-8">
              <form:password class="form-control" path="password"/>
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Email:</label>
            <div class="col-lg-8">
              <form:input class="form-control" path="email"/>
            </div>
          </div>
         
          <div class="form-group">
            <label class="col-md-3 control-label">Mobile:</label>
            <div class="col-md-8">
              <form:input class="form-control" path="mobile"/>
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-3 control-label">Zipcode:</label>
            <div class="col-md-8">
              <form:input class="form-control" path="zipcode"/>
            </div>
          </div>
         
          <div class="form-group">
            <label class="col-md-3 control-label"></label>
            <div class="col-md-8">
              <input type="button" class="btn btn-primary" value="Save Changes">
              <span></span>
              <input type="reset" class="btn btn-default" value="Cancel">
            </div>
          </div>
        </form>
      </div>
  </div>
  </form:form>
</div>
<hr>