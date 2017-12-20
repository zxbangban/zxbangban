<%--
  Created by IntelliJ IDEA.
  User: pingyr
  Date: 2017/12/20
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common/tag.jsp" %>
<html>
<head>
    <title>恢复你的账号</title>
    <%@include file="../common/head.jsp"%>
    <style type="text/css">
        .jumbotron{
            text-align: center;
            color: white;
            margin-top: 200px;
            height: 200px;
        }

        .radio label input{
            width: 20px;
            height: 20px;
        }
        .radio label span{
            margin-left: 5px;
        }
    </style>
</head>
<body>
<%@include file="../common/header.jsp"%>

<div class="page-wrapper">
    <div style="height: 750px;">
        <div class="container">
            <div class="jumbotron">
                <div class="">
                    <form class='form' enctype='multipart/form-data' action='/worker-console/wid=${wid}/upload-programimg' method='post'>
                        <h2>请上传您的工程效果图</h2>
                        <div class='input-group'>
                            <input type='file' class='form-control' name='files' multiple='multiple' id="inputs"><br/>

                            <span class='input-group-btn'><button type='submit' class='btn btn-default'>保存</button></span>

                        </div>
                        <div class="row">
                            <div id='dd' class='col-md-12 column'  style="margin-top:20px;"></div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="../common/footer.jsp"%>
</body>
<%@include file="../common/script.jsp"%>
<script>
    $(document).ready(function () {
        $("#inputs").change(function () {
            var fil = this.files;
            for (var i = 0; i < fil.length; i++) {
                reads(fil[i]);
            }
        });
    });
    function reads(fil){
        var reader = new FileReader();
        reader.readAsDataURL(fil);
        reader.onload = function()
        {
            document.getElementById("dd").innerHTML += "<img src='"+reader.result+"' width=\"75%\">";
        };
    }
</script>
</html>