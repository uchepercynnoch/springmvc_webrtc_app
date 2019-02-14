<%--
  Created by IntelliJ IDEA.
  User: uchennannochirionye
  Date: 12/14/18
  Time: 4:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Title</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css">">/
    </head>
    <body>
    <jsp:include page="_header.jsp"/>

    <jsp:include page="_menu.jsp"/>

    <div class="page-title">Finalize</div>

    <div class="container">
    <h3>Thank you for Order</h3>
    Your order number is: ${lastOrderedCart.orderNum}
    </div>

    <jsp:include page="_footer.jsp"/>
    </body>
    </html>
