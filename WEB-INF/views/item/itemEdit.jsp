<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false" %>
<%@ include file="../include/top.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品编辑</title>
<link rel="stylesheet" href="../resources/css/pintuer.css">
<link rel="stylesheet" href="../resources/css/admin.css">

<script type="text/javascript" src="../resources/js/jquery-3.0.0.min.js"></script>
</head>
<body>
	<div class="panel admin-panel">
		<div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 商品编辑</strong></div>
		<div class="body-content">
			<form action="<%=basePath %>item/itemEdit" method="post" class="form-x">
			<form:input path="item.id" value="${item.id}" type="hidden"/>
			<form:input path="item.picUrl" value="${item.picUrl}" type="hidden"/>
			<form:input path="item.itemType" value="${item.itemType}" type="hidden"/>
				<div class="form-group">
					<div class="label">
          				<label>商品名称：</label>
        			</div>
        			<div class="field">
          				<form:input path="item.name" type="text" class="input" name="stitle" value="${item.name}" />
          				<div class="tips"></div>
       				</div>
				</div>
				
				<div class="form-group">
					<div class="label">
          				<label>商品单价：</label>
        			</div>
        			<div class="field">
          				<form:input path="item.price"  type="text" class="input" name="stitle" value="${item.price}" />
          				<div class="tips"></div>
       				</div>
				</div>
				
				<div class="form-group">
					<div class="label">
          				<label>商品库存：</label>
        			</div>
        			<div class="field">
          				<form:input path="item.stock"  type="text" class="input" name="stitle" value="${item.stock}" />
          				<div class="tips"></div>
       				</div>
				</div>
				
				<div class="form-group">
					<div class="label">
          				<label>商品概述：</label>
        			</div>
        			<div class="field">
          				<form:input path="item.description"  type="text" class="input" name="stitle" value="${item.description}" />
          				<div class="tips"></div>
       				</div>
				</div>
				
				<div class="form-group">
       				 <div class="label">
          			<label></label>
        		</div>
        		<div class="field">
         			 <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        		</div>
      </div>
			</form>
		</div>
	 </div>
</body>
</html>