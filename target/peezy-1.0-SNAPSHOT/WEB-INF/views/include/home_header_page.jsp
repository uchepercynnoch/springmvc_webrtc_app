<%@include file="../include/taglibs_inc.jsp" %>
<!doctype html>
<html class="no-js " lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, customer-scalable=no" name="viewport">
    <meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">
    <c:url value="/resources/" var="resources"/>
    <c:url value="/logout" var="logOut"/>
    <c:url value="/customer/list" var="userList"/>
    <c:url value="/customer/audioCall" var="audioCall"/>

    <title>Profile</title>
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <!-- Favicon-->
    <link rel="stylesheet" href="${resources}assets/plugins/bootstrap/css/bootstrap.min.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <!-- Custom Css -->
    <link rel="stylesheet" href="${resources}assets/css/main.css">
    <link rel="stylesheet" href="${resources}assets/css/color_skins.css">
    <style>

        .modal {
            text-align: center;
            padding: 0 !important;
        }

        .modal:before {
            content: '';
            display: inline-block;
            height: 100%;
            vertical-align: middle;
            margin-right: -4px;
        }

        .modal-dialog {
            display: inline-block;
            text-align: left;
            vertical-align: middle;
        }

        .row1 {
            margin: 0 auto;
            width: 200px;
            clear: both;
            text-align: center;
            font-family: 'Exo';
        }

        .digit,
        .dig {
            float: left;
            padding: 10px 30px;
            width: 30px;
            font-size: 2rem;
            cursor: pointer;
        }

        .sub {
            font-size: 0.8rem;
            color: grey;
        }

        .container1 {
            background-color: white;
            width: 320px;
            padding: 20px;
            margin: 30px auto;
            height: 480px;
            text-align: center;
            box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px rgba(0, 0, 0, 0.22);
        }

        #output {
            font-family: "Exo";
            font-size: 2rem;
            height: 60px;
            font-weight: bold;
            color: #1976d2;
        }

        #call {
            display: inline-block;
            background-color: #66bb6a;
            padding: 4px 30px;
            margin: 10px;
            color: white;
            border-radius: 4px;
            float: left;
            cursor: pointer;
        }

        .botrow {
            margin: 0 auto;
            width: 200px;
            clear: both;
            text-align: center;
            font-family: 'Exo';
        }

        .digit:active,
        .dig:active {
            background-color: #e6e6e6;
        }

        #call:hover {
            background-color: #81c784;
        }

        .dig {
            float: left;
            padding: 10px 20px;
            margin: 5px;
            width: 30px;
            cursor: pointer;
        }
    </style>
</head>
<body class="theme-orange">
<!-- Page Loader -->
<div class="page-loader-wrapper">
    <div class="loader">
        <div class="line"></div>
        <div class="line"></div>
        <div class="line"></div>
        <p>Please wait...</p>
        <div class="m-t-30"><img src="${resources}assets/images/logo.svg" width="48" height="48" alt="Nexa"></div>
    </div>
</div>

<!-- Overlay For Sidebars -->
<div class="overlay"></div>

<!-- Search  -->
<div class="search-bar">
    <div class="search-icon"><i class="material-icons">search</i></div>
    <input type="text" placeholder="Explore Nexa...">
    <div class="close-search"><i class="material-icons">close</i></div>
</div>

<!-- Top Bar -->
<nav class="navbar">
    <div class="col-12">

        <div class="navbar-header">
            <a href="javascript:void(0);" class="bars"></a>
            <a class="navbar-brand" href="index.html">Peezy</a>
        </div>

        <ul class="nav navbar-nav navbar-left">
            <li><a href="javascript:void(0);" class="ls-toggle-btn" data-close="true"><i class="zmdi zmdi-swap"></i></a>
            </li>
            <li><a href="mail-inbox.html" class="inbox-btn hidden-sm-down" data-close="true"><i
                    class="zmdi zmdi-email"></i></a></li>
            <li class="dropdown menu-app hidden-sm-down"><a href="javascript:void(0);" class="dropdown-toggle"
                                                            data-toggle="dropdown" role="button"> <i
                    class="zmdi zmdi-apps"></i> </a>
                <ul class="dropdown-menu slideDown">
                    <li class="body">
                        <ul class="menu">
                            <li><a href="blog-dashboard.html"><i class="zmdi zmdi-blogger"></i><span>Blog</span></a>
                            </li>
                            <li><a href="contact.html"><i class="zmdi zmdi-accounts-list"></i><span>Contacts</span></a>
                            </li>
                            <li><a href="chat.html"><i class="zmdi zmdi-comment-text"></i><span>Chat</span></a></li>
                            <li><a href="javascript:void(0)"><i class="zmdi zmdi-arrows"></i><span>Notes</span></a></li>
                            <li><a href="javascript:void(0)"><i class="zmdi zmdi-view-column"></i><span>Taskboard</span></a>
                            </li>
                            <li><a href="events.html"><i class="zmdi zmdi-calendar-note"></i><span>Calendar</span></a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="javascript:void(0);" class="js-search" data-close="true"><i class="zmdi zmdi-search"></i></a>
            </li>
            <li class="dropdown"><a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown"
                                    role="button"><i class="zmdi zmdi-notifications"></i>
                <div class="notify"><span class="heartbit"></span><span class="point"></span></div>
            </a>
                <ul class="dropdown-menu slideDown">
                    <li class="header">NOTIFICATIONS</li>
                    <li class="body">
                        <ul class="menu list-unstyled">
                            <li><a href="javascript:void(0);">
                                <div class="icon-circle l-coral"><i class="material-icons">person_add</i></div>
                                <div class="menu-info">
                                    <h4>12 new members joined</h4>
                                    <p><i class="material-icons">access_time</i> 14 mins ago </p>
                                </div>
                            </a></li>
                            <li><a href="javascript:void(0);">
                                <div class="icon-circle l-turquoise"><i class="material-icons">add_shopping_cart</i>
                                </div>
                                <div class="menu-info">
                                    <h4>4 sales made</h4>
                                    <p><i class="material-icons">access_time</i> 22 mins ago </p>
                                </div>
                            </a></li>
                            <li><a href="javascript:void(0);">
                                <div class="icon-circle g-bg-cyan"><i class="material-icons">delete_forever</i></div>
                                <div class="menu-info">
                                    <h4><b>Nancy Doe</b> deleted account</h4>
                                    <p><i class="material-icons">access_time</i> 3 hours ago </p>
                                </div>
                            </a></li>
                            <li><a href="javascript:void(0);">
                                <div class="icon-circle g-bg-blue"><i class="material-icons">mode_edit</i></div>
                                <div class="menu-info">
                                    <h4><b>Nancy</b> changed name</h4>
                                    <p><i class="material-icons">access_time</i> 2 hours ago </p>
                                </div>
                            </a></li>
                            <li><a href="javascript:void(0);">
                                <div class="icon-circle l-slategray"><i class="material-icons">comment</i></div>
                                <div class="menu-info">
                                    <h4><b>John</b> commented your post</h4>
                                    <p><i class="material-icons">access_time</i> 4 hours ago </p>
                                </div>
                            </a></li>
                            <li><a href="javascript:void(0);">
                                <div class="icon-circle l-seagreen"><i class="material-icons">cached</i></div>
                                <div class="menu-info">
                                    <h4><b>John</b> updated status</h4>
                                    <p><i class="material-icons">access_time</i> 3 hours ago </p>
                                </div>
                            </a></li>
                            <li><a href="javascript:void(0);">
                                <div class="icon-circle l-blue"><i class="material-icons">settings</i></div>
                                <div class="menu-info">
                                    <h4>Settings updated</h4>
                                    <p><i class="material-icons">access_time</i> Yesterday </p>
                                </div>
                            </a></li>
                        </ul>
                    </li>
                    <li class="footer"><a href="javascript:void(0);">View All Notifications</a></li>
                </ul>
            </li>
            <li class="dropdown"><a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown"
                                    role="button"><i class="zmdi zmdi-flag"></i>
                <div class="notify"><span class="heartbit"></span><span class="point"></span></div>
            </a>
                <ul class="dropdown-menu slideDown">
                    <li class="header">TASKS</li>
                    <li class="body">
                        <ul class="menu tasks list-unstyled">
                            <li><a href="javascript:void(0);">
                                <h4> Footer display issue
                                    <small>72%</small>
                                </h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="72"
                                         aria-valuemin="0" aria-valuemax="100" style="width: 68%;"></div>
                                </div>
                            </a></li>
                            <li><a href="javascript:void(0);">
                                <h4> Make new buttons
                                    <small>56%</small>
                                </h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="56"
                                         aria-valuemin="0" aria-valuemax="100" style="width: 68%;"></div>
                                </div>
                            </a></li>
                            <li><a href="javascript:void(0);">
                                <h4> Create new dashboard
                                    <small>68%</small>
                                </h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped" role="progressbar" aria-valuenow="68"
                                         aria-valuemin="0" aria-valuemax="100" style="width: 68%;"></div>
                                </div>
                            </a></li>
                            <li><a href="javascript:void(0);">
                                <h4> Solve transition issue
                                    <small>77%</small>
                                </h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="77"
                                         aria-valuemin="0" aria-valuemax="100" style="width: 68%;"></div>
                                </div>
                            </a></li>
                            <li><a href="javascript:void(0);">
                                <h4> Answer GitHub questions
                                    <small>87%</small>
                                </h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="87"
                                         aria-valuemin="0" aria-valuemax="100" style="width: 68%;"></div>
                                </div>
                            </a></li>
                        </ul>
                    </li>
                    <li class="footer"><a href="javascript:void(0);">View All Tasks</a></li>
                </ul>
            </li>
            <li>
                <a href="javascript:void(0);" class="fullscreen hidden-sm-down" data-provide="fullscreen"
                   data-close="true">
                    <i class="zmdi zmdi-fullscreen"></i>
                </a>
            </li>
            <li><a href="${logOut}" class="mega-menu" data-close="true"><i class="zmdi zmdi-power"></i></a></li>
            <li class=""><a href="javascript:void(0);" class="js-right-sidebar" data-close="true"><i
                    class="zmdi zmdi-settings zmdi-hc-spin"></i></a></li>
        </ul>
    </div>
</nav>

<!-- Left Sidebar -->
<aside id="leftsidebar" class="sidebar">
    <!-- Customer Info -->
    <div class="customer-info">
        <div class="image"><img src="${resources}assets/images/xs/avatar1.jpg" width="48" height="48" alt="User"/></div>
        <div class="info-container">
            <div class="name" data-toggle="dropdown"><c:if test="${pageContext.request.userPrincipal.name != null}">
                ${pageContext.request.userPrincipal.name}
            </c:if></div>
            <div class="email">john.doe@example.com</div>
            <div class="btn-group customer-helper-dropdown"><i class="material-icons" data-toggle="dropdown"
                                                           aria-haspopup="true" aria-expanded="true" role="button">
                keyboard_arrow_down </i>
                <ul class="dropdown-menu pull-right">
                    <li><a href="profile.jsp"><i class="material-icons">person</i>Profile</a></li>
                    <li class="divider"></li>
                    <li><a href="javascript:void(0);"><i class="material-icons">group</i>Followers</a></li>
                    <li><a href="javascript:void(0);"><i class="material-icons">shopping_cart</i>Sales</a></li>
                    <li><a href="javascript:void(0);"><i class="material-icons">favorite</i>Likes</a></li>
                    <li class="divider"></li>
                    <li><a href="${logOut}"><i class="material-icons">input</i>Sign Out</a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- #Customer Info -->
    <!-- Menu -->
    <div class="menu">
        <ul class="list">
            <li class="header">MAIN NAVIGATION</li>

            <li><a href="widgets.jsp"><i class="zmdi zmdi-delicious"></i><span>Widgets</span> </a></li>
            <li><a href="mail-inbox.html"><i class="zmdi zmdi-email"></i><span>Inbox</span> </a></li>
            <li><a href="blog-dashboard.html"><i class="zmdi zmdi-blogger"></i><span>Blogger</span> </a></li>
        </ul>
    </div>
    <!-- #Menu -->
</aside>

<!-- Right Sidebar -->
<aside id="rightsidebar" class="right-sidebar">
    <ul class="nav nav-tabs">
        <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#skins">Skins</a></li>
        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#chat">Chat</a></li>
        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#settings">Setting</a></li>
    </ul>
    <div class="tab-content">
        <div role="tabpanel" class="tab-pane in active in active slideRight" id="skins">
            <div class="slim_scroll">
                <h6>Flat Color</h6>
                <ul class="choose-skin">
                    <li data-theme="purple">
                        <div class="purple"></div>
                        <span>Purple</span></li>
                    <li data-theme="blue">
                        <div class="blue"></div>
                        <span>Blue</span></li>
                    <li data-theme="cyan">
                        <div class="cyan"></div>
                        <span>Cyan</span>
                    </li>
                </ul>
                <h6>Multi Color</h6>
                <ul class="choose-skin">
                    <li data-theme="black">
                        <div class="black"></div>
                        <span>Black</span></li>
                    <li data-theme="deep-purple">
                        <div class="deep-purple"></div>
                        <span>Deep Purple</span></li>
                    <li data-theme="red">
                        <div class="red"></div>
                        <span>Red</span>
                    </li>
                </ul>
                <h6>Gradient Color</h6>
                <ul class="choose-skin">
                    <li data-theme="green">
                        <div class="green"></div>
                        <span>Green</span></li>
                    <li data-theme="orange" class="active">
                        <div class="orange"></div>
                        <span>Orange</span></li>
                    <li data-theme="blush">
                        <div class="blush"></div>
                        <span>Blush</span>
                    </li>
                </ul>
            </div>
        </div>
        <div role="tabpanel" class="tab-pane pullUp" id="chat">
            <div class="right_chat slim_scroll">
                <div class="search">
                    <div class="input-group">
                        <div class="form-line">
                            <input type="text" class="form-control" placeholder="Search..." required autofocus>
                        </div>
                    </div>
                </div>
                <h6>Recent</h6>
                <ul class="list-unstyled">
                    <li class="online">
                        <a href="javascript:void(0);">
                            <div class="media">
                                <img class="media-object " src="${resources}assets/images/xs/avatar4.jpg" alt="">
                                <div class="media-body">
                                    <span class="name">Sophia</span>
                                    <span class="message">There are many variations of passages of Lorem Ipsum available</span>
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="online">
                        <a href="javascript:void(0);">
                            <div class="media">
                                <img class="media-object " src="${resources}assets/images/xs/avatar5.jpg" alt="">
                                <div class="media-body">
                                    <span class="name">Grayson</span>
                                    <span class="message">All the Lorem Ipsum generators on the</span>
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="offline">
                        <a href="javascript:void(0);">
                            <div class="media">
                                <img class="media-object " src="${resources}assets/images/xs/avatar2.jpg" alt="">
                                <div class="media-body">
                                    <span class="name">Isabella</span>
                                    <span class="message">Contrary to popular belief, Lorem Ipsum</span>
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="me">
                        <a href="javascript:void(0);">
                            <div class="media">
                                <img class="media-object " src="${resources}assets/images/xs/avatar1.jpg" alt="">
                                <div class="media-body">
                                    <span class="name">John</span>
                                    <span class="message">It is a long established fact that a reader</span>
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="online">
                        <a href="javascript:void(0);">
                            <div class="media">
                                <img class="media-object " src="${resources}assets/images/xs/avatar3.jpg" alt="">
                                <div class="media-body">
                                    <span class="name">Alexander</span>
                                    <span class="message">Richard McClintock, a Latin professor</span>
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
                <h6>Contacts</h6>
                <ul class="list-unstyled">
                    <li class="offline inlineblock">
                        <a href="javascript:void(0);">
                            <div class="media">
                                <img class="media-object " src="${resources}assets/images/xs/avatar10.jpg" alt="">
                                <div class="media-body">
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="offline inlineblock">
                        <a href="javascript:void(0);">
                            <div class="media">
                                <img class="media-object " src="${resources}assets/images/xs/avatar6.jpg" alt="">
                                <div class="media-body">
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="offline inlineblock">
                        <a href="javascript:void(0);">
                            <div class="media">
                                <img class="media-object " src="${resources}assets/images/xs/avatar7.jpg" alt="">
                                <div class="media-body">
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="offline inlineblock">
                        <a href="javascript:void(0);">
                            <div class="media">
                                <img class="media-object " src="${resources}assets/images/xs/avatar8.jpg" alt="">
                                <div class="media-body">
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="offline inlineblock">
                        <a href="javascript:void(0);">
                            <div class="media">
                                <img class="media-object " src="${resources}assets/images/xs/avatar9.jpg" alt="">
                                <div class="media-body">
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="online inlineblock">
                        <a href="javascript:void(0);">
                            <div class="media">
                                <img class="media-object " src="${resources}assets/images/xs/avatar5.jpg" alt="">
                                <div class="media-body">
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="offline inlineblock">
                        <a href="javascript:void(0);">
                            <div class="media">
                                <img class="media-object " src="${resources}assets/images/xs/avatar4.jpg" alt="">
                                <div class="media-body">
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="offline inlineblock">
                        <a href="javascript:void(0);">
                            <div class="media">
                                <img class="media-object " src="${resources}assets/images/xs/avatar3.jpg" alt="">
                                <div class="media-body">
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="online inlineblock">
                        <a href="javascript:void(0);">
                            <div class="media">
                                <img class="media-object " src="${resources}assets/images/xs/avatar2.jpg" alt="">
                                <div class="media-body">
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="offline inlineblock">
                        <a href="javascript:void(0);">
                            <div class="media">
                                <img class="media-object " src="${resources}assets/images/xs/avatar1.jpg" alt="">
                                <div class="media-body">
                                    <span class="badge badge-outline status"></span>
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div role="tabpanel" class="tab-pane slideLeft" id="settings">
            <div class="settings slim_scroll">
                <p class="text-left">General Settings</p>
                <ul class="setting-list">
                    <li><span>Report Panel Usage</span>
                        <div class="switch">
                            <label>
                                <input type="checkbox" checked>
                                <span class="lever"></span></label>
                        </div>
                    </li>
                    <li><span>Email Redirect</span>
                        <div class="switch">
                            <label>
                                <input type="checkbox">
                                <span class="lever"></span></label>
                        </div>
                    </li>
                </ul>
                <p class="text-left">System Settings</p>
                <ul class="setting-list">
                    <li><span>Notifications</span>
                        <div class="switch">
                            <label>
                                <input type="checkbox" checked>
                                <span class="lever"></span></label>
                        </div>
                    </li>
                    <li><span>Auto Updates</span>
                        <div class="switch">
                            <label>
                                <input type="checkbox" checked>
                                <span class="lever"></span></label>
                        </div>
                    </li>
                </ul>
                <p class="text-left">Account Settings</p>
                <ul class="setting-list">
                    <li><span>Offline</span>
                        <div class="switch">
                            <label>
                                <input type="checkbox">
                                <span class="lever"></span></label>
                        </div>
                    </li>
                    <li><span>Location Permission</span>
                        <div class="switch">
                            <label>
                                <input type="checkbox" checked>
                                <span class="lever"></span></label>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</aside>
