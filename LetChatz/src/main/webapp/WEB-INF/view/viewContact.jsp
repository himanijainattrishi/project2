<%@include file="Header.jsp"%>
<%@page isELIgnored="false" %>
<br><br><br>

 	<table align="center" id="myTable" class="table table-inverse" width:30px;>
					<tr>
					    <th>Customer ID</th>
						<th>Customer Name</th>
						<th>Customer Mobile</th>
						<th>Email ID</th>
					<th>Message</th>
						
						<th>Delete</th>

					</tr>
					<c:if test="${not empty customer}">
<c:forEach var="customer" items="${customer}">
							<tr>
								<td><c:out value="${customer.id}"></c:out></td>
								<td><c:out value=" ${customer.name}"></c:out></td>
								<td><c:out value=" ${customer.mobile}"></c:out></td>
								<td><c:out value=" ${customer.email}"></c:out></td>
							
								<td><c:out value=" ${customer.message}"></c:out></td>
								 <td>
										<a
											href="<spring:url value="/delete/${customer.id}" />"
											class="btn btn-warning"> <span
											class="glyphicon-info-sign glyphicon"> </span> Delete
										</a>
									
								</td>
							</tr>
						</c:forEach>
					</c:if>
				</table>
