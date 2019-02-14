<%--
  Created by IntelliJ IDEA.
  User: uchennannochirionye
  Date: 12/14/18
  Time: 4:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>">
</head>
<body>
<jsp:include page="_header.jsp"/>
<jsp:include page="_menu.jsp"/>

<div class="page-title">Account Info</div>

<div class="account-container">


    <ul>
        <li>User Name: ${pageContext.request.userPrincipal.name}</li>
        <li>Role:
            <ul>
                <c:forEach items="${userDetails.authorities}" var="auth">
                    <li>${auth.authority }</li>
                </c:forEach>
            </ul>
        </li>
    </ul>
</div>


<jsp:include page="_footer.jsp"/>
</body>
</html>
