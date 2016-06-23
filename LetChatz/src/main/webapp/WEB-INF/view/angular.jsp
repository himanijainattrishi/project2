<!doctype html>
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
    
   
 <div  ng-app="searchApp">
	 <div ng-controller="TableCtrl">
	 <table class ="table table-bordered">
 	<thead>
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
     <td>{{4+3}}</td>
   </tr>
   </tbody>
   </table>
   </div>
   </div>
</html>