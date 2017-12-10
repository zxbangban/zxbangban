<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/4/26
  Time: 18:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="header">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Menu</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand"  id="nav-logo" href="${pageContext.request.contextPath}/home">
                <img src="https://zxbangban.oss-cn-beijing.aliyuncs.com/logo2.png"><div><span>装修帮办</span></div>
            </a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right" id="nav-login">

            </ul>
            <ul class="nav navbar-nav">
                <li><a href="${pageContext.request.contextPath}/shop" id="nav-shop">商城</a></li>
                <li style="position: relative;overflow: hidden;"><span class="ribbon"><a>H</a></span><a href="${pageContext.request.contextPath}/w/category" id="nav-workers">找工人</a></li>
                <li><a href="${pageContext.request.contextPath}/wokerregister" id="nav-workerregister">工人入驻</a></li>
                <li><a href="${pageContext.request.contextPath}/appointment">免费预约</a> </li>
                <li><a href="${pageContext.request.contextPath}/customer-service" id="nav-service">客服</a> </li>
            </ul>

        </div>
    </div>
</nav>
