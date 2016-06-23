<%@include file="Header.jsp"%>
<%@page isELIgnored="false" %>

<c:if test="${not empty blog}">
<c:forEach var="blog" items="${blog}">
<p>${blog.title}</p><br>
<p>${blog.content}</p><br>


</c:forEach>
</c:if>

