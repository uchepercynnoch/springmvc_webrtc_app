<%--
  Created by IntelliJ IDEA.
  User: uchennannochirionye
  Date: 12/9/18
  Time: 9:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="../include/taglibs_inc.jsp" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<a href='<c:url value="/logout" />'>Logout</a>
<h1>Welcome
    <c:if test="${pageContext.request.userPrincipal.name != null }">
        ${pageContext.request.userPrincipal.name }
    </c:if></h1>
<br/>
<a href='<c:url value="/customer/list" />'>Users List</a>
</body>
</html>
