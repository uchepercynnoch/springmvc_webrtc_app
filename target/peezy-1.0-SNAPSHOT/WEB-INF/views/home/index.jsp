<%--
  Created by IntelliJ IDEA.
  User: uchennannochirionye
  Date: 12/11/18
  Time: 12:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head lang="en">
    <!-- styles -->
    <link href="https://fonts.googleapis.com/css?family=Exo" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <c:url value="/resources/" var="resources"/>
    <link rel="stylesheet" href="${resources}css/bootstrap.min.css">
    <!-- scripts -->
    <style>
        body {
            background-color: #42a5f5;
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
<body>
<div class="container1">
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
        <div id="call">
            <i class="fa fa-phone" aria-hidden="true"></i>
        </div>
        <i class="fa fa-long-arrow-left dig" aria-hidden="true"></i>
    </div>
</div>
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
    $(document).ready(function () {
        var count = 0;

        function addNum(elementId){

        }
        $(".digit").on('click', function () {
            var num = ($(this).clone().children().remove().end().text());
            if (count < 11) {
                var telNum = $('#output');
                $(telNum).val(telNum.val() + num.trim());

                count++
            }
        });

        $('.fa-long-arrow-left').on('click', function () {
            var inputString = $('#output').val();
            var shortenedString = inputString.substr(0,(inputString.length -1));
            $('#output').val(shortenedString);
            count--;
        });

        $('#call').on('click', function () {
            var output = $('#output').val();
            alert(output);
        })
    });
</script>
</body>
</html>