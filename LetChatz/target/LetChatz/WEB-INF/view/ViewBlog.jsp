<%@include file="Header.jsp"%>
<%@page isELIgnored="false" %>



<script> 
var prod;
var app=angular.module("searchApp",[]).controller("TableCtrl",function($scope)
                    {
            
             $scope.prod=${blog};
                    });

</script>




<body ng-app="searchApp">
 
	
	<div class="container" ng-controller="TableCtrl">
 	<div class="search"> 
 	<div class ="col-sm-8"></div>
 	<div class="col-sm-4">
    <input type="search" ng-model="searchText" class="form-control" id="inputSearch" 

placeholder="Search Here" /></div>
     <div>
    <div class="table-responsive bs-example"> 
    <table class="table table-inverse">
        <thead>
            <tr>
                  <th>Title</th>
						
						<th>Author</th>
						<th>Date</th>
						<th>Content</th>
					
            </tr>
        </thead>
        <tbody>
        <tr ng-repeat="p in prod|filter:searchText">
    <td>{{p.title}}  </td>
    <td>{{p.user}}</td>
    <td>{{p.date}}</td>
    <td>{{p.content}}</td>
    
    
    </tr>   
         
        </tbody>
    </table>
</div>

</div>





 
</div>






<%-- <div class="container">
<div class="row">
<div class="col-sm-7"></div><div class="col-sm-5"></div></div>
<br>
<br><br><br>
 

<table align="center" id="myTable" class="table table-inverse"  width:30px;>
<tr>
					    <th>Title</th>
						
						<th>Author</th>
						<th>Date</th>
						<th>Content</th>
					

					</tr>
					<c:if test="${not empty blog}">
<c:forEach var="blog" items="${blog}">
							<tr>
								<td><c:out value="${blog.title}"></c:out></td>
							
								<td><c:out value=" ${blog.user}"></c:out></td>
								<td><c:out value=" ${blog.date}"></c:out></td>
								
									<td><c:out value=" ${blog.content}"></c:out></td>
								
							</tr>
						</c:forEach>
					</c:if>
				</table></div>
	<!-- 	</div>
	</div>

</section> --> --%>
<%@ include file="Footer.jsp"%>
