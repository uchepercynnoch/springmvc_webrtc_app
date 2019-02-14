<%--
  Created by IntelliJ IDEA.
  User: uchennannochirionye
  Date: 12/9/18
  Time: 9:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="../include/taglibs_inc.jsp" %>
<html>
<head>
    <title>Login</title>
    <c:url value="/login" var="userLogin"/>
    <c:url value="/customer/signUp" var="userSignUp"/>
</head>
<body>
<form name="loginForm" action='${userLogin}' method="post">
    <table>
        <tr>
            <td colspan="2">Login</td>
        </tr>
        <tr>
            <td colspan="2">${msg }</td>
        </tr>
        <tr>
            <td>Username:</td>
            <td>
                <input type="text" name="username"/>
            </td>
        </tr>
        <tr>
            <td>Password:</td>
            <td>
                <input type="password" name="password"/>
            </td>
        </tr>
        <tr>
            <td>Remember Me:</td>
            <td>
                <input type="checkbox" name="remember-me"/>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <button type="submit">Login</button>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <a href='${userSignUp}'>Sign up</a>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
