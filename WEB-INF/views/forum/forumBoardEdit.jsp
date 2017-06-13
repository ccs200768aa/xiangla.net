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
<title>模块编辑</title>
<link rel="stylesheet" href="../resources/css/pintuer.css">
<link rel="stylesheet" href="../resources/css/admin.css">

<script type="text/javascript" src="../resources/js/jquery-3.0.0.min.js"></script>
</head>
<body>
	<div class="panel admin-panel">
		<div class="panel-head">
			<strong><span class="icon-pencil-square-o"></span> 模块编辑</strong>
		</div>
		<div class="body-content">
			<div class="body-content">
				<form action="<%=basePath%>forum/forumBoardEdit" method="post" modelAttribute="forumBoard" class="form-x">
					<form:hidden path="forumBoard.id" value="${forumBoard.id}"/>
					<div class="form-group">
						<div class="label">
							<label>模块名称：</label>
						</div>
						<div class="field">
							<c:if test="${forumBoard.id eq 0}">
								<form:input path="forumBoard.boardName"  type="text" class="input"
								 value="${boardName}" />
							</c:if>
							<c:if test="${forumBoard.id ne 0}">
								<form:input path="forumBoard.boardName"  type="text" class="input"
								 value="${boardName}" readonly="true"/>
							</c:if>
							<div class="tips"></div>
						</div>
					</div>
					
					<div class="form-group">
						<div class="label">
							<label>模块描述：</label>
						</div>
						<div class="field">
							<form:input path="forumBoard.description"  type="text" class="input"
								 value="${desctiption}" />
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