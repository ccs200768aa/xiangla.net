<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<%@ include file="../include/top.jsp" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${forumBoardPartBean.forumBoardPart.name}</title>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="../resources/css/forum.css" />
</head>
<body>
	<div class="container">
	<%@ include file="include/header.jsp" %>
		<div id="banner"></div>
		<div id="forum">
			<div class="left">
				<h5>
					论坛热帖 <span style="float: right; height: 100%; line-height: 100%;"><a
						href="#" style="display: inline-block; line-height: 100%;">更多</a></span>
				</h5>
				<div class="left-img-group">
					<a href=""></a> <span>标题</span>
				</div>
				<div class="left-img-group">
					<a href=""></a> <span>标题</span>
				</div>
				<div class="left-img-group">
					<a href=""></a> <span>标题</span>
				</div>

			</div>
			<div class="right">
				<div class="column"></div>
				<button class="btn btn-primary" onclick="javascript:window.location.href='<%=basePath %>forum/userGo2AddPost?boardPartId=${forumBoardPartBean.forumBoardPart.id}'">发表话题</button>
				<table class="table table-striped">
					<tbody>
						<th class="col-sm-4">帖子</th>
						<th class="col-sm-2">作者</th>
						<th class="col-sm-2">回复</th>
						<th class="col-sm-2">最后发表</th>
						
						<c:forEach items="${forumBoardPartBean.postList}" var="post">
						<tr onclick="javascript:window.location.href='<%=basePath %>forum/postDetail?id=${post.id}'">
							<td>${post.subject}</td>
							<td>${post.post_userId}</td>
							<td>${post.replyAmount}</td>
							<td>${post.lastReplyTime}</td>
						</tr>
						</c:forEach>

					</tbody>
				</table>
			</div>
		</div>
		<%@ include file="include/footer.jsp" %>
	</div>
</body>
</html>