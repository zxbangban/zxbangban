<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <title>装修帮办-装修找帮办,省钱又省心</title>
    <%@include file="WEB-INF/jsp/common/head.jsp" %>
    <style type="text/css">
        .gicon {
            position: absolute;
            left: 50%;
            padding: 19px;
            top: 60px;
            box-shadow: 0 1px 1px 1px #cccccc;
        }

        .gbtn {
            margin-top: 15px;
            margin-bottom: 50px;
        }

        .garea {
            background-color: white;
            text-align: center;
            box-shadow: 0 0 20px #cccccc;
        }

        .garea h3 {
            margin-top: 90px;
            margin-bottom: 25px;
            font-weight: bold;
        }
        .garea span {
            font-size: 18px;
        }

        .modal-backdrop.in {
            opacity: 0.75;
        }

    </style>
</head>
<body>
<%@include file="WEB-INF/jsp/common/header.jsp" %>
<div class="page-wrapper">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div id="myCarousel" class="carousel slide" style="padding:0;">
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="item active">
                            <a href="${pageContext.request.contextPath}/about-us" class="thumbnail">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/aboutus.png"
                                     class="img-responsive" alt="First slide">
                            </a>
                        </div>
                        <div class="item ">
                            <a href="${pageContext.request.contextPath}/activity" class="thumbnail">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/activity_01banner.png"
                                     class="img-responsive" alt="Second slide">
                            </a>
                        </div>
                        <div class="item">
                            <a href="${pageContext.request.contextPath}/about" class="thumbnail">
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/webstylebanner.png"
                                     class="img-responsive" alt="Third slide">
                            </a>
                        </div>
                    </div>
                    <a class="carousel-control left" href="#myCarousel"
                       data-slide="prev"></a>
                    <a class="carousel-control right" href="#myCarousel"
                       data-slide="next"></a>
                </div>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-3 col-sm-6 col-xs-6 column">
                <div class="jumbotron text-center">
                    <h1>
                        <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/func01.png"/>
                        <a href="${pageContext.request.contextPath}/w/category" type="button"
                           class="btn btn-default btn-lg btn-block">我要装修</a>
                    </h1>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 column">
                <div class="jumbotron text-center">
                    <h1>
                        <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/func02.png"/>
                        <a href="${pageContext.request.contextPath}/shop" type="button"
                           class="btn btn-default btn-lg btn-block">建材商城</a>
                    </h1>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 column">
                <div class="jumbotron text-center">
                    <h1>
                        <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/func03.png"/>
                        <a href="${pageContext.request.contextPath}/about" type="button"
                           class="btn btn-default btn-lg btn-block">免费设计</a>
                    </h1>
                </div>
            </div>
            <div class=" col-md-3 col-sm-6 col-xs-6 column">
                <div class="jumbotron text-center">
                    <h1>
                        <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/func04.png"/>
                        <a href="${pageContext.request.contextPath}/appointment" type="button"
                           class="btn btn-default btn-lg btn-block">免费预约</a>
                    </h1>
                </div>
            </div>
        </div>
    </div>
    <div style="background-color: #f1fafe">
        <div class="container" style="padding-top: 50px;padding-bottom: 90px">
            <div class="row clearfix">
                <div class="col-md-4 column">
                    <div style="padding-top: 15px">
                        <div class="garea">
                            <div class="" style="background-color: #00b4fa;height: 98px">

                            </div>
                            <div>
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/g2.png"
                                     class="img-circle gicon" style="background-color: #ec5646;margin-left: -45px">
                            </div>
                            <h3>承诺保障</h3>
                            <span>助力每一位业主体验超凡.</span><br/>
                            <a href="${pageContext.request.contextPath}/about" class="btn btn-default gbtn">了解更多</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 column">
                    <div style="padding-top: 15px">
                        <div class="garea">
                            <div class="" style="background-color: #00b4fa;height: 98px">

                            </div>
                            <div>
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/g3.png"
                                     class="img-circle gicon" style="background-color: #7852e5;margin-left: -45px">
                            </div>
                            <h3>工人体系</h3>
                            <span>予力每一位工人造就非凡.</span><br/>
                            <a href="" class="btn btn-default gbtn">了解更多</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 column">
                    <div style="padding-top: 15px">
                        <div class="garea">
                            <div class="" style="background-color: #00b4fa;height: 98px">
                            </div>
                            <div>
                                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/g1.png"
                                     class="img-circle gicon" style="background-color: #70d151;margin-left: -45px">
                            </div>
                            <h3>关于我们</h3>
                            <span>我们对自己所要追求的目标充满信心.</span><br/>
                            <a href="${pageContext.request.contextPath}/about-us" class="btn btn-default gbtn">了解更多</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-6 column">
                <img class="img-responsive" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/home/shoppingad.png"/>
            </div>
            <div class="col-md-6 column">
                <img class="img-responsive" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/homestyle.png"/>
            </div>
        </div>
        <div class="row clearfix">

        </div>
    </div>
</div>
<%@include file="WEB-INF/jsp/common/footer.jsp" %>
<%@include file="WEB-INF/jsp/common/quoted.jsp"%>
<%@include file="WEB-INF/jsp/common/active.jsp"%>
<div id="fudai">
    <a href="${pageContext.request.contextPath}/activity" target="_blank">
        <img src="${pageContext.request.contextPath}/resources/images/activity/bag.png" style="width: 100%;height: auto"/>
    </a>
</div>

</body>
<%@include file="WEB-INF/jsp/common/script.jsp" %>
<script type="text/javascript">
    $(function () {
        $("#myCarousel").carousel('cycle');
        $("#modal-container-894940").modal({
            keyboard: false
        });
        processQuoted.detail.init();
        processQuoted.detail.window();
    });

</script>
</html>
