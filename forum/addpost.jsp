<%@ page pageEncoding="UTF-8"%>
<%@ include file="../include/top.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head lang="zh-cn">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="../resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../resources/css/forum.css"/>
</head>
<body>
<div class="container">
	<%@ include file="include/header.jsp" %>
    <div id="banner">

    </div>
    <form action="<%=basePath%>forum/userAddPost" method="post">
    <div id="forum">
    <div id="forum-title">
        <span>标题</span>
        <input type="text" name="subject" placeholder="请输入标题" class="input-border-o">
    </div>

     <div id="forum-content">
         <span>正文</span>
         <script id="container" name="post_content" type="text/plain"></script>
         <script type="text/javascript" src="../resources/ueditor/ueditor.config.js"></script>
         <script type="text/javascript" src="../resources/ueditor/ueditor.all.js"></script>
         <script type="text/javascript">
             var ue = UE.getEditor('container');
         </script>
     </div>
     
	<div id="forum-btn-group">
		<button class="btn btn-success" type="submit">发表</button>
		<button class="btn btn-danger">取消</button>
	</div>
    </div>
    </form>
    </div>
</body>
</html>