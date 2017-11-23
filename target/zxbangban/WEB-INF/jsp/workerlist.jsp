<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/4/29
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>信息中心 | 装修帮办服务平台</title>
    <%@include file="common/head.jsp"%>
    <style type="text/css">
        .btn-lg{
            padding: 10px 0;
        }
        .red{
            position: relative;
            overflow: hidden;
        }
    </style>
</head>
<body>
<%@include file="common/header.jsp"%>
<div class="page-wrapper">
<div id="worker-search">
    <div class="container">
        <div class="jumbotron" id="worker-search-banner">
            <h1>装修帮办</h1>
            <span>我们的使命是予力每一位业主体验超凡。</span>
            <div class="">

            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row clearfix">
        <div class="jumbotron worker-zone">
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 column">
                <div class="panel panel-default">
                    <div class="panel-body" >
                        <button type="button" class="btn btn-success btn-lg btn-block" value="1">设计师</button>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 column">
                <div class="panel panel-default">
                    <div class="panel-body red"><span class="ribbon1"><a>千万礼包</a></span>
                        <button type="button" class="btn btn-success btn-lg btn-block" value="2">工长</button>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="row clearfix">
        <div class="jumbotron worker-zone">
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 column">
                <div class="panel panel-default">
                    <div class="panel-body red">
                        <span class="ribbon1"><a>千万礼包</a></span>
                        <button type="button" class="btn btn-success btn-lg btn-block" value="3">水电工</button>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 column">
                <div class="panel panel-default">
                    <div class="panel-body red">
                        <span class="ribbon1"><a>千万礼包</a></span>
                        <button type="button" class="btn btn-success btn-lg btn-block" value="4">防水工</button>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 column">
                <div class="panel panel-default">
                    <div class="panel-body red">
                        <span class="ribbon1"><a>千万礼包</a></span>
                        <button type="button" class="btn btn-success btn-lg btn-block" value="5">瓷砖工</button>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 column">
                <div class="panel panel-default">
                    <div class="panel-body red">
                        <span class="ribbon1"><a>千万礼包</a></span>
                        <button type="button" class="btn btn-success btn-lg btn-block" value="6">木工</button>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 column">
                <div class="panel panel-default">
                    <div class="panel-body red">
                        <span class="ribbon1"><a>千万礼包</a></span>
                        <button type="button" class="btn btn-success btn-lg btn-block" value="7">油漆工</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="jumbotron worker-zone">
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 column">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <button type="button" class="btn btn-info btn-lg btn-block" value="10">石材工</button>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 column">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <button type="button" class="btn btn-info btn-lg btn-block" value="8">吊顶工</button>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 column">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <button type="button" class="btn btn-info btn-lg btn-block" value="24">集成墙吊顶</button>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 column">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <button type="button" class="btn btn-info btn-lg btn-block" value="9">家俱安装工</button>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 column">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <button type="button" class="btn btn-info btn-lg btn-block" value="11">壁纸工</button>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 column">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <button type="button" class="btn btn-info btn-lg btn-block" value="12">室内门安装工</button>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 column">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <button type="button" class="btn btn-info btn-lg btn-block" value="15">卫浴安装工</button>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 column">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <button type="button" class="btn btn-info btn-lg btn-block" value="16">灯饰安装工</button>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 column">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <button type="button" class="btn btn-info btn-lg btn-block" value="17">窗帘安装工</button>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 column">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <button type="button" class="btn btn-info btn-lg btn-block" value="19">搬运工</button>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 column">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <button type="button" class="btn btn-info btn-lg btn-block" value="20">家政</button>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 column">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <button type="button" class="btn btn-info btn-lg btn-block" value="21">送货工</button>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 column">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <button type="button" class="btn btn-info btn-lg btn-block" value="22">木地板工</button>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 column">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <button type="button" class="btn btn-info btn-lg btn-block" value="23">土建工</button>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 column">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <button type="button" class="btn btn-info btn-lg btn-block" value="25">美缝工</button>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 column">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <button type="button" class="btn btn-info btn-lg btn-block" value="26">包立管</button>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="row clearfix">
        <div class="modal fade" id="modal-container-workers" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="container">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove"></span></button>
                        <span id="workercardstitle">平台当前所有工人信息</span><span id="current-time"></span>
                    </div>
                    <div class="modal-body">
                        <div class="row clearfix" id="showpanel">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<%@include file="common/footer.jsp"%>
<%@include file="common/quoted.jsp"%>
</body>
<%@include file="common/script.jsp"%>
<script type="text/javascript">
    $(function () {
        workerlist.detail.showworkers();
        setInterval(Timer,1000);
        processQuoted.detail.window();

    });
    function Timer() {
        var date = new Date();
        $("#current-time").text(date.toLocaleTimeString());
    }
</script>
</html>
