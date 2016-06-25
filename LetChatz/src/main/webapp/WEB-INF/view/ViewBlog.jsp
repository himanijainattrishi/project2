<%@include file="Header.jsp"%>
<%@page isELIgnored="false" %>
<br>
<br><br><br>
 <c:if test="${not empty blog}">
<c:forEach var="blog" items="${blog}">

      <div class="container">
      <div class="row">
      <div class="col-sm-7">
        <h3><b><font size=5 color="green">${blog.title}</font></b></h3>
        <p>${blog.content}</p>
         <p><b>Last Published:: ${blog.date}</b></p>
          <p><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="blue"> Created By${blog.user}</font></b></p>
       </div>
        </div>
      </div> 
   
  
</c:forEach>
</c:if> 
