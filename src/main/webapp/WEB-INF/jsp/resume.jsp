<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>简历</title>
    <link href="${pageContext.request.contextPath}/img/jixielogo.jpg" rel="shortcut icon">
    <style>
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 10%;
        }

        table, table tr th, table tr td {
            border: 1px solid #000000;
            text-align: center;
            vertical-align: middle;
            padding-top: 30px;
            padding-bottom: 30px
        }
    </style>
</head>
<body>
<table style="table-layout: fixed">
    <caption><h1>简历</h1></caption>
    <tr>
        <td colspan="3">学号</td>
        <td colspan="3">${p.studentId}</td>
        <td colspan="3">姓名</td>
        <td colspan="3">${p.name}</td>
        <td rowspan="3" colspan="3">相片</td>
    </tr>
    <tr>
        <td colspan="3">性别</td>
        <td colspan="3">${p.sex}</td>
        <td colspan="3">校区</td>
        <td colspan="3">${p.local}</td>
    </tr>
    <tr>
        <td colspan="3">学院</td>
        <td colspan="3">${p.collage}</td>
        <td colspan="3">专业</td>
        <td colspan="3">${p.major}</td>
    </tr>
    <tr>
        <td colspan="3">兴趣爱好</td>
        <td colspan="12">${p.hobby}</td>
    </tr>
    <tr>
        <td colspan="5">第一志愿</td>
        <td colspan="5">第二志愿</td>
        <td colspan="5">第三志愿</td>
    </tr>
    <tr>
        <td colspan="5">${p.firstIntent}</td>
        <td colspan="5">${p.secondIntent}</td>
        <td colspan="5">${p.thirdIntent}</td>
    </tr>
    <tr>
        <td colspan="3"><br/>个<br/><br/>人<br/><br/>简<br/><br/>介<br/></td>
        <td colspan="12">${p.selfIntroduction}</td>
    </tr>
</table>
</body>
</html>
