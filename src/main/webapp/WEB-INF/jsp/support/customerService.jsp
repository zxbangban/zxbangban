<%--
  Created by IntelliJ IDEA.
  User: zxbangban
  Date: 2017/10/24
  Time: 17:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>客服|装修帮办</title>
    <%@include file="../common/head.jsp"%>
</head>
<style type="text/css">
.jumbotron>.qr_code{
    width:100%;
    font-size:56px;
    text-align: center;
}
    .position{
        position: relative;

    }
    .jumbotron{
        position: absolute;
        top: 0;
        background: none;
        margin: 0 auto;
        left: 12%;
    }

.jumbotron >h1,h2{
    color: #fff;
    margin-top:50px;
    margin-bottom:100px;
}
    svg{

        width: 100%;
    }
</style>
<body>
<%@include file="../common/header.jsp"%>
<div class="page-wrapper">
    <%--<div class="container">--%>
        <%--<div class="jumbotron">--%>
            <%--<h1>使用微信扫描二维码，登录微信客服中心</h1>--%>
            <%--<h2>8:30 - 18:30</h2>--%>
            <%--<img src="${pageContext.request.contextPath}/resources/images/common/QR_2.jpg" alt="" class="img-responsive" style="width: 50%;margin: 0 auto">--%>
        <%--</div>--%>
    <%--</div>--%>

<div class="position">


    <svg id="demo" viewBox="0 0 1600 600" preserveAspectRatio="xMidYMid slice">
        <defs>
            <linearGradient id="grad1" x1="0" y1="0" x2="1" y2="0" color-interpolation="sRGB">
                <stop id="stop1a" offset="0%" stop-color="#12a3b4"></stop>
                <stop id="stop1b" offset="100%" stop-color="#ff509e"></stop>
            </linearGradient>
            <linearGradient id="grad2" x1="0" y1="0" x2="1" y2="0" color-interpolation="sRGB">
                <stop id="stop2a" offset="0%" stop-color="#e3bc13"></stop>
                <stop id="stop2b" offset="100%" stop-color="#00a78f"></stop>
            </linearGradient>
        </defs>
        <rect id="rect1" x="0" y="0" width="1600" height="600" stroke="none" fill="url(#grad1)"></rect>
        <rect id="rect2" x="0" y="0" width="1600" height="600" stroke="none" fill="url(#grad2)"></rect>

    </svg>
    <div class="container">
        <div class="jumbotron">
            <h1 class="qr_code">使用微信扫描二维码，登录微信客服中心</h1>
            <%--<h2>8:30 - 18:30</h2>--%>
            <img src="${pageContext.request.contextPath}/resources/images/common/QR_2.jpg" alt="" class="img-responsive" style="width: 29%;margin: 0 auto">
        </div>
    </div>
</div>
</div>



<%@include file="../common/footer.jsp"%>
</body>
<%@include file="../common/script.jsp"%>
<script src="../../../resources/js/js.js"></script>
<script src="http://libs.cdnjs.net/stats.js/10/Stats.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/gsap/1.18.5/TweenMax.min.js"></script>
<script type="text/javascript">
    window.onload=function(){
        init();
    }

</script>
</html>
