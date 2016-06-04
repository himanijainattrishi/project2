<%@include file="Header.jsp"%>



<div class="container">
 
 
        <div class="well">
            <form:form action="useradd1" method="post"  class="form-horizontal well"  commandName="user">
            <fieldset>
              <legend>Register Now</legend>
            
                 <div class="row">
 
                    <div class="col-xs-8">
                    <div class="form-group">
                    <div class="rows">
                        <div class="col-md-8">
                            <div class="col-lg-6">
                            Username:<form:input path="name" class="form-control input-lg" />
                            </div>
 
                            <div class="col-lg-6">
                              LastName  <form:input path="lastName" class="form-control input-lg" />
                            </div>
                        </div>
                    </div>
                </div>
 
                <div class="form-group">
                    <div class="rows">
                        <div class="col-md-8">
                            <div class="col-lg-12">
                             Email   <form:input path="email" class="form-control input-lg" />
                            </div>
                        </div>
                    </div>
                </div>
 
               <!--  <div class="form-group">
                    <div class="rows">
                        <div class="col-md-8">
                            <div class="col-lg-12">
                                <input class="form-control input-lg" id="reemail" name="reemail" placeholder="Re-enter Email" type="text">
                            </div>
                        </div>
                    </div>
                </div> -->
 
                <div class="form-group">
                    <div class="rows">
                        <div class="col-md-8">
                            <div class="col-lg-12">
                          Password   <form:password path="password" class="form-control input-lg"/> 
                              
                            </div>
                        </div>
                    </div>
                </div>
                
               <%--   <div class="form-group">
                    <div class="rows">
                        <div class="col-md-8">
                            <div class="col-lg-12">
                       Address   <form:input path="address" class="form-control input-lg"/> 
                              
                            </div>
                        </div>
                    </div>
                </div> --%>
                
                 <%--  <div class="form-group">
                    <div class="rows">
                        <div class="col-md-8">
                            <div class="col-lg-12">
                     Country   <form:select path="address.country" class="form-control input-lg"> 
                        <form:option value="none">SELECT</form:option> 
                        <form:option value="INDIA">INDIA</form:option>  
        <form:option value="NEPAL">NEPAL</form:option>
        <form:option value="OTHER">OTHERS</form:option>  </form:select>
                              
                            </div>
                        </div>
                    </div>
                </div>
                 --%>
                
                
                
                
                
                
                
              
                
               <div class="form-group">
                    <div class="rows">
                        <div class="col-md-8">
                            <div class="col-lg-12">
                        PinCode   <form:input path="address.pincode" class="form-control input-lg"/> 
                              
                            </div>
                        </div>
                    </div>
                </div> 
               <%--   <div class="form-group">
                    <div class="rows">
                        <div class="col-md-8">
                            <div class="col-lg-12">
                        State   <form:input path="address.state" class="form-control input-lg"/> 
                              
                            </div>
                        </div>
                    </div>
                </div> --%>
                <%--  <div class="form-group">
                    <div class="rows">
                        <div class="col-md-8">
                            <div class="col-lg-12">
                    Mobile  <form:input path="address.mobile" class="form-control input-lg"/> 
                              
                            </div>
                        </div>
                    </div>
                </div> --%>
                
                
                
                
                
              <!--   <div class="form-group">
                    <div class="rows">
                        <div class="col-md-8">
                            <h4>Select DOB</h4>
                            
                            <div id="datepicker" class="input-group date" data-date-format="mm-dd-yyyy">
    <input class="form-control" type="datetime" name="dob" readonly />
    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
</div>

 </div>
                    </div>
                </div> -->
 
                <div class="form-group">
                    <div class="rows">
                        <div class="col-md-4">
                            <div class="col-lg-6">
                                <div class="radio">
                               Female    <label><form:radiobutton path="gender"/></label>
                                </div>
                            </div>
 
                            <div class="col-lg-6">
                                <div class="radio">
                              Male      <label><form:radiobutton path="gender"/></label>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    
                    <%--   <div class="form-group">
                    <div class="rows">
                        <div class="col-md-8">Photo to Upload
                            <div class="col-lg-12">
                  <form:input type="file" path="image" class="form-control input-lg"/> 
                              
                            </div>
                        </div>
                    </div> --%>
                </div>
                    
                    
                    
                    
                    
                    
                </div>
 
                <div class="form-group">
                    <div class="rows">
                        <div class="col-md-8">
                            <div class="col-lg-12">
                                <button class="btn btn-success btn-lg" type="submit">Register</button>
                                 <button class="btn btn-danger" type="reset">Reset</button>
                            </div>
                            
                            
                              
                          
                            
                        </div>
                    </div>
                </div>
 
                </div>
 
                </div> 
                </fieldset>
            </form:form>
        </div>
    </div><!-- /container -->
    
    <%@include file="Footer.jsp"%>

                            
                            
                            
                            
                            
                            
                            
                            
                           
 
                           
                           
                       