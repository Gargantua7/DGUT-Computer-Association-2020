<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <title>会员报名</title>
    <link href="${pageContext.request.contextPath}/img/jixielogo.jpg" rel="shortcut icon">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/1css.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/sign.css" rel="stylesheet"/>
    <script src="${pageContext.request.contextPath}/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script>
        $(function() {
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
        });

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
            let phone = $("#phone").val();
            if (!(/^1[3456789]\d{9}$/.test(phone))) {
                alert("手机号码不合法，请重新输入");
                return false;
            }
            if(
                $("#name").val() === "" ||
                $("#sex").val() === "" ||
                $("#local").val() === "" ||
                $("#collage").val() === "" ||
                $("#major").val() === ""
            ) {
                alert("请填写完整信息")
                return false;
            }
            if($("#purpose").val().replace(/(^\s*)|(\s*$)/g, "") === "") {
                alert("想在计协学到什么不能为空！")
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
            for(let i = len - 1; i > 0; i--) {
                major.removeChild(majorList[i])
            }
            $.ajax({
                url: "${pageContext.request.contextPath}/js/major.json",
                type: "GET",
                dataType: "json",
                success: function (data) {
                    let majorList = data[selectedCollage]
                    for(let i = 0; i < majorList.length; i++) {
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
                <img alt="计协logo" height="20px" src="${pageContext.request.contextPath}/img/jixielogo.jpg"
                     width="20px"></a>
            <a class="btn btn-default navbar-btn" href="${pageContext.request.contextPath}/sign/signIn/" style="visibility:hidden">报名</a>
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
<h3 style="margin: 10% 20% 0 20%; text-align: center; color: white">会员报名信息填写</h3>
<form action="${pageContext.request.contextPath}/member/submit/" method="post" onsubmit="return submitCheck()">
    <label style="width: 100%;">
        <input style="display: none"/><br/>
        <input id="id" name="studentId" placeholder="学号 *" type="number" value="${person.studentId}"/><br/>
        <input id="name" name="name" placeholder="姓名 *" type="text" value="${person.name}"/><br/>
        <select name="sex" id="sex">
            <option value="" disabled selected hidden>性别 *</option>
            <option value="男">男</option>
            <option value="女">女</option>
        </select>
        <select name="local" id="local">
            <option value="" disabled selected hidden>校区 *</option>
            <option value="松山湖校区">松山湖校区</option>
            <option value="莞城校区">莞城校区</option>
        </select>
        <select name="collage" id="collage" onchange="selectChange()">
            <option value="" disabled selected hidden>学院 *</option>
        </select>
        <select name="major" id="major">
            <option value="" disabled selected hidden>专业 *</option>
        </select>
        <input id="phone" name="phone" placeholder="手机 *" type="number" value="${person.phone}"/><br/>
        <textarea id="purpose" name="purpose" placeholder="希望在计协学到什么？ *"
                  style="resize: none; height: 100px">${person.purpose}</textarea><br/>
        <span style="color: white">报名后请留意后续短信通知</span>
        <input class="b" type="submit"/>
    </label>
</form>
</body>
</html>