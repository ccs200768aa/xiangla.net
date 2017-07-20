<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>
<%@ include file="../include/top.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>版块编辑</title>
<link rel="stylesheet" href="../resources/css/pintuer.css">
<link rel="stylesheet" href="../resources/css/admin.css">

<script type="text/javascript" src="../resources/js/jquery-3.0.0.min.js"></script>
</head>
<body>
	<div class="panel admin-panel">
		<div class="panel-head">
			<strong><span class="icon-pencil-square-o"></span>版块编辑</strong>
		</div>
		<div class="body-content">
			<div class="body-content">
				<form action="<%=basePath%>forum/forumBoardPartEdit" method="post" modelAttribute="forumBoardPartBean" class="form-x">
					<form:hidden path="forumBoardPartBean.forumBoardPart.id" value="${forumBoardPartBean.forumBoardPart.id}"/>
					<form:hidden path="forumBoardPartBean.forumBoardPart.boardId" value="${forumBoardPartBean.forumBoardPart.boardId}"/>
					
					<div class="form-group">
						<div class="label">
							<label>版块名称：</label>
						</div>
						<div class="field">
							<c:if test="${forumBoardPartBean.forumBoardPart.id eq 0}">
								<form:input path="forumBoardPartBean.forumBoardPart.name"  type="text" class="input"
								 value="${forumBoardPart.name}" />
							</c:if>
							<c:if test="${forumBoardPartBean.forumBoardPart.id ne 0}">
								<form:input path="forumBoardPartBean.forumBoardPart.name"  type="text" class="input"
								 value="${forumBoardPart.name}" readonly="true"/>
							</c:if>
							<div class="tips"></div>
						</div>
					</div>
					
					<div class="form-group">
						<div class="label">
							<label>版主：</label>
						</div>
						<div class="field">
							<c:forEach items="${forumBoardPartBean.userList}" var="user">
								<input type="checkbox" value="${user.userName}"  name="forumBoardPart.moderator"/>${user.userName}
							</c:forEach>
							<div class="tips"></div>
						</div>
					</div>

					<div class="form-group">
						<div class="label">
							<label></label>
						</div>
						<div class="field">
							<button class="button bg-main icon-check-square-o" type="submit">
								提交</button>
						</div>
				</form>
			</div>
		</div>

	</div>
</body>
</html>