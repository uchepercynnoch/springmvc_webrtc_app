<%--
  Created by IntelliJ IDEA.
  User: uchennannochirionye
  Date: 12/14/18
  Time: 4:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>">
</head>
<body>
<jsp:include page="_header.jsp"/>
<jsp:include page="_menu.jsp"/>

<div class="page-title">Enter Customer Information</div>

<form:form method="POST" modelAttribute="customerForm"
           action="${pageContext.request.contextPath}/shoppingCartCustomer">

    <table>
        <tr>
            <td>Name *</td>
            <td><form:input path="name"/></td>
            <td><form:errors path="name" class="error-message"/></td>
        </tr>

        <tr>
            <td>Email *</td>
            <td><form:input path="email"/></td>
            <td><form:errors path="email" class="error-message"/></td>
        </tr>

        <tr>
            <td>Phone *</td>
            <td><form:input path="phone"/></td>
            <td><form:errors path="phone" class="error-message"/></td>
        </tr>

        <tr>
            <td>Address *</td>
            <td><form:input path="address"/></td>
            <td><form:errors path="address" class="error-message"/></td>
        </tr>

        <tr>
            <td>&nbsp;</td>
            <td><input type="submit" value="Submit"/> <input type="reset"
                                                             value="Reset"/></td>
        </tr>
    </table>

</form:form>


<jsp:include page="_footer.jsp"/>
</body>
</html>
