<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/4/27
  Time: 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="footer">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-3 col-sm-6 col-xs-6 column">
                <h4 class="h4">官方商城</h4>
                <p class="pText">我的订单</p>
                <p class="pText">工人信息</p>
                <p class="pText"><a href="${pageContext.request.contextPath}/contact_us" >与我们联系</a></p>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 column">
                <h4 class="h4">账户</h4>
                <p class="pText"><a href="${pageContext.request.contextPath}/my-account/center">管理你的账户</a></p>
                <p class="pText">协议与合同</p>
                <p class="pText"><a href="${pageContext.request.contextPath}/termsofuse">服务条款</a></p>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 column">
                <h4 class="h4">价值观</h4>
                <p class="pText">公司责任</p>
                <p class="pText"><a href="${pageContext.request.contextPath}/privacy">隐私</a></p>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 column">
                <h4 class="h4">公司</h4>
                <p class="pText"><a href="${pageContext.request.contextPath}/join">招贤纳士</a></p>
                <p class="pText"><a href="${pageContext.request.contextPath}/about-us">关于我们</a></p>
                <p class="pText">公司新闻</p>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-6 column">
                <div>
                    友情链接:<a href="http://www.bootcss.com"><span>Bootstrap中文网</span></a>
                    &nbsp;&nbsp;<a href="http://glyphicons.com/"><span>Glyphicons</span></a>
                </div>
                <div>
                    <span class="glyphicon glyphicon-globe"></span>&nbsp;&nbsp;中文
                </div>
            </div>
            <div class="col-md-6 column">
                <div>
                    <span><a href="${pageContext.request.contextPath}/contact_us">与我们联系</a> </span>
                    <span><a href="${pageContext.request.contextPath}/privacy">隐私</a></span>
                    <span><a href="${pageContext.request.contextPath}/termsofuse">使用条款</a> </span>
                    <span>关于我们的广告</span>
                </div>
                <div>
                    <a href="http://icp.alexa.cn/zxbangban.com"><span>京ICP备17027517号-1</span></a>
                    <span>Copyright&nbsp;&copy;&nbsp;2017&nbsp;<a href="${pageContext.request.contextPath}/three-d-h">北京三维家装饰工程管理有限公司</a>&nbsp;&nbsp;版权所有</span>
                </div>
            </div>
        </div>
    </div>
</div>

