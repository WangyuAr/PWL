<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String type=(String)request.getAttribute("type");
//if(type==null){
	//type="0";
//}
String type1=(String)request.getAttribute("type1");
//if(type1==null){
	//type1="0";	
//}
//System.out.println(type);
System.out.println(type1);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'kinds.jsp' starting page</title>
    
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
	<jsp:include page="top.jsp"></jsp:include>
   	</div>
   	<%
   		if(type1!=null){
   	%>
		<div class="row subject-img">
			<div class="sub1-img">
				<img src="images/subject/subject<%=type1 %>-big.png" alt="subject">
			</div>
		</div>
	<%
	} 
	%>
	<div class="container subject-goods">
	<jsp:include page="tail.jsp"></jsp:include>
	
  </body>
</html>