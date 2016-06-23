<%@include file="Header.jsp"%>
<div class="container">
<div>
 
<div class="well">
<form:form action="useradd1" class="form-horizontal well" enctype="multipart/form-data" method="post" commandName="user">

 <fieldset>
 <span style="color: #ff0000">${emailMsg}</span>
  <span style="color: #ff0000">${usernameMsg}</span>
    <legend>Register Now</legend>
    
    <div class="row">
 
                    <div class="col-xs-8">
                    <div class="form-group">
                    <div class="rows">
                        <div class="col-md-8">
                            <div class="col-lg-6">
                               NAME <form:input class="form-control input-lg" 

path="name"/> 
</div>
<div class="col-lg-6">
                             LAST NAME   <form:input class="form-control 

input-lg" path="lastName"/>
                            </div>
                              </div>
                    </div>
                </div>
                
                 <div class="form-group">
                    <div class="rows">
                        <div class="col-md-8">
                            <div class="col-lg-12">
                             PASSWORD <form:password class="form-control 

input-lg" path="password"/>
                            </div>
                        </div>
                    </div>
                </div>
                
                 <div class="form-group">
                    <div class="rows">
                        <div class="col-md-8">
                            <div class="col-lg-12">
                            EMAIL-ID <form:input class="form-control input-

lg" path="email"/>  <form:errors path="email" cssClass="error" />
                            </div>
                        </div>
                    </div>
                </div>
                
                 <div class="form-group">
                    <div class="rows">
                        <div class="col-md-8">
                            <div class="col-lg-12">
                               MOBILE <form:input class="form-control 

input-lg" path="mobile"/>
                            </div>
                        </div>
                    </div>
                </div>
                
                  <div class="form-group">
                    <div class="rows">
                        <div class="col-md-8">
                            <div class="col-lg-12">
                              CITY <form:input class="form-control input-lg" 

path="city"/>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                <div class="form-group">
                    <div class="rows">
                        <div class="col-md-8">
                            <div class="col-lg-12">
                           ZIPCODE <form:input class="form-control input-lg" 

path="zipcode"/>
                            </div>
                        </div>
                    </div>
                </div>

  
                
                
                
                 <div class="form-group">
                    <div class="rows">
                        <div class="col-md-8">
                            <div class="col-lg-12">
                            STATE <form:select path="state">
  <form:option value="" label="--- Select ---" />

  
        <form:option value="INDIA">INDIA</form:option>  
    <form:option value="BIHAR">BIHAR</form:option>  
     <form:option value="NEPAL">NEPAL</form:option>  
</form:select>
                               
                            </div>
                        </div>
                    </div>
                </div>
                
                
                
                  <div class="form-group">
                    <div class="rows">
                        <div class="col-md-8">
                            <div class="col-lg-12">
                        MALE <form:radiobutton path="gender" value="male"/>
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="form-group">
                    <div class="rows">
                        <div class="col-md-8">
                            <div class="col-lg-12">
                        FEMALE <form:radiobutton path="gender" 

value="female"/>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                   <div class="form-group">
                    <div class="rows">
                        <div class="col-md-8">
                            <div class="col-lg-12">
                        IMAGE <form:input type="file" path="image"/>
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="form-group">
                    <div class="rows">
                        <div class="col-md-8">
                            <div class="col-lg-12">
                                <button class="btn btn-success btn-lg" 

type="submit">Register</button>
                                 <button class="btn btn-danger" 

type="reset">Reset</button>

                            </div>
     
                        </div>
                    </div>
                </div>
 
                </div>
 
                </div> 

                    
    </fieldset>
</form:form>
</div>
</div>
