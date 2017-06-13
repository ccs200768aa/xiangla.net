<%@ page pageEncoding="UTF-8"%>
<%@ include file="../include/top.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="../resources/css/forum.css"/>
</head>
<body style="position:absolute;width: 100%; height: 100%;background-color: #90cfc4; padding: 400px 0 0 0;text-align: center;">
    <div class="forum-login-content">
        <h1>Forum Login/论坛登录</h1>
        <div class="forum-login-form">
        <form action="<%=basePath %>forum/login">
            <input type="text" placeholder="UserName">
            <input type="password" placeholder="******">
            <input type="submit" value="login">
         </form>
        </div>
        <div class="forum-login-select">
            <input type="checkbox" name="" id=""/><span>remember me?</span>
            <a href="#">forget password?</a>
        </div>
    </div>
</body>
</html>