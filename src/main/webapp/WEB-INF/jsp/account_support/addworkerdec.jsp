<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>入驻工人申请 | 装修帮办服务平台</title>
    <%@include file="../common/head.jsp"%>
    <STYLE type="text/css">
        .jumbotron{

            margin-top: 50px;

            text-align: center;
        }
        form{
            margin: 0 auto;
        }
        .time_mar{
            margin-left:26px;
        }
    </STYLE>
</head>
<body>
<%@include file="../common/header.jsp"%>
<div class="page-wrapper">
    <div class="container-fluid" style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/workerregisterbgi.png');background-repeat: no-repeat;height: 750px ">
        <div class="container">
            <div class="row clearfix">
                <div class="col-md-8 col-md-offset-2 column">
                    <div class="jumbotron">
                        <h2 style="color: black">平台工人信息录入</h2><br/>
                        <form  action="/worker-console/saveDes" method="post">
                            <input type="hidden" name="wid" value="${wid}">
                            <span style="font-size: 20px" class="time_mar">时间：</span>
                            <input type="date" width="60px" name="start">
                            -
                            <input type="date" width="60px" name="end"><br/><br/><br/>
                            <span style="font-size: 20px;vertical-align: top">项目描述：</span>
                            <textarea name="desc" cols="45" rows="4" max-width="20px" style="resize:none" id="ss"></textarea><br>
                            <input type="submit" value="提交" class="btn btn-success btn-lg btn-submit">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="../common/footer.jsp"%>
</body>
<%@include file="../common/script.jsp"%>
</html>