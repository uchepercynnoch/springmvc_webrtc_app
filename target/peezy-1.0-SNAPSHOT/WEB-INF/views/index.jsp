<%--
  Created by IntelliJ IDEA.
  User: uchennannochirionye
  Date: 11/22/18
  Time: 3:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Peezy Call App</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
</head>
<body>

<jsp:include page="_header.jsp"/>
<jsp:include page="_menu.jsp"/>

<div class="page-title">Shopping Cart Demo</div>

<div class="demo-container">
    <h3>Demo content</h3>

    <ul>
        <li>Buy online</li>
        <li>Admin pages</li>
        <li>Reports</li>
    </ul>
</div>


<jsp:include page="_footer.jsp"/>
</body>
</html>
