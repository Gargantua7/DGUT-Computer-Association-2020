<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta content="width=device-width, initial-scale=1" name="viewport"/>
    <title>干事报名</title>
    <link href="${pageContext.request.contextPath}/img/jixielogo.jpg" rel="shortcut icon"/>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/1css.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/sign.css" rel="stylesheet"/>
    <script src="${pageContext.request.contextPath}/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $.ajax({
                url: "${pageContext.request.contextPath}/js/major.json",
                type: "GET",
                dataType: "json",
                success: function (data) {
                    let collage = document.getElementById("collage");
                    for (let i in data) {
                        const optionElement = document.createElement("option");
                        optionElement.value = i;
                        optionElement.text = i;
                        collage.add(optionElement, null)
                    }
                }
            });
        })

        $(document).ready(function () {
            if (${msg != null}) {
                alert("${msg}")
            }
        })

        function submitCheck() {
            let id = $("#id").val();
            if (!(/^20[12][0789]\d{8}$/.test(id))) {
                alert("学号不合法，请重新输入");
                return false;
            }
            let phone = $("#phone").val();
            if (!(/^1[3456789]\d{9}$/.test(phone))) {
                alert("手机号码不合法，请重新输入");
                return false;
            }
            if (
                $("#name").val() === "" ||
                $("#sex").val() === "" ||
                $("#local").val() === "" ||
                $("#collage").val() === "" ||
                $("#major").val() === "" ||
                $("#hobby").val() === "" ||
                $("#firstIntent").val() === "" ||
                $("#self").val() === ""
            ) {
                alert("请填写完整信息")
                return false;
            }
            return true;
        }

        function selectChange() {
            let collage = document.getElementById("collage");
            let selectedCollage = collage.options[collage.selectedIndex].value
            let major = document.getElementById("major")
            let majorList = major.children;
            let len = majorList.length;
            for (let i = len - 1; i > 0; i--) {
                major.removeChild(majorList[i])
            }
            $.ajax({
                url: "${pageContext.request.contextPath}/js/major.json",
                type: "GET",
                dataType: "json",
                success: function (data) {
                    let majorList = data[selectedCollage]
                    for (let i = 0; i < majorList.length; i++) {
                        const optionElement = document.createElement("option");
                        optionElement.value = majorList[i];
                        optionElement.text = majorList[i];
                        major.add(optionElement, null)
                    }
                }
            });
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
                <li><a href="${pageContext.request.contextPath}/#3">电竞部</a></li>
                <li><a href="${pageContext.request.contextPath}/#4">策划部</a></li>
                <li><a href="${pageContext.request.contextPath}/#5">网技部</a></li>
                <li><a href="${pageContext.request.contextPath}/#6">协会定位</a></li>
            </ul>
        </div>
    </div>
</nav>
<img class="img" src="${pageContext.request.contextPath}/img/4.png">
<h3 style="margin: 10% 20% 0 20%; text-align: center; color: white">干事报名信息填写</h3>
<form action="${pageContext.request.contextPath}/officer/submit/" method="post" onsubmit="return submitCheck()">
    <label style="width: 100%;">
        <input style="display: none"/><br/>
        <input id="id" name="studentId" placeholder="学号 *" type="number" value="${person.studentId}"/><br/>
        <input id="name" name="name" placeholder="姓名 *" type="text" value="${person.name}"/><br/>
        <select id="sex" name="sex">
            <option value="" disabled selected hidden>性别 *</option>
            <option value="男">男</option>
            <option value="女">女</option>
        </select>
        <select id="local" name="local">
            <option value="" disabled selected hidden>校区 *</option>
            <option value="松山湖校区">松山湖校区</option>
            <option value="莞城校区">莞城校区</option>
        </select>
        <select id="collage" name="collage" onchange="selectChange()">
            <option value="" disabled selected hidden>学院 *</option>
        </select>
        <select id="major" name="major">
            <option value="" disabled selected hidden>专业 *</option>
        </select>
        <input id="phone" name="phone" placeholder="手机 *" type="number" value="${person.phone}"/><br/>
        <input id="hobby" name="hobby" placeholder="爱好 *" type="text" value="${person.hobby}"/><br/>
        <select id="firstIntent" name="firstIntent">
            <option value="" disabled selected hidden>第一志愿 *</option>
            <option value="技术部">技术部</option>
            <option value="宣传部">宣传部</option>
            <option value="电竞部">电竞部</option>
            <option value="策划部">策划部</option>
            <option value="网技部">网技部</option>
        </select>
        <select name="secondIntent">
            <option value="" disabled selected hidden>第二志愿</option>
            <option value="技术部">技术部</option>
            <option value="宣传部">宣传部</option>
            <option value="电竞部">电竞部</option>
            <option value="策划部">策划部</option>
            <option value="网技部">网技部</option>
        </select>
        <select name="thirdIntent">
            <option value="" disabled selected hidden>第三志愿</option>
            <option value="技术部">技术部</option>
            <option value="宣传部">宣传部</option>
            <option value="电竞部">电竞部</option>
            <option value="策划部">策划部</option>
            <option value="网技部">网技部</option>
        </select>
        <textarea id="self" name="selfIntroduction" placeholder="自我介绍 *"
               style="resize: none; height: 100px">${person.selfIntroduction}</textarea><br/>
        <span style="color: white">报名后请留意后续短信通知<br/>并前往“干事报名资料查询打印”查询并打印报名简历</span>
        <input class="b" type="submit"/>
    </label>
    <a href="${pageContext.request.contextPath}/sign/signUp/" class="fa">干事报名资料查询打印</a>
</form>
</body>
</html>
