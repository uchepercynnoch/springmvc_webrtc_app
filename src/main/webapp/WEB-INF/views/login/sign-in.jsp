<%@include file="../include/taglibs_inc.jsp" %>
<!doctype html>
<html class="no-js " lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, customer-scalable=no" name="viewport">
    <meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">
    <c:url value="/resources/" var="resources"/>
    <c:url value="/login" var="userLogin"/>
    <c:url value="/customer/signUp" var="userSignUp"/>
    <title>Sign In</title>
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
                <form class="col-lg-12" id="sign_in" action="${userLogin}" method="POST">
                    <c:if test="${msg != null}">
                        <h5>${msg}</h5>
                    </c:if>
                    <h5 class="title">Sign in to your Account</h5>
                    <div class="form-group form-float">
                        <div class="form-line">
                            <input type="text" name="userName" class="form-control">
                            <label class="form-label">Username</label>
                        </div>
                    </div>
                    <div class="form-group form-float">
                        <div class="form-line">
                            <input type="password" name="userPassword" class="form-control">
                            <label class="form-label">Password</label>
                        </div>
                    </div>
                    <div>
                        <input type="checkbox" name="remember-me" id="rememberme" class="filled-in chk-col-cyan">
                        <label for="rememberme">Remember Me</label>
                    </div>
                    <div class="col-lg-12">
                        <button type="submit" class="btn btn-raised btn-success waves-effect">LOGIN
                            IN
                        </button>
                    </div>
                </form>
                <div class="clearfix"></div>
                <div class="col-lg-12">
                    <a href="${pageContext.request.contextPath}/" class="btn btn-raised btn-primary waves-effect">SIGN
                        IN</a>
                    <a href="${userSignUp}" class="btn btn-raised btn-default waves-effect">SIGN UP</a>
                </div>
                <div class="col-lg-12 m-t-20">
                    <a class="" href="forgot-password.html">Forgot Password?</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Jquery Core Js -->
<script src="${resources}assets/bundles/libscripts.bundle.js"></script>
<script src="${resources}assets/bundles/vendorscripts.bundle.js"></script>
<script src="${resources}assets/bundles/mainscripts.bundle.js"></script>
</body>
</html>