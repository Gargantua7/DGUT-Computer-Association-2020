<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <title>干事报名资料查询打印</title>
    <link href="${pageContext.request.contextPath}/img/jixielogo.jpg" rel="shortcut icon">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/1css.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/sign.css" rel="stylesheet"/>
    <script src="${pageContext.request.contextPath}/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function () {
            if(${msg != null}) {
                alert("${msg}")
            }
        })

        function submitCheck() {
            let id = $("#id").val();
            if(!(/^20[12][0789]\d{8}$/.test(id))) {
                alert("学号不合法，请重新输入");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button aria-expanded="false" class="navbar-toggle collapsed"
                    data-target="#bs-example-navbar-collapse-1"
                    data-toggle="collapse" type="button">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/">
                <img alt="计协logo" height="20px;" src="${pageContext.request.contextPath}/img/jixielogo.jpg"
                     width="20px;"></a>
            <a class="btn btn-default navbar-btn" href="${pageContext.request.contextPath}/sign/signIn/"
               style="visibility:hidden">报名</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="${pageContext.request.contextPath}/#1">技术部</a></li>
                <li><a href="${pageContext.request.contextPath}/#2">宣传部</a></li>
                <li><a href="${pageContext.request.contextPath}/#4">策划部</a></li>
                <li><a href="${pageContext.request.contextPath}/#5">网技部</a></li>
                <li><a href="${pageContext.request.contextPath}/#6">协会定位</a></li>
            </ul>
        </div>
    </div>
</nav>
<img class="img" src="${pageContext.request.contextPath}/img/4.png">
<h3 style="margin: 10% 20% 0 20%; text-align: center; color: white">干事报名资料<br/>查询打印</h3>
<form action="${pageContext.request.contextPath}/officer/search/" method="get" onsubmit="submitCheck()">
    <label style="width: 100%;">
        <input style="display: none"/><br/>
        <input id="id" name="studentId" placeholder="学号" type="number" value="${id}"/><br/>
        <span style="color: white">PC端查询后右键打印<br/>移动端请复制查询后网址前往PC端浏览器</span>
        <input class="b" type="submit" value="查询"/>
    </label>
</form>
</body>
</html>
