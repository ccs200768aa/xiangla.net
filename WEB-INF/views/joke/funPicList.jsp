<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<%@ include file="../include/top.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" type="text/css" href="../resources/css/joke.css"/>
	</head>
	<body>
		<%@ include file="include/header.jsp" %>
		<div class="clearfix"></div>
		<div id="content">
			<div id="content-l">
				<ul>
					<c:forEach items="${jokeList}" var="joke"> 
						<li>
						<div class="pic-div">
							<h2>标题</h2>
							<p>${joke.content}</p>
							<img src="${joke.picUrl}"  width="300px" height="300px"/>
						</div>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div id="content-r">
				<div class="recommond">
					<label class="label-head">热门推荐</label>
					<div class="reco-list">
						<h4>推荐标题</h4>
						<img src="img/logo.png" alt="" />
						<p>wsdasdad三大大声道撒推荐内dsad是哒是哒是哒是哒容</p>
					</div>
				</div>
				<div class="label">
					<label class="label-head">分类选择</label>
					<br />
					<label class="label-part">萌宠</label>
					<label class="label-part">这个冬天不太冷</label>
					<label class="label-part">洪荒之力就该这么用，对么</label>
					
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
		<%@ include file="include/footer.jsp" %>
	</body>
	
</html>
