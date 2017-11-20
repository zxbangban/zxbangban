<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/8/1
  Time: 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common/tag.jsp" %>
<html>
<head>
    <title>装修帮办账号|预约客服中心|主页</title>
    <%@include file="../common/head.jsp" %>
</head>
<body>
<%@include file="../common/header.jsp" %>
<div class="page-wrapper">
    <div class="row clearfix">
        <div class="col-md-2 column">

        </div>
        <div class="col-md-10 column">
            <h1>${msg}</h1>
            <c:set var="customer" scope="page" value="${customers}"/>
            <c:if test="${customer.size() > 0}">
            <div class="table-responsive">
                <table class="table table-condensed table-hover">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>姓名</th>
                        <th>手机号</th>
                        <th>工程地址</th>
                        <th>预约时间</th>
                        <th>优先级</th>
                        <th>备注信息</th>
                        <th>管理</th>
                        <th>其他</th>
                    </tr>
                    </thead>
                    <tbody>
                    </c:if>
                    <c:forEach var="c" items="${customers}">
                        <tr>
                            <th>${c.id}</th>
                            <th>${c.name}</th>
                            <th>${c.telphone}</th>
                            <th>${c.programAddress}</th>
                            <th><fmt:formatDate value="${c.createTime}" type="both"/></th>
                            <th>${c.priority}</th>
                            <th>${c.notes}</th>
                            <th>
                                <button type="button" name="notification" class="btn btn-default btn-manager"
                                        value="${c.id}">操作
                                </button>
                            </th>
                            <th>
                                <button type="button" name="notification" class="btn btn-info btn-detail"
                                        value="${c.id}">
                                    详情
                                </button>
                            </th>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="modal fade" id="modal-container-manager" role="dialog" aria-labelledby="myModalLabel"
             aria-hidden="true">
            <div class="container">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span
                                class="glyphicon glyphicon-remove"></span></button>
                    </div>
                    <div class="modal-body">
                        <div class="well well-lg">
                            <div class="row">
                                <div class="col-md-4 column">
                                    <button type="button" class="btn btn-success btn-lg btn-block" value=""
                                            onclick='a()'>生成工程订单
                                    </button>
                                </div>
                                <div class="col-md-4 column">
                                    <button type="button" class="btn btn-info btn-lg btn-block" value="" onclick='b()'>
                                        提高优先级
                                    </button>
                                </div>
                                <div class="col-md-4 column">
                                    <button type="button" class="btn btn-danger btn-lg btn-block" value=""
                                            onclick='c()'>删除
                                    </button>
                                </div>
                            </div>
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
<%@include file="../common/footer.jsp" %>
</body>
<%@include file="../common/script.jsp" %>
<script type="text/javascript">
    var $i;
    $(function () {
        $(".btn-manager").click(function () {
            $i = $(this).val();
            var $mcc = $("#modal-container-manager");

            $mcc.find("button").attr("value", $i);
            $mcc.modal({
                show: true
            });
        });
        $(".btn-detail").click(function () {
            $i = $(this).val();

        });

    });

    function a() {

    }

    function b() {
        alert($i);
    }

    function c() {
        $.ajax({
            url: "/appoint-console/delete",
            data: {
                "id": $i
            },
            type: "get",
            success: function (data) {
                if (data === "1") {
                    location.reload();
                }
            },
            error: function (xhr) {
                alert(xhr.state() + " " + xhr.statusText);
            }
        });
    }
</script>
</html>
