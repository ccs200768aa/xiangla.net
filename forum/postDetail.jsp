<%@ page pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<%@ include file="../include/top.jsp" %>
<!DOCTYPE html>
<html>
<head lang="en">
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
    <div id="postDetailList">
        <div class="post-detail-column">
            <div class="left" style="border-right: 1px dashed #d5d5d5;text-align: center">
                <img src="img/icon-forum.png"style="width: 100px;height: 100px;">
                <h3>名称:${forumPostBean.forumPost.post_userId}</h3>
                <h5>贴吧等级</h5>
                <h5>财富值</h5>
             </div>
            <div class="right">
                <h5 style="border-bottom: 1px solid #90cfc4;padding: 1px">发表于：${forumPostBean.forumPost.post_time}<a style="float: right;">只看该作者</a></h5>
                <div style="height: 80%"><p>${forumPostBean.forumPost.post_content}</p></div>
                <h5><a href="#">回复</a></h5>
            </div>
        </div>
			<c:forEach items="${forumPostBean.forumPostDetailList}" var="postDetail">
				<div class="post-detail-column">
					<div class="left"
						style="border-right: 1px dashed #d5d5d5; text-align: center">
						<img src="img/icon-forum.png" style="width: 100px; height: 100px;">
						<h3>名称:${postDetail.replyUserId}</h3>
						<h5>贴吧等级</h5>
						<h5>财富值</h5>
					</div>
					<div class="right">
						<h5>
							发表于：${postDetail.replyTime}<a style="float: right;">只看该作者</a>
						</h5>
						<p>${postDetail.replyContent}</p>
					</div>
				</div>
			</c:forEach>
		</div>
		<div id="reply-column">
			<form action="<%=basePath%>forum/userReplyPost" method="post">
				<input type="hidden" name="id" value="${forumPostBean.forumPost.id}"/>
				<textarea style="width:100%;outline:none;height:70px;margin-bottom:10px;" name="replyContent"></textarea>
				<button type="submit" class="btn btn-success">回复</button>
			</form>
		</div>

    <%@ include file="include/footer.jsp" %>
</div>
</body>
</html>