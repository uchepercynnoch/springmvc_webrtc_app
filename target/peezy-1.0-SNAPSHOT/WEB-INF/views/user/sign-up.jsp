<%@include file="../include/taglibs_inc.jsp" %>
<!doctype html>
<html class="no-js " lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, customer-scalable=no" name="viewport">
    <meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">
    <c:url value="/resources/" var="resources"/>
    <spring:url value="/customer/register" var="registerURL"/>

    <title>Register</title>
    <!-- Favicon-->
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <!-- Custom Css -->
    <link rel="stylesheet" href="${resources}assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${resources}assets/css/main.css">
    <link rel="stylesheet" href="${resources}assets/css/authentication.css">
    <link rel="stylesheet" href="${resources}assets/css/color_skins.css">
</head>

<body class="theme-orange">
<div class="authentication">
    <div class="card">
        <div class="body">
            <div class="row">
                <div class="col-lg-12">
                    <div class="header slideDown">
                        <div class="logo"><img src="${resources}assets/images/logo.png" alt="Nexa"></div>
                        <h1>PEEZY</h1>
                        <ul class="list-unstyled l-social">
                            <li><a href="#"><i class="zmdi zmdi-facebook-box"></i></a></li>
                            <li><a href="#"><i class="zmdi zmdi-linkedin-box"></i></a></li>
                            <li><a href="#"><i class="zmdi zmdi-twitter"></i></a></li>
                        </ul>
                    </div>
                </div>
                <form:form modelAttribute="customerForm" action="${registerURL}" class="col-lg-12" id="sign_in"
                           method="POST">
                    <h5 class="title">Register a new membership</h5>
                    <div class="form-group form-float">
                        <div class="form-line">
                            <form:input path="userName" type="text" cssClass="form-control"/>
                            <form:errors path="userName" cssErrorClass="alert alert-warning"/>
                            <label class="form-label">Name Surname</label>
                        </div>
                    </div>
                    <div class="form-group form-float">
                        <div class="form-line">
                            <form:input path="userPassword" type="password" cssClass="form-control"/>
                            <form:errors path="userPassword" cssErrorClass="alert alert-warning"/>
                            <label class="form-label">Password</label>
                        </div>
                    </div>
                    <div class="form-group form-float">
                        <div class="form-line">
                            <form:input path="confirmPassword" type="password" class="form-control"/>
                            <form:errors path="confirmPassword" cssErrorClass="alert alert-warning"/>
                            <label class="form-label">Confirm Password</label>
                        </div>
                    </div>
                    <div>
                        <input type="checkbox" name="terms" id="terms" class="filled-in chk-col-pink">
                        <label for="terms">I read and agree to the <a href="javascript:void(0);">terms of
                            usage</a>.</label>
                    </div>
                    <div class="col-lg-12">
                        <button type="submit" class="btn btn-raised btn-success waves-effect">REGISTER</button>
                    </div>
                </form:form>

                <div class="col-lg-12 m-t-20">
                    <a href="${pageContext.request.contextPath}/login">You already have a membership?</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Jquery Core Js -->
<script src="${resources}assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->
<script src="${resources}assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->
<script src="${resources}assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js -->
</body>
</html>
