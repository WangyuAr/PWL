<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>漂物流</title>
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/jquery.fancybox.css">
</head>
<body>
	<jsp:include page="top.jsp"></jsp:include>
	
	
	<div class="container">
		<div class="row my">
			<div class="left">
				<div class="top">
					<div class="user-head">
						<img src="images/user-head.jpg" alt="user-head">
					</div>
				    <div class="border">
					 	<div class="complete">
							<img src="images/pencil.png" alt="资料"><a href="<%=basePath %>/editinfo.jsp">完善资料</a>
					 	</div>
					 	<div class="my-product">
							<img src="images/store.png" alt="货架"><a href="#">我的货架</a>
					 	</div>
					</div>
				</div>
				<div class="bottom">
					您还没有正式的用户名，赶快去完善资料吧！
				</div>
			</div>
			<div class="right">
				<div class="single-product">
					<div class="publish-time">
						发布时间：2014-05-06 5：32
					</div>
					<div class="pic">
						<img src="images/mac.jpg" alt="product">
					</div>
					<div class="title">
						macbook pro
					</div>
					<div class="price">
						￥500
					</div>
					<div class="edit-button">
						<a href="publish.html"><button type="button" class="btn btn-default">编辑宝贝</button></a>
					</div>
					<div class="delete">
						<a href="#">删除</a>
					</div>
				</div>
				<div class="single-product">
					<div class="publish-time">
						发布时间：2014-05-06 5：32
					</div>
					<div class="pic">
						<img src="images/mac.jpg" alt="product">
					</div>
					<div class="title">
						macbook pro
					</div>
					<div class="price">
						￥500
					</div>
					<div class="edit-button">
						<a href="publish.html"><button type="button" class="btn btn-default">编辑宝贝</button></a>
					</div>
					<div class="delete">
						<a href="#">删除</a>
					</div>
				</div>
				<div class="single-product">
					<div class="publish-time">
						发布时间：2014-05-06 5：32
					</div>
					<div class="pic">
						<img src="images/mac.jpg" alt="product">
					</div>
					<div class="title">
						macbook pro
					</div>
					<div class="price">
						￥500
					</div>
					<div class="edit-button">
						<a href="publish.html"><button type="button" class="btn btn-default">编辑宝贝</button></a>
					</div>
					<div class="delete">
						<a href="#">删除</a>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="fenye1">
				<ul class="pagination pagination-lg">
				  <li><a href="#">&laquo;</a></li>
				  <li><a href="#">1</a></li>
				  <li><a href="#">2</a></li>
				  <li><a href="#">3</a></li>
				  <li><a href="#">4</a></li>
				  <li><a href="#">5</a></li>
				  <li><a href="#">&raquo;</a></li>
				</ul>
			</div>
		</div>
	</div>
	<script src="js/jquery-2.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.fancybox.pack.js"></script>
	<script src="js/checkbox.js"></script>
	<script language="javascript" type="text/javascript">
		$(document).ready(function() {
			$(".fancybox").fancybox();
		});
	</script>
</body>
</html>