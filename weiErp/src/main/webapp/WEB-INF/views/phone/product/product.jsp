<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../common/taglib.jsp"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
	<head>
		<base href="<%=basePath%>"/>
		<meta charset="UTF-8"/>
		<title>商品列表</title>
		<base href="<%=basePath%>"/>
		<meta charset="UTF-8"/>
		<meta content="width=320px, user-scalable=0;" name="viewport"/>
		<meta content="yes" name="apple-mobile-web-app-capable" />
		<meta content="black" name="apple-mobile-web-app-status-bar-style" />
		<title>test</title>
		<link href="resources/js/plugin/bootstrap3/css/bootstrap.css" rel="stylesheet">
		<link href="resources/style/plugin/font-awesome-4.0.1/css/font-awesome.min.css" rel="stylesheet">
		<link href="resources/style/app/phone/common/phone.css" rel="stylesheet">
		<link href="resources/style/app/phone/product/product.css" rel="stylesheet">
	</head>
	
	<body>
	
		<input type="hidden" id="typeId" value="${typeId}">
		
		<div class="my_query">
			<div class="input-group">
	            <input type="text" class="form-control" placeholder="输入礼品名" id="keyword">
	            <span class="input-group-btn">
	            	<button type="button" class="btn btn-success" id="queryBtn">查询</button>
	            </span>
          	</div>
		</div>
		
		<div class="my_products">
			<ul id="productList"></ul>
		</div>
	
		<!-- loading -->
		<div class="my_loading" id="loadingDiv">
			<div id="loaderImage" style="margin: auto;"></div>
			<p>加载中</p>
		</div>
	
	<!-- 	js资源 -->
	<script type="text/javascript" src="resources/js/plugin/jquery/jquery-1.10.2.js"></script>
	<script type="text/javascript" src="resources/js/plugin/bootstrap3/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/app/phone/product/product.js"></script>
	<script type="text/javascript" src="resources/js/app/utils/loading.js"></script>
	<script type="text/javascript" src="resources/js/app/utils/utils.js"></script>
	</body>
</html>

