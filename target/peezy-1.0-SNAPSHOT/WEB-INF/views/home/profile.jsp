<%@include file="../include/home_header_page.jsp" %>

<!-- Chat-launcher -->
<div class="chat-launcher"></div>
<div class="chat-wrapper">
    <div class="card">
        <div class="header">
            <h2>TL Groups</h2>
        </div>
        <div class="body">
            <div class="chat-widget">
                <ul class="chat-scroll-list clearfix">
                    <li class="left float-left">
                        <img src="${resources}assets/images/xs/avatar3.jpg" class="rounded-circle" alt="">
                        <div class="chat-info">
                            <a class="name" href="#">Alexander</a>
                            <span class="datetime">6:12</span>
                            <span class="message">Hello, John </span>
                        </div>
                    </li>
                    <li class="right">
                        <div class="chat-info"><span class="datetime">6:15</span> <span
                                class="message">Hi, Alexander<br> How are you!</span></div>
                    </li>
                    <li class="right">
                        <div class="chat-info"><span class="datetime">6:16</span> <span class="message">There are many variations of passages of Lorem Ipsum available</span>
                        </div>
                    </li>
                    <li class="left float-left"><img src="${resources}assets/images/xs/avatar2.jpg"
                                                     class="rounded-circle" alt="">
                        <div class="chat-info"><a class="name" href="#">Elizabeth</a> <span class="datetime">6:25</span>
                            <span class="message">Hi, Alexander,<br> John <br> What are you doing?</span></div>
                    </li>
                    <li class="left float-left"><img src="${resources}assets/images/xs/avatar1.jpg"
                                                     class="rounded-circle" alt="">
                        <div class="chat-info"><a class="name" href="#">Michael</a> <span class="datetime">6:28</span>
                            <span class="message">I would love to join the team.</span></div>
                    </li>
                    <li class="right">
                        <div class="chat-info"><span class="datetime">7:02</span> <span class="message">Hello, <br>Michael</span>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="input-group">
                <div class="form-line">
                    <input type="text" class="form-control date" placeholder="Enter your email...">
                </div>
                <span class="input-group-addon"> <i class="material-icons">send</i> </span>
            </div>
        </div>
    </div>
</div>

<section class="content profile-page">
    <section class="boxs-simple">
        <div class="profile-header">
            <div class="profile_info row">
                <div class="col-lg-3 col-md-4 col-12">
                    <div class="profile-image float-md-right"><img src="${resources}assets/images/profile_av.jpg"
                                                                   alt=""></div>
                </div>
                <div class="col-lg-6 col-md-8 col-12">
                    <h4 class="m-t-5 m-b-0"><strong><c:if test="${pageContext.request.userPrincipal.name != null}">
                        ${pageContext.request.userPrincipal.name}
                    </c:if></strong></h4>
                    <span class="job_post">Ui UX Designer</span>
                    <p>It is a long established fact that a reader will be distracted by the readable content of a page
                        when looking at its layout.</p>
                    <div class="m-t-10">
                        <button class="btn btn-raised btn-default">Follow</button>
                        <button class="btn btn-raised btn-default">Message</button>
                    </div>
                    <p class="social-icon m-t-20 m-b-0">
                        <a title="Twitter" href="javascript:void(0);"><i class="zmdi zmdi-twitter"></i></a>
                        <a title="Facebook" href="javascript:void(0);"><i class="zmdi zmdi-facebook"></i></a>
                        <a title="Google-plus" href="javascript:void(0);"><i class="zmdi zmdi-twitter"></i></a>
                        <a title="Behance" href="javascript:void(0);"><i class="zmdi zmdi-behance"></i></a>
                        <a title="Instagram" href="javascript:void(0);"><i class="zmdi zmdi-instagram "></i></a>
                    </p>
                </div>
            </div>
        </div>
        <div class="profile-sub-header">
            <div class="box-list">
                <ul class="text-center">
                    <li class="">
                        <a href="${audioCall}" class="">
                            <i class="zmdi zmdi-phone"></i>
                            <p>Audio Call</p>
                        </a>
                    </li>
                    <li><a href="image-gallery.html" class=""><i class="zmdi zmdi-videocam"></i>
                        <p>Video Call</p></a></li>

                    <li><a href="javascript:void(0);"><i class="zmdi zmdi-comment-text"></i>
                        <p>Chat</p></a></li>
                    <li><a href="events.html"><i class="zmdi zmdi-file-text"></i>
                        <p>Sms</p></a></li>
                </ul>
            </div>
        </div>
    </section>
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-sm-12">
                <div class="card">
                    <div class="row">
                        <div class="col-lg-2 col-md-4 col-sm-6 col-6 text-center">
                            <div class="body">
                                <p>Page View</p>
                                <input type="text" class="knob" value="42" data-linecap="round" data-width="80"
                                       data-height="80" data-thickness="0.15" data-fgColor="#00adef" readonly>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-4 col-sm-6 col-6 text-center">
                            <div class="body">
                                <p>Storage</p>
                                <input type="text" class="knob" value="81" data-linecap="round" data-width="80"
                                       data-height="80" data-thickness="0.15" data-fgColor="#49cdd0" readonly>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-4 col-sm-6 col-6 text-center">
                            <div class="body">
                                <p>New User</p>
                                <input type="text" class="knob" value="62" data-linecap="round" data-width="80"
                                       data-height="80" data-thickness="0.15" data-fgColor="#8f78db" readonly>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-4 col-sm-6 col-6 text-center">
                            <div class="body">
                                <p>Total Visit</p>
                                <input type="text" class="knob" value="38" data-linecap="round" data-width="80"
                                       data-height="80" data-thickness="0.15" data-fgColor="#f67a82" readonly>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-4 col-sm-6 col-6 text-center">
                            <div class="body">
                                <p>Subscribers</p>
                                <input type="text" class="knob" value="87" data-linecap="round" data-width="80"
                                       data-height="80" data-thickness="0.15" data-fgColor="#40b988" readonly>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-4 col-sm-6 col-6 text-center">
                            <div class="body">
                                <p>Bounce Rate</p>
                                <input type="text" class="knob" value="64" data-linecap="round" data-width="80"
                                       data-height="80" data-thickness="0.15" data-fgColor="#f7bb97" readonly>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-lg-4 col-md-12">
                <div class="card">
                    <div class="header">
                        <h2>About Me</h2>
                    </div>
                    <div class="body">
                        <p class="text-default">Lorem Ipsum is simply dummy text of the printing and typesetting
                            industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when
                            an unknown printer took a galley of type and scrambled it to make a type specimen book. It
                            has survived not only five centuries, but also the leap into electronic typesetting,
                            remaining essentially unchanged.</p>
                        <blockquote>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                            <small>Designer <cite title="Source Title">Source Title</cite></small>
                        </blockquote>
                    </div>
                </div>
                <div class="card">
                    <div class="header">
                        <h2>New Friends</h2>
                    </div>
                    <div class="body">
                        <ul class="new_friend_list list-unstyled row">
                            <li class="col-lg-4 col-md-2 col-sm-6 col-4">
                                <a href="">
                                    <img src="${resources}assets/images/sm/avatar1.jpg" class="img-thumbnail"
                                         alt="User Image">
                                    <h6 class="users_name">Jackson</h6>
                                    <small class="join_date">Today</small>
                                </a>
                            </li>
                            <li class="col-lg-4 col-md-2 col-sm-6 col-4">
                                <a href="">
                                    <img src="${resources}assets/images/sm/avatar2.jpg" class="img-thumbnail"
                                         alt="User Image">
                                    <h6 class="users_name">Aubrey</h6>
                                    <small class="join_date">Yesterday</small>
                                </a>
                            </li>
                            <li class="col-lg-4 col-md-2 col-sm-6 col-4">
                                <a href="">
                                    <img src="${resources}assets/images/sm/avatar3.jpg" class="img-thumbnail"
                                         alt="User Image">
                                    <h6 class="users_name">Oliver</h6>
                                    <small class="join_date">08 Nov</small>
                                </a>
                            </li>
                            <li class="col-lg-4 col-md-2 col-sm-6 col-4">
                                <a href="">
                                    <img src="${resources}assets/images/sm/avatar4.jpg" class="img-thumbnail"
                                         alt="User Image">
                                    <h6 class="users_name">Isabella</h6>
                                    <small class="join_date">12 Dec</small>
                                </a>
                            </li>
                            <li class="col-lg-4 col-md-2 col-sm-6 col-4">
                                <a href="">
                                    <img src="${resources}assets/images/sm/avatar1.jpg" class="img-thumbnail"
                                         alt="User Image">
                                    <h6 class="users_name">Jacob</h6>
                                    <small class="join_date">12 Dec</small>
                                </a>
                            </li>
                            <li class="col-lg-4 col-md-2 col-sm-6 col-4">
                                <a href="">
                                    <img src="${resources}assets/images/sm/avatar5.jpg" class="img-thumbnail"
                                         alt="User Image">
                                    <h6 class="users_name">Matthew</h6>
                                    <small class="join_date">17 Dec</small>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="card">
                    <div class="header">
                        <h2>My Portfolio Status</h2>
                    </div>
                    <div class="body">
                        <ul class="list-unstyled">
                            <li>
                                <div>Behance</div>
                                <div class="progress m-b-20">
                                    <div class="progress-bar l-blue progress-bar-striped active" role="progressbar"
                                         aria-valuenow="62" aria-valuemin="0" aria-valuemax="100" style="width: 62%">
                                        <span class="sr-only">62% Complete</span></div>
                                </div>
                            </li>
                            <li>
                                <div>Themeforest</div>
                                <div class="progress m-b-20">
                                    <div class="progress-bar l-green progress-bar-striped active" role="progressbar"
                                         aria-valuenow="87" aria-valuemin="0" aria-valuemax="100" style="width: 87%">
                                        <span class="sr-only">87% Complete</span></div>
                                </div>
                            </li>
                            <li>
                                <div>Dribbble</div>
                                <div class="progress m-b-20">
                                    <div class="progress-bar l-amber progress-bar-striped active" role="progressbar"
                                         aria-valuenow="32" aria-valuemin="0" aria-valuemax="100" style="width: 32%">
                                        <span class="sr-only">32% Complete</span></div>
                                </div>
                            </li>
                            <li>
                                <div>Pinterest</div>
                                <div class="progress m-b-20">
                                    <div class="progress-bar l-blush progress-bar-striped active" role="progressbar"
                                         aria-valuenow="56" aria-valuemin="0" aria-valuemax="100" style="width: 56%">
                                        <span class="sr-only">56% Complete</span></div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="row clearfix social-widget">
                    <div class="col-lg-6 col-md-4 col-6">
                        <div class="card info-box-2 hover-zoom-effect facebook-widget">
                            <div class="icon"><i class="zmdi zmdi-facebook"></i></div>
                            <div class="content">
                                <div class="text">Like</div>
                                <div class="number">123</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-4 col-6">
                        <div class="card info-box-2 hover-zoom-effect instagram-widget">
                            <div class="icon"><i class="zmdi zmdi-instagram"></i></div>
                            <div class="content">
                                <div class="text">Followers</div>
                                <div class="number">231</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-4 col-6">
                        <div class="card info-box-2 hover-zoom-effect twitter-widget">
                            <div class="icon"><i class="zmdi zmdi-twitter"></i></div>
                            <div class="content">
                                <div class="text">Followers</div>
                                <div class="number">31</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-4 col-6">
                        <div class="card info-box-2 hover-zoom-effect google-widget">
                            <div class="icon"><i class="zmdi zmdi-google"></i></div>
                            <div class="content">
                                <div class="text">Like</div>
                                <div class="number">254</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-4 col-6">
                        <div class="card info-box-2 hover-zoom-effect linkedin-widget">
                            <div class="icon"><i class="zmdi zmdi-linkedin"></i></div>
                            <div class="content">
                                <div class="text">Followers</div>
                                <div class="number">2510</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-4 col-6">
                        <div class="card info-box-2 hover-zoom-effect behance-widget">
                            <div class="icon"><i class="zmdi zmdi-behance"></i></div>
                            <div class="content">
                                <div class="text">Project</div>
                                <div class="number">121</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-12">
                <div class="card">
                    <div class="body">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs tab-nav-right" role="tablist">
                            <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#mypost">My Post</a>
                            </li>
                            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#timeline">Timeline</a>
                            </li>
                            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#usersettings">Setting</a>
                            </li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="mypost">
                                <div class="mypost-form">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <textarea rows="4" class="form-control no-resize"
                                                      placeholder="Please type what you want..."></textarea>
                                        </div>
                                    </div>
                                    <div class="post-toolbar-b">
                                        <a href="javascript:void(0);" class="btn btn-raised btn-default"><i
                                                class="zmdi zmdi-attachment"></i></a>
                                        <a href="javascript:void(0);" class="btn btn-raised btn-default"><i
                                                class="zmdi zmdi-camera"></i></a>
                                        <a href="javascript:void(0);" class="btn btn-raised btn-success">Post</a>
                                    </div>
                                </div>
                                <div class="mypost-list m-t-30">
                                    <div class="post-box">
                                        <span class="date"><i class="zmdi zmdi-alarm"></i> 7 minutes ago</span>
                                        <div class="post-img"><img src="${resources}assets/images/puppy-1.jpg"
                                                                   class="img-fluid"
                                                                   alt/></div>
                                        <h4 class="post_title">It is a long established fact that a reader will be
                                            distracted</h4>
                                        <p>If you are going to use a passage of Lorem Ipsum, you need to be sure there
                                            isn't anything embarrassing hidden in the middle of text</p>
                                        <div class="form-group">
                                            <a href="javascript:void(0);" class="btn btn-raised btn-info"><i
                                                    class="zmdi zmdi-favorite-outline"></i> Like (5) </a>
                                            <a href="javascript:void(0);" class="btn btn-raised btn-default"><i
                                                    class="zmdi zmdi-long-arrow-return"></i> Reply</a>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="post-box">
                                        <span class="date"><i class="zmdi zmdi-alarm"></i> 18 minutes ago</span>
                                        <div class="post-img"><img src="${resources}assets/images/puppy-2.jpg"
                                                                   class="img-fluid"
                                                                   alt/></div>
                                        <h4 class="post_title">There are many variations of passages of Lorem Ipsum
                                            available</h4>
                                        <p>Printing and typesetting industry. Lorem Ipsum has been the industry's
                                            standard dummy text ever since the 1500s, </p>
                                        <div class="form-group">
                                            <a href="javascript:void(0);" class="btn btn-raised btn-info"><i
                                                    class="zmdi zmdi-favorite-outline"></i> Like (5) </a>
                                            <a href="javascript:void(0);" class="btn btn-raised btn-default"><i
                                                    class="zmdi zmdi-long-arrow-return"></i> Reply</a>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="post-box">
                                        <span class="date"><i class="zmdi zmdi-alarm"></i> 49 minutes ago</span>
                                        <div class="post-img"><img src="${resources}assets/images/puppy-3.jpg"
                                                                   class="img-fluid"
                                                                   alt/></div>
                                        <h4 class="post_title">Contrary to popular belief, Lorem Ipsum is not simply
                                            random text</h4>
                                        <p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below
                                            for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum
                                            et Malorum" by Cicero are also reproduced in their exact original form</p>
                                        <div class="form-group">
                                            <a href="javascript:void(0);" class="btn btn-raised btn-info"><i
                                                    class="zmdi zmdi-favorite-outline"></i> Like (5) </a>
                                            <a href="javascript:void(0);" class="btn btn-raised btn-default"><i
                                                    class="zmdi zmdi-long-arrow-return"></i> Reply</a>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="text-center"><a href="javascript:void(0);"
                                                                class="btn btn-raised btn-default">Load More …</a></div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="timeline">
                                <div class="timeline-body">
                                    <div class="timeline m-border">
                                        <div class="timeline-item">
                                            <div class="item-content">
                                                <div class="text-small">Just now</div>
                                                <p>Finished task #features 4.</p>
                                            </div>
                                        </div>
                                        <div class="timeline-item border-info">
                                            <div class="item-content">
                                                <div class="text-small">11:30</div>
                                                <p>@Jessi retwit your post</p>
                                            </div>
                                        </div>
                                        <div class="timeline-item border-warning border-l">
                                            <div class="item-content">
                                                <div class="text-small">10:30</div>
                                                <p>Call to customer #Jacob and discuss the detail.</p>
                                            </div>
                                        </div>
                                        <div class="timeline-item border-warning">
                                            <div class="item-content">
                                                <div class="text-small">3 days ago</div>
                                                <p>Jessi commented your post.</p>
                                            </div>
                                        </div>
                                        <div class="timeline-item border-danger">
                                            <div class="item-content">
                                                <div class="text--muted">Thu, 10 Mar</div>
                                                <p>Trip to the moon</p>
                                            </div>
                                        </div>
                                        <div class="timeline-item border-info">
                                            <div class="item-content">
                                                <div class="text-small">Sat, 5 Mar</div>
                                                <p>Prepare for presentation</p>
                                            </div>
                                        </div>
                                        <div class="timeline-item border-danger">
                                            <div class="item-content">
                                                <div class="text-small">Sun, 11 Feb</div>
                                                <p>Jessi assign you a task #Mockup Design.</p>
                                            </div>
                                        </div>
                                        <div class="timeline-item border-info">
                                            <div class="item-content">
                                                <div class="text-small">Thu, 17 Jan</div>
                                                <p>Follow up to close deal</p>
                                            </div>
                                        </div>
                                        <div class="timeline-item">
                                            <div class="item-content">
                                                <div class="text-small">Just now</div>
                                                <p>Finished task #features 4.</p>
                                            </div>
                                        </div>
                                        <div class="timeline-item border-info">
                                            <div class="item-content">
                                                <div class="text-small">11:30</div>
                                                <p>@Jessi retwit your post</p>
                                            </div>
                                        </div>
                                        <div class="timeline-item border-warning border-l">
                                            <div class="item-content">
                                                <div class="text-small">10:30</div>
                                                <p>Call to customer #Jacob and discuss the detail.</p>
                                            </div>
                                        </div>
                                        <div class="timeline-item border-warning">
                                            <div class="item-content">
                                                <div class="text-small">3 days ago</div>
                                                <p>Jessi commented your post.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="usersettings">
                                <h2 class="card-inside-title">Security Settings</h2>
                                <div class="row clearfix">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Username">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="password" class="form-control"
                                                       placeholder="Current Password">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="password" class="form-control" placeholder="New Password">
                                            </div>
                                        </div>
                                        <button class="btn btn-raised btn-primary">Save Changes</button>
                                    </div>
                                </div>
                                <h2 class="card-inside-title">Account Settings</h2>
                                <div class="row clearfix">
                                    <div class="col-lg-6 col-md-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="First Name">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Last Name">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <textarea rows="4" class="form-control no-resize"
                                                          placeholder="Address Line 1"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="City">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="E-mail">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-12">
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" class="form-control" placeholder="Country">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 m-t-20">
                                        <div class="checkbox">
                                            <label>
                                                <input name="optionsCheckboxes" type="checkbox">
                                                <span class="checkbox-material"><span class="check"></span></span>
                                                Profile Visibility For Everyone </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input name="optionsCheckboxes" checked="" type="checkbox">
                                                <span class="checkbox-material"><span class="check"></span></span> New
                                                task notifications </label>
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input name="optionsCheckboxes" type="checkbox">
                                                <span class="checkbox-material"><span class="check"></span></span> New
                                                friend request notifications </label>
                                        </div>
                                    </div>
                                    <div class="col-md-12 m-t-20">
                                        <button class="btn btn-raised btn-primary ">Save Changes</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Jquery Core Js -->
<script src="${resources}assets/bundles/libscripts.bundle.js"></script>
<!-- Lib Scripts Plugin Js -->
<script src="${resources}assets/bundles/vendorscripts.bundle.js"></script>
<!-- Lib Scripts Plugin Js -->

<script src="${resources}assets/bundles/knob.bundle.js"></script>
<!-- Jquery Knob Plugin Js -->

<script src="${resources}assets/bundles/mainscripts.bundle.js"></script>
<!-- Custom Js -->
<script src="${resources}assets/js/pages/charts/jquery-knob.js"></script>
<script src="${resources}assets/js/bootstrap.bundle.min.js"></script>
<script>
    $(function () {
        $('[data-toggle="popover"]').popover()
    })
</script>
</body>
</html>