<%@include file="Header.jsp" %>


   <div class="container">
     <form:form action="edit" class="form-horizontal well"  enctype="multipart/form-data" method="post" commandName="user"/> 
    <h1>Edit Profile</h1>
  	<hr>
	<div class="row">
      <!-- left column -->
    <%--   <div class="col-md-3">
        <div class="text-center">
         <!--  <img src="//placehold.it/100" class="avatar img-circle" alt="avatar"> -->
          <h6>Upload a different photo...</h6>
          
         <form:input type="file" path="image" />
        </div>
      </div> --%>
      
      <!-- edit form column -->
      <div class="col-md-9 personal-info">
        <div class="alert alert-info alert-dismissable">
          <a class="panel-close close" data-dismiss="alert">�</a> 
          <i class="fa fa-coffee"></i>
       <strong>STUDENT INFO</strong>. 
        </div>
     
        
        <form:form class="form-horizontal" role="form">
          <div class="form-group">
            <label class="col-lg-3 control-label">First name:</label>
            <div class="col-lg-8">
              <form:input path="id" value="${u.id}" readonly="true"/>
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Last name:</label>
            <div class="col-lg-8">
             <form:input path="id" value="${u.lastName}" readonly="true"/>
            </div>
          </div>
         
          
          <div class="form-group">
            <label class="col-lg-3 control-label">Email:</label>
            <div class="col-lg-8">
              <form:input path="email" class="form-control" />
            </div>
          </div>
        <!--   <div class="form-group">
            <label class="col-lg-3 control-label">Time Zone:</label>
            <div class="col-lg-8">
              <div class="ui-select">
                <select id="user_time_zone" class="form-control">
                  <option value="Hawaii">(GMT-10:00) Hawaii</option>
                  <option value="Alaska">(GMT-09:00) Alaska</option>
                  <option value="Pacific Time (US &amp; Canada)">(GMT-08:00) Pacific Time (US &amp; Canada)</option>
                  <option value="Arizona">(GMT-07:00) Arizona</option>
                  <option value="Mountain Time (US &amp; Canada)">(GMT-07:00) Mountain Time (US &amp; Canada)</option>
                  <option value="Central Time (US &amp; Canada)" selected="selected">(GMT-06:00) Central Time (US &amp; Canada)</option>
                  <option value="Eastern Time (US &amp; Canada)">(GMT-05:00) Eastern Time (US &amp; Canada)</option>
                  <option value="Indiana (East)">(GMT-05:00) Indiana (East)</option>
                </select>
              </div>
            </div>
          </div> -->
          <div class="form-group">
        
            <label class="col-md-3 control-label">Password:</label>
            <div class="col-md-8">
              <form:password path="password" class="form-control" />
            </div>
          </div>
          
           <div class="form-group">
        
            <label class="col-md-3 control-label">state:</label>
            <div class="col-md-8">
              <form:password path="state" class="form-control" />
            </div>
          </div>
          
           <div class="form-group">
        
            <label class="col-md-3 control-label">Mobile:</label>
            <div class="col-md-8">
              <form:password path="mobile" class="form-control" />
            </div>
          </div>
          
           <div class="form-group">
        
            <label class="col-md-3 control-label">ZipCode:</label>
            <div class="col-md-8">
              <form:password path="zipcode" class="form-control" />
            </div>
          </div>
          
          
         
          <div class="form-group">
            <label class="col-md-3 control-label"></label>
            <div class="col-md-8">
          <%--   <a href="<c:url value='/edit/${user.id}'/>" >Edit</a> --%>
               <input type="button" class="btn btn-primary" value="Save Changes"> 
              <span></span>
              <input type="reset" class="btn btn-default" value="Cancel">
            </div>
          </div>
   </form:form> 
      </div>
  </div>
</div>
<hr>

 
 
 
 
  
 