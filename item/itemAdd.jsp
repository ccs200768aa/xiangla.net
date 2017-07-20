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
<title>商品添加</title>
<link rel="stylesheet" href="../resources/css/pintuer.css">
<link rel="stylesheet" href="../resources/css/admin.css">

<script type="text/javascript" src="../resources/js/jquery-3.0.0.min.js"></script>
<script type="text/javascript" src="../resources/js/pintuer.js"></script>
</head>
<body>
	<div class="panel admin-panel">
		<div class="panel-head"><strong><span class="icon-pencil-square-o"></span> 商品添加</strong></div>
		<div class="body-content">
			<form action="<%=basePath %>item/itemAdd" method="post" class="form-x" id="item-form" enctype="multipart/form-data">
				<div class="form-group">
					<div class="label">
						<label>商品类型</label>
					</div>
					<div class="field">
						<form:select path="item.itemType"  id="itemType" class="input" style="width:200px; line-height:17px;">
							<form:option value="0">请选择分类</form:option>
							<form:option value="1">吃的</form:option>
							<form:option value="2">喝的</form:option>
							<form:option value="3">玩的</form:option>
							<form:option value="4">乐的</form:option>
						</form:select>
					</div>
				</div>
			
				<div class="form-group">
					<div class="label">
          				<label>商品名称：</label>
        			</div>
        			<div class="field">
          				<form:input path="item.name" type="text" class="input" id="name" value="" />
          				<div class="tips"></div>
       				</div>
				</div>
				
				<div class="form-group">
					<div class="label">
          				<label>商品价格：</label>
        			</div>
        			<div class="field">
          				<form:input path="item.price"  type="text" class="input" id="price" value="" />
          				<div class="tips"></div>
       				</div>
				</div>
				
				<div class="form-group">
					<div class="label">
          				<label>商品库存：</label>
        			</div>
        			<div class="field">
          				<form:input path="item.stock"  type="text" class="input" id="stock" value="" />
          				<div class="tips"></div>
       				</div>
				</div>
				
				<div class="form-group">
					<div class="label">
          				<label>商品概述：</label>
        			</div>
        			<div class="field">
          				<form:input path="item.description"  type="text" class="input" id="description" value="" />
          				<div class="tips"></div>
       				</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>商品图片：</label>
					</div>
					<div class="field">
						<form:input path="item.picUrl" type="text" id="url1"  readonly="true" class="input tips"
							style="width: 25%; float: left;" value="" data-toggle="hover"
							data-place="right" data-image=""></form:input> 
							<input type="file" id="fileName"  name="fileName" onclick="javascript:$('#url1').val('');" onchange="imageUpload(this)" class="button bg-blue margin-left" style=" width:105px;outline: medium none; position: absolute;filter:alpha(opacity=0);-moz-opacity:0;opacity:0; "></input>
							<input type="button" class="button bg-blue margin-left" id="image1" value="+ 浏览上传" style="float: left;">
							
						<div class="tipss">图片尺寸：500*200</div>
					</div>
				</div>
				<div class="form-group">
       				 <div class="label">
          			<label></label>
        		</div>
        		<div class="field">
         			 <button class="button bg-main icon-check-square-o" type="button" onclick="add();"> 提交</button>
        		</div>
      </div>
			</form>
		</div>
	 </div>
	 <script type="text/javascript">
	 	function imageUpload(){
	 		var img = $("#fileName").val()	;
	 		var suffix = img.substr(img.lastIndexOf(".")).toLowerCase() ;
	 		if(suffix != "" && suffix != ".jpg" && suffix !=".png" && suffix != ".gif"){
	 			alert("图片格式仅支持jpg,png,gif");
	 			return false;
	 		}
	 		$("#url1").val(img);
	 		$("#url1").attr("data-image",img);
	 	}
	 	
	 	function isValid(){
	 		var itemType = $("#itemType").val();
	 		if(itemType == 0 || typeof(itemType) == "undefined"){
	 			alert("请选择合适的商品类型！");
	 			return false;
	 		}
	 		var name = $("#name").val();
	 		if(name == ""){
	 			alert("请输入商品名称！");
	 			return false;
	 		}
	 		var price = $("#price").val();
	 		if(price == ""){
	 			alert("请输入商品价格！");
	 			return false;
	 		}
	 		var stock = $("#stock").val();
	 		if(stock == ""){
	 			alert("请输入商品库存！");
	 			return false;
	 		}
	 		var fileName = $("#fileName").val();
	 		if(fileName == ""){
	 			alert("请上传商品图片！");
	 			return false;
	 		}
	 		return true;
	 	}
	 	
	 	function add(){
	 		if(isValid()){
	 			$("#item-form").submit();
	 		}
	 	}
	 </script>
</body>
</html>