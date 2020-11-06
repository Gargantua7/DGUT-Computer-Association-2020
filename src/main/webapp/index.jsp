<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <%--        <meta content="IE=edge" http-equiv="X-UA-Compatible">--%>
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <title>莞工计协</title>
    <script src="${pageContext.request.contextPath}/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <link href="${pageContext.request.contextPath}/img/jixielogo.jpg" rel="shortcut icon">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type=text/css >
    <link href="${pageContext.request.contextPath}/css/1css.css" rel="stylesheet" type=text/css >
</head>

<body>
<!-- 弹窗  -->
<!-- data-spy="scroll" data-target="#fixed-nav" data-offset="0" 滚动监听函数 -->
<!-- 导航条 -->
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
            <a class="navbar-brand" href="#"><img alt="计协logo" height="20px" src="${pageContext.request.contextPath}/img/jixielogo.jpg"
                                           width="20px"></a>
<%--            <a class="btn btn-default navbar-btn" href="${pageContext.request.contextPath}/sign/signIn/">报名</a>--%>
            <a class="btn btn-default navbar-btn" href="${pageContext.request.contextPath}/member/">报名</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="${pageContext.request.contextPath}/#1">技术部</a></li>
                <li><a href="${pageContext.request.contextPath}/#2">宣传部</a></li>
                <li><a href="${pageContext.request.contextPath}/#4">策划部</a></li>
                <li><a href="${pageContext.request.contextPath}/#5">网技部</a></li>
                <li><a href="${pageContext.request.contextPath}/#6">协会定位</a></li>
            </ul>
            <!-- <ul class="nav navbar-nav navbar-right">
                <li><a href="#">报名</a></li>
            </ul> -->
        </div>
    </div>
</nav>
<!-- 导航条 -->
<!--内容模块 -->
<div class="block" style="width:100%;height:600px;">
    <!-- 这是第一个背景图style="background:url(图片地址); width:100%;height:600px;" -->
    <div class="container-fluid" id="1" style="background-image:url(img/tu1.jpg); background-position:center;">
        <div class="center">
            <article class="item">
                <header>
                    <h3>技术部</h3>
                </header>
                <h4>会员授课<br/>为理工学子提供维修服务</h4>
                <p>技术部是计协的技术中心<br/>与会员研讨电脑知识和问题</p>
                <p>负责技术性推文和授课<br/>还能认识各种有趣的机佬</p>
                <!-- <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="bottom" data-content="">
                    点！
                </button> -->
                <!--                <img src="img/tu2.jpg" height="250px;" width="295px;">&lt;!&ndash; 这是第一个图片，把地址放进src就行 &ndash;&gt;-->
            </article>
        </div>
    </div>
</div>
<div class="block" style="width:100%;height:600px;">
    <div class="container-fluid" id="2" style="background-image:url(${pageContext.request.contextPath}/img/3.jpg); background-size:100% 100%;
            background-position:center;">
        <!-- 这是第二个背景图style="background:url(图片地址); width:100%;height:600px;" -->
        <div class="center">
            <article class="item">
                <header>
                    <h3>宣传部</h3>
                </header>
                <h4>宣传设计 公众号运营</h4>
                <p>键道万古如长夜<br/>你来宣传你自己</p>
                <!--                &nbsp;<img src="img/tu2.jpg" height="250px;" width="250px;">&lt;!&ndash; 这是第二个图片，把地址放进src就行 &ndash;&gt;-->
                <!-- <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="top" data-content="">
                    点？？
                </button> -->
            </article>
        </div>
    </div>
</div>
<div class="block" style="width:100%;height:600px;">
    <div class="container-fluid" id="4" style="background-image:url(${pageContext.request.contextPath}/img/5.jpg); background-size:100% 100%;
            background-position:center;">
        <!-- 这是第四个背景图style="background:url(图片地址); width:100%;height:600px;" -->
        <!-- style="background: url(img/tu2.jpg);" -->
        <div class="center">
            <article class="item">
                <header>
                    <h3>策划部</h3>
                </header>
                <h4>策划 组织协会活动</h4>
                <p>会长是一家之主<br/>策划部就是老管家。</p><!-- 这是第四个图片，把地址放进src就行 -->
                <!--                <img src="img/tu2.jpg" height="250px;" width="250px;">-->
            </article>
        </div>
    </div>
</div>
<div class="block" style="width:100%;height:600px;">
    <div class="container-fluid" id="5" style="background-image:url(${pageContext.request.contextPath}/img/tu3.jpg); background-size:100% 100%;
            background-position:center;">
        <!-- 这是第五个背景图style="background:url(图片地址); width:100%;height:600px;" -->
        <!-- style="background: url(img/tu1.jpg);" -->
        <div class="center">
            <article class="item">
                <header>
                    <h3>网技部</h3>
                </header>
                <h4>网站管理 开发</h4>
                <p>酷炫的界面？黑客帝国的代码雨？</p>
                <p>你所看到的我们都有办法实现</p>
                <!--                <img src="img/tu1.jpg" height="250px;" width="250px;">&lt;!&ndash; 这是第五个图片，把地址放进src就行 &ndash;&gt;-->
            </article>
        </div>
    </div>
</div>
<div class="block" style="width:100%;height:600px;">
    <div class="container-fluid" id="6" style="background-image:url(${pageContext.request.contextPath}/img/4.png); background-size:100% 100%;
            background-position:center;">
        <!-- 这是第六个背景图style="background:url(图片地址); width:100%;height:600px;" -->
        <div class="center">
            <article class="item" style="text-align: left">
                <h2>协会的定位</h2>
                <p>为莞工学子提供优质服务，不断壮大莞工计算机爱好者团体。 </p >
                <p> 以知识为桥梁、以计算机技术为媒介，通过知识讲座、技能培训、应用实践、电子竞技等多种方式。</p >
                <p> 增进同学们对计算机与计算机技术的了解，培养兴趣、提高技能、服务同学。</p >
                <!-- 这是第六个图片，把地址放进src就行 -->
                <!--                <img src="img/tu2.jpg" height="250px;"-->
                <!--                                                                           width="260px;">-->
                <!-- Button trigger modal -->
                <!--  <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                     这次该点了！
                 </button>

                 <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                     <div class="modal-dialog" role="document">
                         <div class="modal-content">
                             <div class="modal-header">
                                 <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                 <h4 class="modal-title" id="myModalLabel">欢迎报名计协！</h4>
                             </div>
                             <div class="modal-footer">
                                 <button type="button" class="btn btn-default" data-dismiss="modal">忍痛关闭</button>
                                 <button type="button" class="btn btn-primary">留着过年？</button>
                             </div>
                         </div>
                     </div>
                 </div> -->
            </article>
        </div>
    </div>
</div>
</body>
</html>