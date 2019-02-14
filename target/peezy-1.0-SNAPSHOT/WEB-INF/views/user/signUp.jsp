<%--
  Created by IntelliJ IDEA.
  User: uchennannochirionye
  Date: 12/9/18
  Time: 10:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="../include/taglibs_inc.jsp" %>
<html>
<head>
    <title>SignUp</title>
</head>
<body>
<spring:url value="/customer/register" var="registerURL"/>
<form:form action="${registerURL}" modelAttribute="customerForm" method="post">
    <label>Username: </label>
    <form:input path="userName" type="text"/>
    <form:errors path="userName"/>
    <br/>
    <label>Password: </label>
    <form:password path="userPassword"/>
    <form:errors path="userPassword"/>
    <br/>
    <label>Confirm Password: </label>
    <form:password path="confirmPassword"/>
    <form:errors path="confirmPassword"/>
    <br/>
    <button type="submit">Sign up</button>

</form:form>
</body>
</html>
