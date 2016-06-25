<!doctype html>
 <%@include file="Header.jsp" %>
<html>
   
   <head>
   <script type="text/javascript" src="resources/bootstrap/js/angular.min.js"></script>
     <!--  <script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.3.3/angular.min.js"></script> -->
     
      <script> 
var prod;
var app=angular.module("searchApp",[]).controller("TableCtrl",function($scope)
                    {
            
             $scope.prod=${access};
                    });

</script> 
</head>
   
   
   
   
   
   <body>
    
   <br><br><br><br><br><br><br><br>
 <div  ng-app="searchApp">
	 <div ng-controller="TableCtrl" style="padding-left:300px;width:1000px; ">
	
	<table class="table table-bordered span5 center-table"> 
 	<thead class="thead-inverse">
 	<tr>
 	<th>Id</th>
 	<th>TITLE</th>
 	<th>CONTENT</th>
 	
 </tr>
 	</thead>
 		<tbody>
 	
    
   <tr  ng-repeat="p in prod">
 <td>{{ p.blogid }}</td>
    <td>{{ p.title }}</td>
    <td>{{p.content}}</td>
    
   </tr>
   </tbody>
   </table>
   </div>
   </div>
</html>