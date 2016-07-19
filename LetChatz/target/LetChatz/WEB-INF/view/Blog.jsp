<%@include file="Header.jsp"%>

<br><br><br>

<html>
   
   <head>
   <script type="text/javascript" src="resources/bootstrap/js/angular.min.js"></script>
     <!--  <script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.3.3/angular.min.js"></script> -->
   </head>
   



  <script> 

var app=angular.module("searchApp",[]).controller("TableCtrl",function($scope)
                    {
            
             $scope.prod=${access};
                    });

</script> 
</head>
<form:form action="addblog" method="post" commandName="blog">

<body>
 
	
<div class="container">
    <div class="row">
        <form role="form">
            <div class="col-lg-6">
                <div class="well well-sm"><strong><span class="glyphicon glyphicon-asterisk"></span>Required Field</strong></div>
                <div class="form-group">
                    <label for="InputName">BLOG POST TITLE</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="title" id="title" placeholder="Enter Name" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
              
               
                <div class="form-group">
                    <label for="InputMessage">BLOG POST CONTENT</label>
                    <div class="input-group">
                        <textarea name="content" id="content1" class="form-control" rows="5" required></textarea>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                 <button class="btn btn-danger" type="reset">Reset</button>
                <input type="submit" name="submit" id="submit" value="Publish" class="btn btn-info pull-right">
               
            </div>
            </form></div>
            </div>
          
        </form:form>
       
   
             
           
             
         
   
</body>