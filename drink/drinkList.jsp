<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>XiangLaXiangLa</title>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="../resources/css/style.css" />
<script type="text/javascript" src="../resources/js/jquery-3.0.0.min.js" ></script>
</head>
<body>
	<%@ include file="../include/header.jsp" %>
	<div class="container">
		<div class="list_content">
			<ul>
				<c:forEach items="${foodList}" var="list">
					<li>
						<div class="itemBox">
							<a href="#"><img src="${list.imgUrl}" /></a>
							<span style="font-size:12px;">${list.name}</span>
							<span style="color:red;font-size:14px;">￥${list.price}</span>
						</div>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
	<%@ include file="../include/footer.jsp" %>
</body>
</html>