<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

//得到用户名
String username=(String)session.getAttribute("username");
String error=(String)request.getAttribute("error");

String search=(String)request.getAttribute("search");
%>

<!-- js判断代码 -->
<script language="javascript" > 
        function check3()
		{ 
			if(form3.search.value=="")
			{ 
		 		window.alert("搜索内容为空，请重新输入！"); 
			 	return false; 
		 	} 
		} 
		function check1()
		{ 
			if(form1.username.value==""||form1.password.value=="")
			{ 
		 		window.alert("信息不完整，请重新输入!"); 
			 	return false; 
		 	} 
		} 
		function check2()
		{ 
			if(form2.email.value==""||form2.password.value==""||form2.repassword.value=="")
			{ 
		 		window.alert("信息不完整，请重新输入!"); 
			 	return false; 
		 	} 
		}
</script>

<div class="header">

			<div class="container">
				<a href="index.jsp">
				<div class="logo" ></div>
				</a>
				<div class="row">
					<div class="search">
					<form action="/PWL/servlet/Search" name="form1" method="post">
						<input class="search-input" type="text" name="search" value="<%=search %>"></input>
						<input class="search-button" type="submit" value="" onclick="return check3();" />
					</form>
					</div>
					<div class="publish">
						<a href="Publish.jsp"><button type="button" class="publish-button"></button></a>
					</div>
				</div>
			</div>
			<nav class="navbar" role="navigation">
				<div class="container">
					<ul class="nav navbar-nav">
						<li class="dropdown">	
		        			<a href="#" class="dropdown-toggle" data-toggle="dropdown">商品分类 </a>
						</li>
						<li class="index"><a href="index.jsp">首页</a></li>
						<li class="my-info"><a href="myinfo.jsp">我的二手</a></li>
					</ul>	
				    <ul class="nav navbar-nav navbar-right">
				    	<%
				    		if(username==null){
				    	%>
				    	<li><a class="fancybox" href="#login">登陆</a></li>
				    	<li><a class="fancybox" href="#register">注册</a></li>
						<%
							} 
						%>
				    <div id="login">
				    		<div class="login-bg">
					    		<div class="log-head">
					    		</div>
					    		<form action="/PWL/servlet/Login" method="post" name="form2">
									<div class="input-group">
									  <input type="text" name="username" class="form-control" placeholder="用户名/邮箱">
									</div>
									<div class="input-group">
									  <input type="password" name="password" class="form-control" placeholder="密码">
									</div>
									<div class="input-group" id="password-action">
									  <a name="checkWeek" class="divCheckBoxNoSel"></a>
									  <a id="remember-password">记住密码</a>
									  <a href="#" id="forget-password">忘记密码？</a>
									</div>
									<div class="input-group">
										<button type="submit" class="log-button" onclick="return check1();"></button>
									</div>
					    		</form>
				    		</div>
				    	</div>
				    	<div id="register">
				    		<div class="reg-bg">
					    		<div class="reg-head">
					    			<img src="images/reg-head.png" alt="注册头像">
					    		</div>
					    		<form action="/PWL/servlet/Register" method="post" name="form3">
									<div class="input-group">
									  <input type="text" name="email" class="form-control" placeholder="邮箱注册">
									</div>
									<div class="input-group">
									  <input type="password" name="password" class="form-control" placeholder="请输入密码">
									</div>
									<div class="input-group">
									  <input type="password" name="repassword" class="form-control" placeholder="重复密码" id="repeat-password">
									</div>
									<div class="input-group" id="protocol">
										<a name="RcheckWeek"  class="RdivCheckBoxNoSel"></a>
									    <a class="read">我已经认真阅读</a>
									    <a  id="xieyi"   href="#">《二手市场协议》</a>
									</div>
									<div class="input-group">
										<button type="submit" class="register-button" onclick="return check2();"></button>
									</div>
					    		</form>
				    		</div>
				    	</div>
				     	 <li class="dropdown">
				     	 <%
				     	 	if(username!=null){ 
				     	 %>
				        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><%=username %> <b class="caret"></b></a>
				         <%
				         	} 
				         %>
				        <ul class="dropdown-menu">
				          <li><a href="myinfo.jsp">我的二手</a></li>
				          <li><a href="<%=basePath %>/servlet/Login?quit=true">退出</a></li>
				        </ul>
				      </li>
				    </ul>
			    </div>
			</nav>
	</div>