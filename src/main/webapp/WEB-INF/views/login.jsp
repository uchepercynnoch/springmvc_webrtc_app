<%--
  Created by IntelliJ IDEA.
  User: uchennannochirionye
  Date: 12/14/18
  Time: 4:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>">
</head>
<body>


<jsp:include page="_header.jsp"/>
<jsp:include page="_menu.jsp"/>


<div class="page-title">Login (For Employee, Manager)</div>

<div class="login-container">

    <h3>Enter username and password</h3>
    <br>
    <!-- /login?error=true -->
    <c:if test="${param.error == 'true'}">
        <div style="color: red; margin: 10px 0px;">

            Login Failed!!!<br/> Reason :
                ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}

        </div>
    </c:if>

    <form method="POST"
          action="${pageContext.request.contextPath}/login">
        <table>
            <tr>
                <td>User Name *</td>
                <td><input name="userName"/></td>
            </tr>

            <tr>
                <td>Password *</td>
                <td><input type="password" name="password"/></td>
            </tr>

            <tr>
                <td>&nbsp;</td>
                <td><input type="submit" value="Login"/> <input type="reset"
                                                                value="Reset"/></td>
            </tr>
        </table>
    </form>

    <span class="error-message">${error }</span>

</div>


<jsp:include page="_footer.jsp"/>
</body>
</html>
