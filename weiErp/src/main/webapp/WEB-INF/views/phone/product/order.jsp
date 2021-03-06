<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../common/taglib.jsp"%>

<div class="my_orderAdr">
	<h4>订单产品</h4>
	<div>订单号：<span id="serial">${orderSerial}</span></div>
	<table class="table table-bordered my_table">
		<tr>
			<th>名称</th>
			<th>
				<c:choose>
					<c:when test="${sessionScope.prefer}">
						优惠价
					</c:when>
					<c:otherwise>
						原价
					</c:otherwise>
				</c:choose>
			</th>
			<th>数量</th>
		</tr>
		<c:forEach items="${products}" var="product">
			<tr name="product" pid="${product.id}">
				<td name="name">${product.name}</td>
				<td name="price">
					<c:choose>
						<c:when test="${sessionScope.prefer}">
							${product.preferPrice}
						</c:when>
						<c:otherwise>
							${product.price}
						</c:otherwise>
					</c:choose>
				</td>
				<td><input class="form-control" type="tel" value="${product.amount}" name="amount"></td>
			</tr>
		</c:forEach>
	</table>
</div>

<div class="my_orderAdr">
	<h4>收货信息</h4>
	<table class="table table-bordered my_table">
		<tr>
			<td>地址</td>
			<td><textarea rows="" cols="" class="form-control" id="address">${busi.address}</textarea></td>
		</tr>
		<tr>
			<td>留言</td>
			<td><textarea rows="" cols="" class="form-control" id="note"></textarea></td>
		</tr>
	</table>
</div>
<button class="btn btn-warning my_blockBtn" id="submitBtn" onclick="order.submit()">提交订单</button>
