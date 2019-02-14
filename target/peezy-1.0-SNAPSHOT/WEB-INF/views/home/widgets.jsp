<%@include file="../include/home_header_page.jsp" %>

<!-- Main Content -->
<section class="content home">
    <div class="block-header">
        <div class="row">
            <div class="col-lg-7 col-md-6 col-sm-12">
                <h2>Audio Call
                    <small class="text-muted">Welcome to Peezy Audio Call</small>
                </h2>
            </div>
            <div class="col-lg-5 col-md-6 col-sm-12">
                <ul class="breadcrumb float-md-right">
                    <li class="breadcrumb-item">
                        <a href="index.html">
                            <i class="zmdi zmdi-home"></i> Peezy</a>
                    </li>
                    <li class="breadcrumb-item active">Audio Call</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-lg-6 col-md-12">
                <div class="card member-card">
                    <div class="header l-blue">
                        <h1 class="m-t--15">Free on Peezy</h1>
                    </div>
                    <div class="member-img">
                        <a href="#" data-toggle="modal" data-target=".bd-example-modal-sm">
                            <img src="${resources}assets/images/lg/freeCall.jpeg" class="rounded-circle"
                                 alt="profile-image">
                        </a>
                    </div>
                    <div class="body">
                        <div class="col-12">
                            <p class="text-muted">Make free calls to other peezy users.</p>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-4">
                                <h5>12</h5>
                                <small>Total calls</small>
                            </div>
                            <div class="col-4">
                                <h5>0</h5>
                                <small>Users Called</small>
                            </div>
                            <div class="col-4">
                                <h5>0</h5>
                                <small>Time Spent</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-12">
                <div class="card member-card">
                    <div class="header l-slategray">
                        <h1 class="m-t--15">Peezy Call</h1>
                    </div>
                    <div class="member-img">
                        <a href="#" data-toggle="modal" data-target=".bd-modal-sm">
                            <img src="${resources}assets/images/lg/avatar1.jpg" class="rounded-circle"
                                 alt="profile-image">
                        </a>
                    </div>
                    <div class="body">
                        <div class="col-12">
                            <p class="text-muted">Make local or international calls using your peezy credits.</p>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-4">
                                <h5>$0</h5>
                                <small>Balance</small>
                            </div>
                            <div class="col-4">
                                <h5>$1/min</h5>
                                <small>Call rate</small>
                            </div>
                            <div class="col-4">
                                <h5>1,256$</h5>
                                <small>Spent</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script src="${resources}assets/bundles/libscripts.bundle.js"></script>
<!-- Lib Scripts Plugin Js -->
<script src="${resources}assets/bundles/vendorscripts.bundle.js"></script>
<!-- Lib Scripts Plugin Js -->

<script src="${resources}assets/bundles/countTo.bundle.js"></script>
<!-- Jquery CountTo Plugin Js -->
<script src="${resources}assets/bundles/knob.bundle.js"></script>
<!-- Jquery Knob Plugin Js -->
<script src="${resources}assets/bundles/sparkline.bundle.js"></script>
<!-- Sparkline Plugin Js -->
<script src="${resources}assets/plugins/waitme/waitMe.js"></script>
<!-- Wait Me Plugin Js -->
<script src="${resources}assets/js/pages/widgets/infobox/infobox-1.js"></script>
<script src="${resources}assets/bundles/mainscripts.bundle.js"></script>
<!-- Custom Js -->
<script src="${resources}assets/js/pages/charts/jquery-knob.js"></script>
<script src="${resources}assets/js/pages/charts/sparkline.js"></script>
<script src="${resources}assets/js/pages/cards/basic.js"></script>
<script src="${resources}js/SIPml-api.js"></script>
<!-- Custom Js -->
<script>
    $(document).ready(function () {
        let count = 0;

        $(".digit").on('click', function () {
            let num = ($(this).clone().children().remove().end().text());
            if (count < 11) {
                let telNum = $('#output');
                $(telNum).val(telNum.val() + num.trim());

                count++
            }
        });

        $('.fa-long-arrow-left').on('click', function () {
            let inputString = $('#output').val();
            let shortenedString = inputString.substr(0, (inputString.length - 1));
            $('#output').val(shortenedString);
            count--;
        });

        $('#call').on('click', function () {
            let output = $('#output').val();
            makeCall(output);
        });

        let readyCallback = function (e) {
            createSipStack(); // see next section
        };
        let errorCallback = function (e) {
            console.error('Failed to initialize the engine: ' + e.message);
        };

        SIPml.init(readyCallback, errorCallback);


        function sipStackEventsListener(e) {
            if (e.type === 'started') {
                login();
            }
            else if (e.type === 'i_new_call') { // incoming audio/video call
                acceptCall(e);
            }
        }
        var sipStack;
        function createSipStack() {
            sipStack = new SIPml.Stack({
                    realm: '192.168.1.102', // mandatory: domain name
                    impi: '101', // mandatory: authorization name (IMS Private Identity)
                    impu: 'sip:6001@192.168.1.102', // mandatory: valid SIP Uri (IMS Public Identity)
                    password: '101', // optional
                    display_name: 'Bob legend', // optional
                    websocket_proxy_url: 'ws://192.168.1.102:8089/ws', // optional
                    outbound_proxy_url: 'udp://example.org:5060', // optional
                    enable_rtcweb_breaker: false, // optional
                    events_listener: {events: '*', listener: sipStackEventsListener}, // optional: '*' means all events
                    sip_headers: [ // optional
                        {name: 'User-Agent', value: 'IM-client/OMA1.0 sipML5-v1.0.0.0'},
                        {name: 'Organization', value: 'Doubango Telecom'}
                    ]
                }
            );
            sipStack.start();
        }


        var registerSession;
        var regEventsListener = function (e) {
            console.info('session event = ' + e.type);
            if (e.type === 'connected' && e.session === registerSession) {
                // makeCall();
            }
        };
        var login = function () {
            registerSession = sipStack.newSession('register', {
                events_listener: {events: '*', listener: regEventsListener} // optional: '*' means all events
            });
            registerSession.register();
        };


        var callSession;
        var callEventsListener = function (e) {
            console.info('session event = ' + e.type);
        };
        var makeCall = function (num) {
            callSession = sipStack.newSession('call-audio', {
                audio_remote: document.getElementById('audio-remote'),
                events_listener: {events: '*', listener: callEventsListener} // optional: '*' means all events
            });
            callSession.call(num);
        };


        var acceptCall = function (e) {
            e.newSession.accept(); // e.newSession.reject() to reject the call
        };


    });
</script>
<div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="">
                <input id="output" class="form-control">
                <div class="row1">
                    <div class="digit" id="one">1</div>
                    <div class="digit" id="two">2
                        <div class="sub">ABC</div>
                    </div>
                    <div class="digit" id="three">3
                        <div class="sub">DEF</div>
                    </div>
                </div>
                <div class="row1">
                    <div class="digit" id="four">4
                        <div class="sub">GHI</div>
                    </div>
                    <div class="digit" id="five">5
                        <div class="sub">JKL</div>
                    </div>
                    <div class="digit">6
                        <div class="sub">MNO</div>
                    </div>
                </div>
                <div class="row1">
                    <div class="digit">7
                        <div class="sub">PQRS</div>
                    </div>
                    <div class="digit">8
                        <div class="sub">TUV</div>
                    </div>
                    <div class="digit">9
                        <div class="sub">WXYZ</div>
                    </div>
                </div>
                <div class="row1">
                    <div class="digit">*
                    </div>
                    <div class="digit">0
                    </div>
                    <div class="digit">#
                    </div>
                </div>
                <div class="botrow">
                    <i class="zmdi zmdi-close dig" data-dismiss="modal"></i>
                    <div id="call">
                        <i class="zmdi zmdi-phone" aria-hidden="true"></i>
                    </div>
                    <i class="fa fa-long-arrow-left dig" aria-hidden="true"></i>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade bd-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            ...
        </div>
    </div>
</div>
</body>
</html>
