<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/4/19
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp" %>
<html>
<head>
    <title>个人主页 | 装修帮办服务平台</title>
    <%@include file="common/head.jsp" %>
</head>
<body>
<%@include file="common/header.jsp" %>
<div class="page-wrapper">
    <div class="container-fluid" style="background-image: url('https://zxbangban.oss-cn-beijing.aliyuncs.com/workerhomepagebgi.png');height:450px; ">
        <div class="container">
            <div style="margin-top: 40px">
                <div class="row clearfix">
                    <div class="col-md-3 col-sm-12 col-xs-12 column" style="text-align: center">
                        <div class="" style="padding-bottom: 40px">
                            <img class="img-circle img-responsive worker-head-img" src=" ${workerinfo.headImgUrl}">
                        </div>
                    </div>
                    <div class="col-md-5 col-sm-6 col-xs-6 column">
                        <div style="">
                            <ul class="workerHomePageCard" style="padding-left: 0">
                                <li>
                                    <span>${workerinfo.name}</span>
                                    <c:choose>
                                        <c:when test="${workerinfo.certificated}">
                                            <img class="worker-badge-tiny" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_Certificated.png" data-toggle="tooltip"
                                                 title="平台已认证"/>
                                        </c:when>
                                        <c:otherwise>
                                            <img class="worker-badge-tiny" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_UnCertificated.png" data-toggle="tooltip"
                                                 title="平台未认证"/>
                                        </c:otherwise>
                                    </c:choose>
                                    <c:choose>
                                        <c:when test="${workerinfo.pr}">
                                            <img class="worker-badge-tiny" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_Process_Review.png" data-toggle="tooltip"
                                                 title="工程已考察"/>
                                        </c:when>
                                        <c:otherwise>
                                            <img class="worker-badge-tiny" src="https://zxbangban.oss-cn-beijing.aliyuncs.com/worker/Worker_Process_UnReview.png" data-toggle="tooltip"
                                                 title="工程未考察"/>
                                        </c:otherwise>
                                    </c:choose>
                                </li>
                                <li>
                                    工龄:<span class="loading" id="age">${workerProfile.age}</span>
                                </li>
                                <li>
                                    星级：
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>

                                </li>

                                <li>
                                    籍贯:<span  id="address">${workerinfo.address}</span>
                                </li>
                                <li>
                                    现工程地址:<span  id="location">${workerinfo.location}</span>
                                </li>
                            </ul>

                             </ul>

                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-6 column">
                        <div class=" ">
                            <ul class="workerHomePageCard">
                                <li>
                                    <span>综合评分:<span class="" id="oARating">${workerinfo.overAllRating}</span></span>
                                </li>
                                <li>
                                    <span>浏览量：<span class="loading" id="pageview"></span><span class="glyphicon glyphicon-eye-open"></span> </span>
                                </li>
                                <li>
                                    工种:
                                    <span id="jobId">
                                        <c:forTokens items="设计师,工长,水电工,防水工,贴砖工,木工,油漆工,吊顶工,土建工,集成墙吊顶,家俱安装工,石材安装工,壁纸工,室内门安装工,卫浴安装工,灯饰安装,窗帘安装工,搬运工,家政,送货工,木地工,美缝工,包立管
" delims="," var="item" varStatus="status" >
                                        <c:if test="${workerinfo.jobId==status.count}">${item}</c:if>
                                        </c:forTokens>
                                    </span>

                                </li>
                                <li>
                                    施工状态:
                                    <c:choose>
                                        <c:when test="${workerinfo.state==true}">
                                            <span  id="state" style="color: red">
                                                    施工中
                                            </span>
                                        </c:when>
                                        <c:otherwise>
                                            <span id="state" style="color: #83d944">
                                                     可预约
                                            </span>
                                        </c:otherwise>
                                    </c:choose>
                                </li>
                                <li>
                                    <span>
                                        <a href="/c/appoint/workerid=${workerinfo.workerId}/free" class="btn btn-success">
                                            立即预约&nbsp;(--)
                                        </a>
                                    </span>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-titile">
                            工程订单案例:
                        </h3>
                    </div>
                    <div class="panel-body">
                        <c:choose>
                            <c:when test="${empty workerinfo.projectDes}">
                                <h1>暂无数据</h1>
                            </c:when>
                            <c:otherwise>
                                <div >
                                    <h2 >${workerinfo.projectDes}</h2>
                                </div>
                            </c:otherwise>
                        </c:choose>

                    </div>
                </div>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-titile">
                            工程案例展示:
                        </h3>
                    </div>
                    <div class="panel-body">
                        <div id="projectimg">
                            <h4 class="loading">Loading</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="common/footer.jsp" %>
</body>
<%@include file="common/script.jsp" %>
<script type="text/javascript">
    $(function () {
        var $wid = "${workerinfo.workerId}";
        setTimeout(function () {
            homepagestate.detail.a($wid);
            homepagestate.detail.c($wid);
        },3000);
        $("[data-toggle='tooltip']").tooltip();
    });
</script>
</html>
