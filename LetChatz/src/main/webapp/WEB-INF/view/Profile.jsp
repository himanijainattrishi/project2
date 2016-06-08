<%@include file="Header.jsp" %>

 

   
 <div class="container">
  <form:form action="edit/{id}" class="form-horizontal well"   method="post" commandName="myprofile">
    <h1>Edit Profile</h1>
  	<hr>
	<div class="row">
      <!-- left column -->
      <div class="col-md-3">
        <div class="text-center">
          <img src="resources/pics/${u.id}.jpg" class="avatar img-circle" alt="avatar">
          <h6>Upload a different photo...</h6>
          <form:input type="file" path="image"  class="form-control"/>
         
    <%-- <img src="resources/pics/${u.id}.jpg" class=".img-circle" height="300" width="300"/> --%>
         
          
        </div>
      </div>
     
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
            <label class="col-lg-3 control-label">ID:</label>
            <div class="col-lg-8">
              <form:input class="form-control" path="id" value="${u.id}" readonly="true"/>
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">First name:</label>
            <div class="col-lg-8">
              <form:input class="form-control" path="name" value="${u.name}"/>
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Last name:</label>
            <div class="col-lg-8">
              <form:input class="form-control" path="lastName" value="${u.lastName}"/>
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">password:</label>
            <div class="col-lg-8">
              <form:password class="form-control" path="password" value="${u.password}"/>
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Email:</label>
            <div class="col-lg-8">
              <form:input class="form-control" path="email" value="${u.email}"/>
            </div>
          </div>
         
          <div class="form-group">
            <label class="col-md-3 control-label">Mobile:</label>
            <div class="col-md-8">
              <form:input class="form-control" path="mobile" value="${u.mobile}"/>
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-3 control-label">Zipcode:</label>
            <div class="col-md-8">
              <form:input class="form-control" path="zipcode" value="${u.zipcode}"/>
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