<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
        <div class="img-gallery"></div>
        <div class="news-list">
            <div class="news-content">
                <h1>标题1</h1>
                <section>我是内容我是内容我是内容</section>
            </div>
            <div class="news-content">
                <h1>标题1</h1>
                <section>我是内容我是内容我是内容</section>
            </div>
        </div>
    </div>
    <div id="forum">
    <c:forEach items="${boardBeansList}" var="boardBean">
    	<div class="forum-part">
    	<h1>${boardBean.forumBoard.boardName}<img src="../resources/img/3.gif" style="float: right;vertical-align: middle;margin-right: 30px"></h1>
    	   <ul >
    	   		<c:forEach items="${boardBean.partList}" var="boardPart">
    	   			<li>
                    	<a href="" class="a-image"></a>
                    	<p>
                    	<a href="<%=basePath %>forum/partModule?partId=${boardPart.id}" >${boardPart.name}</a>
                    	<section>版主：${boardPart.moderator}</section>
                    	<h6>最后发帖：${boardPart.lastUpdateTime}</h6>
                    	</p>
                </li>
    	   		</c:forEach>
                <li>
                    <a href="" class="a-image"></a>
                    <p>
                    <h6>综艺文化</h6>
                    <section>版主：</section>
                    <h6>最后发帖：</h6>
                    </p>
                </li>
             </ul>
             </div>
    </c:forEach>
       
    </div>
	<%@ include file="include/footer.jsp" %>
    </div>
</body>
</html>