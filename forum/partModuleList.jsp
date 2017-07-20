<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%@ include file="../include/top.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>模块管理</title>
<link rel="stylesheet" href="../resources/css/pintuer.css">
<link rel="stylesheet" href="../resources/css/admin.css">

<script type="text/javascript" src="../resources/js/jquery-3.0.0.min.js"></script>
<script type="text/javascript" src="../resources/js/pintuer.js"></script>
</head>
<body>
	<div class="panel admin-panel">
		<div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 模块管理</strong></div>
		<div class="padding border-bottom">
			<button type="button" class="button border-yellow"
				onclick="window.location.href='<%=basePath%>forum/go2ForumBoardEdit'">
				<span class="icon-plus-square-o"></span> 添加版块
			</button>
		</div>
		<table id="partModuleList" class="table table-hover text-center">
				<tr>
					<th width="5%">ID</th>
					<th width="30%">名称</th>
					<th width="30%">描述</th>
					<th width="10%">描述</th>
					<th width="25%">操作</th>
				</tr>
				<c:forEach items="${forumBoardBeanList}" var="forumBoardBean">
					<tr id="forumBoard${forumBoardBean.forumBoard.id}" class="forumBoardTr">
						<td>${forumBoardBean.forumBoard.id}</td>
						<td>${forumBoardBean.forumBoard.boardName}</td>
						<td>${forumBoardBean.forumBoard.description}</td>
						<td>
							<c:choose>
								<c:when test="${forumBoardBean.forumBoard.status==1}">
									上线
								</c:when>
								<c:when test="${forumBoardBean.forumBoard.status==-1}">
									离线
								</c:when>
								<c:otherwise>
									未知
								</c:otherwise>
							</c:choose>
						</td>
						<td>
						<span style="width:20%;display:inline-block">
							<a class="icon-plus"  style="disply:block;width:100%;height:100%;" href="<%=basePath%>forum/go2ForumBoardPartEdit?boardId=${forumBoardBean.forumBoard.id}"></a>
						</span>
						<span style="width:20%;display:inline-block">
							<a class="icon-edit" style="disply:block;width:100%;height:100%;" href="<%=basePath%>forum/go2ForumBoardEdit?id=${forumBoardBean.forumBoard.id}"></a>
						</span>
						<span style="width:20%;display:inline-block">
							<a class="icon-wrench" style="disply:block;width:100%;height:100%;" href="<%=basePath%>forum/setBoardStatus?id=${forumBoardBean.forumBoard.id}"></a>
						</span>
						</td>
					</tr>
				</c:forEach>
			</table>
	</div>

	<c:forEach items="${forumBoardBeanList}" var="forumBoardBean">
		<div class="panel admin-panel boardPartDiv" style="margin-top: 10px;display:none;"
			id="boardPartDiv${forumBoardBean.forumBoard.id}">
			<table class="table table-hover text-center">
				<tr>
					<th width="10%">名称</th>
					<th width="30%">版主</th>
					<th width="10%">帖数</th>
					<th width="25%">最后活跃时间</th>
					<th width="25%">操作</th>
				</tr>
				<c:forEach items="${forumBoardBean.partList}" var="boardPart">
					<tr>
						<td>${boardPart.name}</td>
						<td>${boardPart.moderator}</td>
						<td>${boardPart.postCount}</td>
						<td>${boardPart.lastUpdateTime}</td>
						<td>
							<span style="width:20%;display:inline-block">
								<a class="icon-edit" style="disply:block;width:100%;height:100%;" href="<%=basePath%>forum/go2ForumBoardPartEdit?id=${boardPart.id}&isForumOn=1"></a>
							</span>
							<span style="width:20%;display:inline-block">
								<a class="icon-wrench" style="disply:block;width:100%;height:100%;" href="<%=basePath%>forum/setBoardPartStatus?id=${boardPart.id}"></a>
							</span>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</c:forEach>
	
	<script>
		$(function(){
			$(".forumBoardTr").click(function(){
				var id = $(this).attr("id");
				var div = "boardPartDiv"+id.charAt(id.length - 1);
				$(".boardPartDiv").css("display","none");
				$("#"+div).css("display","");
			});
		});
	</script>
	
</body>
</html>