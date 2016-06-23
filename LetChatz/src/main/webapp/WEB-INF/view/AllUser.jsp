<%@ include file="Header.jsp"%>
<style>

table {
    border-collapse: collapse;
    border-spacing: 0;
    width: 100%;
    border: 1px solid #ddd;
    display: block;
}

th, td {
    border: 1px solid lightblack;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

</style>

<section data-ng-app="">
	<div class="table responsive">
		<div class="table" style="overflow-x:auto;">
			<div style="height: 50px; padding-left: 200px; width: 500px;">
				<label>Search Element <input type="text" id="search"
					data-ng-model="search" value="${param.item}"
					data-ng-init="search='${param.item}'"></label>
			</div>
			<br>

			<script>
				$(window).load(function() {
					searchTable($('#search').val());
				});

				$(document).ready(function() {
					$('#search').keyup(function() {
						searchTable($(this).val());
					});
				});

				function searchTable(inputVal) {
					var table = $('#myTable');
					table.find('tr').each(function(index, row) {
						var allCells = $(row).find('td');
						if (allCells.length > 0) {
							var found = false;
							allCells.each(function(index, td) {
								var regExp = new RegExp(inputVal, 'i');
								if (regExp.test($(td).text())) {
									found = true;
									return false;
								}
							});
							if (found == true)
								$(row).show();
							else
								$(row).hide();
						}
					});
				}
			</script>
		
				<table id="myTable" class="span5 center-table">
					<tr>
					    <th>User ID</th>
						<th>Username</th>
						<th>Password</th>
						<th>Email ID</th>
					<th>MOBILE</th>
						<th>CITY</th>
						<th>Profile Pic</th>
						<th>Admin Operations</th>

					</tr>
					<c:if test="${not empty users}">

						<c:forEach var="user" items="${users}">
							<tr>
								<td><c:out value="${user.id}"></c:out></td>
								<td><c:out value=" ${user.name}"></c:out></td>
								<td><c:out value=" ${user.password}"></c:out></td>
								<td><c:out value=" ${user.email}"></c:out></td>
								<td><c:out value=" ${user.mobile}"></c:out></td>
								<td><c:out value=" ${user.city}"></c:out></td>
								<td><img src="<c:url value='/resources/pics/${user.id}.jpg' />" height="50" width="50" /></td>
								 <td><%-- <a
									href="<spring:url value="/viewUser?userid=${user.id}" />"
									class="btn btn-info"> <span
										class="glyphicon-info-sign glyphicon"> </span> Details
								</a> 
										<a
											href="<spring:url value="/editUser?userid=${user.id}" />"
											class="btn btn-danger"> <span
											class="glyphicon-info-sign glyphicon"> </span> Update
										</a> --%>
										<a
											href="<spring:url value="/remove/${user.id}" />"
											class="btn btn-warning"> <span
											class="glyphicon-info-sign glyphicon"> </span> Delete
										</a>
									
								</td>
							</tr>
						</c:forEach>
					</c:if>
				</table>
		</div>
	</div>

</section>
<%@ include file="Footer.jsp"%>