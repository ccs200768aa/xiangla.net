<%@ page pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <div id="header">
        <div id="logo">

        </div>
        <div id="login-form">
            <div class="input-group">
                <span>用户名</span>
                <c:if test="${sessionScope.forumUser ne null}">
                	<input type="text"  readonly="readonly" value="${sessionScope.forumUser.userName}"/>
                </c:if>
                <c:if test="${sessionScope.forumUser eq null}">
                	<input type="text" placeholder="请输入用户名">
                </c:if>
                
            </div>
			
			  <c:if test="${sessionScope.forumUser eq null}">
            <div class="input-group">
                <span>密码</span>
                <input type="text" placeholder="请输入密码">
            </div>
            <div class="btn-group-sm">
                <span class="btn btn-danger">注册</span>
                <input type="submit" value="登录" class="btn btn-warning">
            </div>
            </c:if>
        </div>
    </div>