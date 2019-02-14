<%--
  Created by IntelliJ IDEA.
  User: uchennannochirionye
  Date: 12/9/18
  Time: 10:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="../include/taglibs_inc.jsp" %>
<html>
<head>
    <title>Change Password</title>
</head>
<body>
<spring:url value="/customer/save" var="saveURL"/>
<form:form method="post" modelAttribute="customer" action="${saveURL }">
    <form:hidden path="userName"/>
    <table border="1">
        <tr>
            <td colspan="2">${msg }</td>
        </tr>
        <tr>
            <td>Username:</td>
            <td>${customer.userName }</td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><form:password path="userPassword"/></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <button type="submit">Change Password</button>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
