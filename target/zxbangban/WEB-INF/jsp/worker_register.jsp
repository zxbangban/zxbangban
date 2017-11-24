<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/7/4
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>入驻工人申请 | 装修帮办服务平台</title>
    <%@include file="common/head.jsp"%>
    <STYLE type="text/css">
        .jumbotron{
            background-color: rgba(0,0,0,0.5);
            margin-top: 50px;
            color: white;
            text-align: center;
        }
        form{
            margin: 0 auto;
        }
    </STYLE>
</head>
<body>
<%@include file="common/header.jsp"%>
<div class="page-wrapper">
    <div class="container-fluid" style="background-image:url('https://zxbangban.oss-cn-beijing.aliyuncs.com/workerregisterbgi.png');background-repeat: no-repeat;height: 750px ">
        <div class="container">
            <div class="row clearfix">
                <div class="col-md-8 col-md-offset-2 column">
                    <div class="jumbotron">
                        <h2 style="color: white">平台工人信息录入申请</h2>
                        <form class="bs-example bs-example-form" role="form"
                              action="${pageContext.request.contextPath}/w/register" method="post">
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon">姓名</span>
                                <input type="text" class="form-control" placeholder="请输入姓名" name="name">
                            </div>
                            <br>
                            <div class="input-group input-group-lg" style="margin-bottom: 20px">
                                <span class="input-group-addon">手机号</span>
                                <input type="tel" class="form-control" placeholder="请输入手机号码" name="tel">
                            </div>
                            <div class="input-group input-group-lg" style="margin-bottom: 20px">
                                <span class="input-group-addon">工种</span>
                                <select name="jobId" class="form-control">
                                    <option value="1">设计师</option>
                                    <option value="2">工长</option>
                                    <option value="3">水电工</option>

                                    <option value="4">防水工</option>
                                    <option value="5">贴砖工</option>
                                    <option value="6">木工</option>

                                    <option value="7">油漆工</option>
                                    <option value="8">吊顶工</option>
                                    <option value="23">土建工</option>
                                    <option value="24">集成墙吊顶</option>
                                    <option value="9">家俱安装工</option>

                                    <option value="10">石材安装工</option>
                                    <option value="11">壁纸工</option>
                                    <option value="12">室内门安装工</option>

                                    <option value="15">卫浴安装工</option>

                                    <option value="16">灯饰安装</option>
                                    <option value="17">窗帘安装工</option>

                                    <option value="19">搬运工</option>
                                    <option value="20">家政</option>
                                    <option value="21">送货工</option>
                                    <option value="22">木地工</option>
                                    <option value="25">美缝工</option>
                                    <option value="26">包立管</option>
                                </select>
                            </div>
                            <div class="input-group input-group-lg" style="margin-bottom: 20px">
                                <input type="text" class="form-control" placeholder="请输入手机验证码" name="telcode">
                                <span class="input-group-btn">
                            <button class="btn btn-primary" type="button" id="codebtn">验证码</button>
                        </span>
                            </div>
                            <div class="input-group input-group-lg" style="margin-bottom: 20px">
                        <span class="input-group-btn">
                            <button type="submit" class="btn btn-success btn-block">提交申请</button>
                        </span>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="common/footer.jsp"%>
</body>
<%@include file="common/script.jsp"%>
<script type="text/javascript">
    $(function () {
        workerregister.detail.init();
    });

</script>
</html>
