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
		<div class="row">
			<form class="form-horizontal publish-form" role="form" name="form" action="/servlet/Publish" method="post" enctype="multipart/form-data">
			  <div class="form-group">
			    <label class="col-sm-2 control-label">标题</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" name="title" />
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label">商品分类</label>
			    <div class="col-sm-3">
			      <select class="form-control" name="from1" onChange="getfrom2()">
					  <option value="">请选择</option>
					  <option value="1">旧书</option>
					  <option value="2">代步</option>
					  <option value="3">电脑</option>
					  <option value="4">数码</option>
					  <option value="5">电器</option>
					  <option value="6">运动</option>
					  <option value="7">日用</option>
					  <option value="8">乐器</option>
					  <option value="9">其他</option>
					</select>
			    </div>
			    <div class="col-sm-3">
			      <select class="form-control" name="from2">
				  	  <option value="">请选择</option>
				  </select>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label">新旧</label>
			    <div class="col-sm-10">
					<label class="checkbox-inline">
					  <input type="radio" value="7" name="New"> 七成新一下
					</label>
					<label class="checkbox-inline">
					  <input type="radio" value="8" name="New"> 八九成新
					</label>
					<label class="checkbox-inline">
					  <input type="radio" value="10" name="New"> 全新
					</label>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label">价格</label>
			    <div class="col-sm-3">
			      <input type="text" class="form-control" placeholder="售价" name="cost">
			    </div>
			    <div class="col-sm-3">
			      <input type="text" class="form-control" placeholder="原价" name="ocost">
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label">讲价</label>
			    <div class="col-sm-10">
					<label class="checkbox-inline">
					  <input type="radio" value="1" name="recost"> 接受
					</label>
					<label class="checkbox-inline">
					  <input type="radio" value="0" name="recost"> 不接受
					</label>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label">联系方式</label>
			    <div class="col-sm-3">
			      <input type="text" class="form-control" placeholder="手机号码" name="phone">
			    </div>
			    <div class="col-sm-3">
			      <input type="text" class="form-control" placeholder="QQ" name="qq">
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label">宝贝图片</label>
			    <div class="col-sm-6">
			    	<input type="file"name="head"/>
			    </div>
			  </div>
			  <div class="form-group">
			    <label class="col-sm-2 control-label">宝贝描述</label>
			    <div class="col-sm-6">
					<textarea id="text1" cols="96" rows="15" placeholder=" " name="info"></textarea>
			    </div>
			  </div>
			  <div class="form-group">
			  	<div class="col-sm-6 col-sm-offset-2">
					<button type="subbmit" onclick="return check();"></button>
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
