<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <title>莞工计协报名系统</title>
    <script src="${pageContext.request.contextPath}/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <link href="${pageContext.request.contextPath}/img/jixielogo.jpg" rel="shortcut icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/1css.css">
    <link href="${pageContext.request.contextPath}/css/sign.css" rel="stylesheet"/>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/">
                <img src="${pageContext.request.contextPath}/img/jixielogo.jpg"
                     alt="计协logo" height="20px;" width="20px;"></a>
            <a class="btn btn-default navbar-btn" href="${pageContext.request.contextPath}/sign/signIn/" style="visibility:hidden">报名</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="${pageContext.request.contextPath}/#1">技术部</a></li>
                <li><a href="${pageContext.request.contextPath}/#2">宣传部</a></li>
                <li><a href="${pageContext.request.contextPath}/#3">电竞部</a></li>
                <li><a href="${pageContext.request.contextPath}/#4">策划部</a></li>
                <li><a href="${pageContext.request.contextPath}/#5">网技部</a></li>
                <li><a href="${pageContext.request.contextPath}/#6">协会定位</a></li>
            </ul>
        </div>
    </div>
</nav>
<img src="${pageContext.request.contextPath}/img/4.png" class="img">
<h3 style="margin: 10% 20% 0 20%; text-align: center; color: white">选择报名类型</h3>
<div style="margin: 50px 20%; width: 60%; color: rgb(255, 255, 255)">
    <a href="${pageContext.request.contextPath}/member/" class="b">会员</a>
</div>
<div style="margin: 50px 20%; width: 60%; color: rgb(255, 255, 255)">
    <a href="${pageContext.request.contextPath}/officer/" class="b">干事</a>
</div>
<div style="margin: 100px 20%; width: 60%; color: rgb(255, 255, 255)">
    <a href="${pageContext.request.contextPath}/sign/signUp/" class="b">干事报名资料查询打印</a>
</div>
<div style="margin: 100px 20%; width: 60%; color: rgb(255, 255, 255); display: none">
    <a href="${pageContext.request.contextPath}/member/lecture/" class="b">干事报名资料查询打印</a>
</div>
</body>
</html>