<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/9/10
  Time: 9:39
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common/tag.jsp" %>
<html>
<head>
    <title>装修帮办|你的个人资料</title>
    <%@include file="../common/head.jsp" %>


    <style type="text/css">
        .headimg {
            background-color: #cccccc;
        }
        .imgLen{

        }
        .imgLen span{
            position: relative;
            display: inline-block;
            margin: 5px;
        }
        .imgLen em{
            position: absolute;
            top:0;
            left:0;
            font-size:20px;
            display: inline-block;
            width:100%;
            height:30px;
            line-height: 30px;
            text-align: center;
            background: rgba(0,0,0,.5);
            cursor: pointer;
        }
        .imgLen img{
            width:100%;
        }
    </style>
</head>
<body>
<%@include file="../common/header.jsp" %>
<div class="page-wrapper">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 col-sm-12 col-xs-12 column">
                <ul class="nav nav-pills nav-justified" style="">
                    <li><a href="${pageContext.request.contextPath}/my-account/center">账号</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/my-account/profile">你的信息</a></li>
                    <li><a href="#">订单信息</a></li>
                    <li><a href="#">协议与合同</a></li>
                    <li><a href="#">服务</a></li>
                </ul>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="jumbotron">
                    <h2>你的信息</h2>
                    <ol class="nav nav-tabs">
                        <li><a href="${pageContext.request.contextPath}/my-account/profile">个人资料</a></li>
                        <li><a href="#">联系人信息</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/my-account/profile-workerinfo">工人信息</a>
                        </li>
                    </ol>
                </div>
            </div>
            <c:set var="img" scope="page" value="${worker}"/>
            <c:if test="${img != null}">
                <div class="col-md-4 col-sm-4 col-xs-12 column">
                    <div class="jumbotron">
                        <h2><img src="${worker.headImgUrl}" class="img-circle img-responsive headimg"/></h2>
                        <span class="text-center">
                            <button type="button" class="btn btn-link" onclick="ei(this)" value="${worker.workerId}">修改头像</button>
                        </span>
                    </div>
                </div>
                <div class="col-md-8 col-sm-8 col-xs-12 column">
                    <div class="jumbotron">
                        <div>
                            <h2 style="margin-bottom: 0">姓名：${worker.name}</h2>
                            <span><a href="#"></a> </span>
                            <span></span>
                        </div>
                        <h2 style="margin-bottom: 0">工程描述:</h2>
                        <div>
                            <c:choose>
                                <c:when test="${empty worker.projectDes}">
                                    <span style="font-size: 30px;border: 1px;height: auto;width: auto">暂无</span> <br>
                                    <a href="${pageContext.request.contextPath}/worker-console/addDec?wid=${worker.workerId}"   ><span style="font-size: 20px">添加</span></a>
                                </c:when>
                                <c:otherwise>
                                    <span style="border: 1px;height: auto">
                                        <div id="projectDes">
                                              <span style="font-size: 20px;border: 1px;height: auto;width: auto" class="con">${worker.projectDes}</span>
                                        </div>
                                        <span style="font-size: 20px" class="btn btn-success changCon" id="changCon">编辑</span>
                                        <a href="${pageContext.request.contextPath}/worker-console/addDec?wid=${worker.workerId}"><span style="font-size: 20px" class="btn btn-info">添加</span></a>
                                    </span>
                                </c:otherwise>
                            </c:choose>
                        </div>
                        <h2 style="margin-bottom: 0">工程图片:</h2>

                        <c:choose>
                            <c:when test="${empty worker.projectImgUrl}">
                                <span style="font-size: 40px;border: 1px;height: auto;width: auto">暂无</span> <br>
                                <a href="${pageContext.request.contextPath}/worker-console/uploadpic?wid=${worker.workerId}"><span style="font-size: 20px">上传图片</span></a>
                            </c:when>
                            <c:otherwise>
                                <div class="row"  id="imgLen">
                                    <c:forEach items="${worker.projectImgUrl.split(';')}" var="workerImg" varStatus="count">
                                        <c:if test="${not empty workerImg}">
                                        <div class="col-md-4 column imgLen"  >
                                            <span>
                                                <em class='remove'>删除图片</em>
                                                <img src="${workerImg}" class='img-responsive' id="${count.index}"/>
                                            </span>
                                        </div>
                                        </c:if>
                                    </c:forEach>
                                </div>
                                <a href="${pageContext.request.contextPath}/worker-console/uploadpic?wid=${worker.workerId}"   ><span  class="btn maxLen btn-primary" style="font-size: 20px">上传图片</span></a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                    </div>
                </div>
            </c:if>
        </div>
    </div>
</div>

<%@include file="../common/footer.jsp" %>
</body>
<%@include file="../common/script.jsp" %>
<script type="text/javascript">

    function ei(param) {
        var $i = $(param);
        var $flag = $($i).val();
        $($($i).parent()).html("<div class=''>" +
            "<form class='form' enctype='multipart/form-data' action='/my-account/editheadimg' method='post'>" +
            "<div class='input-group'>" +
            "<input type='file' class='form-control' name='file'>" +
            "<span class='input-group-btn'><button type='submit' class='btn btn-default'>保存</button>" +
            "</span>" +
            "</div></form></div>");
    }
    /*编辑按钮*/
    var changCon = document.getElementById("changCon");
    changCon.addEventListener("click", chang, false);
    function chang(){
        $(".con").attr("contenteditable","true");
        $(".con").css("border","1px solid #ccc");
        $(".changCon").html("保存");
        changCon.addEventListener("click", succ, false);
        changCon.removeEventListener("click", chang, false);
    }
    function succ() {
        $(".con").attr("contenteditable","flase");
        $(".con").css("border","none");
        $(".changCon").html("编辑");
        changCon.addEventListener("click", chang, false);
    }
    /*图片删除*/
    var imgLen = document.getElementById("imgLen").getElementsByTagName("div");
    if(imgLen.length >= 7){
        $('.maxLen').css("display","none");
    }else{
        $('.maxLen').css("display","inline-block");
    }
    $('.remove').css("color","#fff");
    $('.remove').click(function(){
        var index = $(this).siblings().attr("id");
        var fileName = document.getElementById(index).src;
        console.log(fileName);
       $.ajax({
           url:"${pageContext.request.contextPath}/worker-console/deletepic",
           type:"GET",
           data:{wid:${worker.workerId},fileName:fileName},
           dataType:"json",
           success:function (receive) {
               if(receive == 1){
                   location.reload();
               }else{
                   alert("出错了，请刷新页面之后重新删除！");
               }
           }
       })
    });
</script>
</html>

