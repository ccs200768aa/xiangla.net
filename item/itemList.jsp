<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%@ include file="../include/top.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品列表</title>
<link rel="stylesheet" href="../resources/css/style.css">
<link rel="stylesheet" href="../resources/css/pintuer.css">
<link rel="stylesheet" href="../resources/css/admin.css">

<script type="text/javascript" src="../resources/js/jquery-3.0.0.min.js"></script>
<script type="text/javascript" src="../resources/js/bootstrap.min.js"></script>
</head>
<body>
<div class="panel admin-panel">
<div class="panel-head"><strong class="icon-reorder"> 商品列表</strong></div>
 <div class="padding border-bottom">
    <button type="button" class="button border-yellow" onclick="window.location.href='<%=basePath%>item/goItemAdd'">
    <span class="icon-plus-square-o"></span> 添加商品
    </button>
  </div>
	<table id="itemList" class="table table-hover text-center">
	<tr>
      <th width="10%">ID</th>
      <th width="15%">名称</th>
      <th width="20%">图片</th>
      <th width="20%">描述</th>
      <th width="10%">库存</th>
      <th width="15%">操作</th>
    </tr>
    
    <c:forEach items="${itemList}" var="item">
    	<tr>
    		<td>${item.id}</td>
    		<td>${item.name}</td>
    		<td><img src="${item. picUrl}" width="120" height="50"/></td>
    		<td>${item.description}</td>
    		<td>${item.stock}</td>
    		<td>
				<div class=button-group>
				<a class="button border-main" href="<%=basePath%>item/goEditItem?id=${item.id}"><span class="icon-edit"></span> 修改</a>
      			<a class="button border-red" href="javascript:void(0)" onclick="return del(${item.id})"><span class="icon-trash-o"></span> 删除</a>
				</div>
			</td>
    	</tr>
    </c:forEach>
	</table>
	</div>
	<script>
	 function del(id){
		 if(confirm("确定删除该记录？")){
			 window.location.href="<%=basePath%>item/delItem?id="+id;
		 }
	 }
	</script>
</body>
</html>