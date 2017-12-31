<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/24
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="../common/tag.jsp"%>
<html>
<head>
    <title>装修帮办账号|控制中心|主页</title>
    <%@include file="../common/head.jsp"%>
    <style type="text/css">
        .headimg {
            background-color: #cccccc;
        }

        table tbody th {
            font-weight: inherit;
        }

        .program-state {
            padding-left: 30px;
        }
    </style>
</head>
<body>
<%@include file="../common/header.jsp"%>
<div class="page-wrapper">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 col-sm-12 col-xs-12 column">
                <ul class="nav nav-pills nav-justified" style="">
                    <li  class="active"><a href="${pageContext.request.contextPath}/my-account/center">账号</a></li>
                    <li><a href="${pageContext.request.contextPath}#">你的信息</a></li>
                    <li><a href="#">订单信息</a></li>
                    <li><a href="#">协议与合同</a></li>
                    <li><a href="#">服务</a></li>
                </ul>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12 column">
                <div class="jumbotron">
                    <h2><img src="${userinfo.headImgUrl}" class="img-circle img-responsive headimg"/></h2>
                    <h1>你好!</h1>
                    <h4><img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/user.png"><span class="pull-right">${userinfo.username}</span></h4>
                    <h4><img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/password.png"><span class="pull-right"><a class="" href="#">更改密码</a></span></h4>
                </div>
                <div class="jumbotron">
                    <h4>钱包和礼品卡</h4>
                    <hr/>
                    <h5><a class="text-muted" href="#">兑换礼品卡</a></h5>
                </div>
            </div>
            <div class="col-md-8 col-sm-8 col-xs-12 column">
                <div class="jumbotron" style="height: auto">
                    <h4><span>最近预约</span><span class="pull-right"><a href="${pageContext.request.contextPath}/appoint-console/home">管理中心</a></span></h4>
                    <div class="appoint">
                        <h5 class="loading">正在检查中</h5>
                    </div>

                </div>
            </div>
            <div class="col-md-8 col-sm-8 col-xs-12 column">
                <div class="jumbotron" style="height: auto">
                    <h4><span>最近工人信息</span><span class="pull-right"><a
                            href="${pageContext.request.contextPath}/worker-console/home?j=ALL">管理中心</a></span></h4>
                    <div class="workerinfo">
                        <h5 class="loading">正在检查中</h5>
                    </div>
                </div>
                <div class="jumbotron" style="height: 210px">
                    <h4><span>最近工程订单</span><span class="pull-right"><a href="#">管理中心</a></span></h4>
                    <div class="program">
                        <h5 class="loading">正在检查中</h5>
                    </div>
                </div>
            </div>
        </div>


    </div>
</div>
<%@include file="../common/footer.jsp"%>
</body>
<%@include file="../common/script.jsp"%>
<script type="text/javascript">
    $(function () {
        var $a = "${userinfo.roleId}";
        var $b = "${userinfo.username}";
        setInterval(function () {
            servicehomepage.detail.a($b, $a);
            servicehomepage.detail.b($b, $a);
            servicehomepage.detail.c($b, $a);
        }, 3000);
    });
</script>
</html>
