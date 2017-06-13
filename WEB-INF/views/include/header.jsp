<%@ page pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("basePath", basePath);
%>
<div class="header">
		<div class="top-index">
			<div id="manage">
        	<ul>
        		<li><a href="<%=basePath%>index/managerLogin">I'm Manager</a></li>
        		<li><a href="<%=basePath%>index/userLogin">I'm User</a></li>
        	</ul>
        </div>
		</div>
        <div class="container">
        <div class="logo"><a href="#" ></a></div>
        <div class="search_box">
            <form action="#">
                <input type="text" placeholder="全站搜索"/>
                <input type="submit" class="btn btn-default" value="查询"/>
            </form>
        </div>
        <div class="navbar">
            <nav>
                <ul class="nav-pills">
                    <li><a href="resources/views/eatList.jsp">吃</a></li>
                    <li><a href="#">喝</a></li>
                    <li><a href="#">玩</a></li>
                    <li><a href="#">乐</a></li>
                </ul>
            </nav>
        </div>
        </div>
    </div>