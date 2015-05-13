<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";



%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>飘物流</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/jquery.fancybox.css">

  </head>
  
  <body>
  
  	<!-- 网站头部 -->
	<jsp:include page="top.jsp"></jsp:include>
  
    <div class="container">
		<div class="row editinfo">
			<form class="form-horizontal publish-form" role="form" action="/servlet/Reviseuser" method="post" name="form" enctype="multipart/form-data">
			  <div class="form-group">
			    <label class="col-sm-2 col-sm-offset-2 control-label">用户名</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" placeholder="<% %>" name="name">
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-2 col-sm-offset-2 control-label">上传头像</label>
			    <div class="col-sm-6">
			    <input type="file"name="head"/>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-2 col-sm-offset-2 control-label">手机号码</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" placeholder="<% %>" name="phone">
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-2 col-sm-offset-2 control-label">QQ</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" placeholder="<% %>" name="qq">
			    </div>
			  </div>
			  <div class="form-group">
			  	<div class="col-sm-6 col-sm-offset-4">
			  		<div class="center" style="width: 188px;margin:0 auto;">
						<button type="submit"></button>
					</div>
				</div>
			  </div>
			</form>
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