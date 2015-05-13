<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<div class="container">
		<div class="row">
				<div class="classify col-xs-3">
					<ul>
						<li>
							<img class="kind-icon" src="images/kind-icon/book.png" alt="旧书">
							<a class="broad-kind" href="<%=basePath %>/servlet/Middle?type=1">旧书</a>
							<div class="specific">
							
								<a class="specific-kind" href="<%=basePath %>/servlet/Middle?type2=<% %>"><%  %></a>
							</div>
						</li>
						<li>
							<img class="kind-icon" src="images/kind-icon/bike.png" alt="代步">
							<a class="broad-kind" href="<%=basePath %>/servlet/Middle?type=2">代步</a>
							<div class="specific">
							
								<a class="specific-kind" href="<%=basePath %>/servlet/Middle?type2=<% %>"><%  %></a>
							
							</div>
						</li>
						<li>
							<img class="kind-icon" src="images/kind-icon/pc.png" alt="电脑">
							<a class="broad-kind" href="<%=basePath %>/servlet/Middle?type=3">电脑</a>
							<div class="specific">
							
								<a class="specific-kind" href="<%=basePath %>/servlet/Middle?type2=<% %>"><%  %></a>
							
							</div>
						</li>
						<li>
							<img class="kind-icon" src="images/kind-icon/phone.png" alt="数码">
							<a class="broad-kind" href="<%=basePath %>/servlet/Middle?type=4">数码</a>
							<div class="specific">
						
								<a class="specific-kind" href="<%=basePath %>/servlet/Middle?type2=<% %>"><%  %></a>
						
							</div>
						</li>
						<li>
							<img class="kind-icon" src="images/kind-icon/elec.png" alt="电器">
							<a class="broad-kind" href="<%=basePath %>/servlet/Middle?type=5">电器</a>
							<div class="specific">
							
								<a class="specific-kind" href="<%=basePath %>/servlet/Middle?type2=<% %>"><%  %></a>
							
							</div>
						</li>
						<li>
							<img class="kind-icon" src="images/kind-icon/sport.png" alt="运动">
							<a class="broad-kind" href="<%=basePath %>/servlet/Middle?type=6">运动</a>
							<div class="specific">
						
								<a class="specific-kind" href="<%=basePath %>/servlet/Middle?type2=<% %>"><%  %></a>
						
							</div>
						</li>
						<li>
							<img class="kind-icon" src="images/kind-icon/daily.png" alt="日用">
							<a class="broad-kind" href="<%=basePath %>/servlet/Middle?type=7">日用</a>
							<div class="specific">
							
								<a class="specific-kind" href="<%=basePath %>/servlet/Middle?type2=<% %>"><%  %></a>
						
							</div>
						</li>
						<li>
							<img class="kind-icon" src="images/kind-icon/music.png" alt="乐器">
							<a class="broad-kind" href="<%=basePath %>/servlet/Middle?type=8">乐器</a>
							<div class="specific">
						
								<a class="specific-kind" href="<%=basePath %>/servlet/Middle?type2=<% %>"><%  %></a>
						
							</div>
						</li>
						<li>
							<a class="broad-kind" href="<%=basePath %>/servlet/Middle?type=9">其他</a>
						</li>
					</ul>	
				</div>
				<div class="slider col-xs-9">
				    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
				      <!-- Wrapper for slides -->
				      <div class="carousel-inner" style="text-align:center">
				        <div class="item active">
				          <img alt="slide" src="images/banner/banner1.jpg" ></img>
				        </div>
				        <div class="item">
				          <img alt="slide" src="images/banner/banner2.jpg" ></img>
				        </div>
				        <div class="item">
				          <img alt="slide" src="images/banner/banner3.jpg" ></img>
				        </div>
				        
				      </div>
				      <!-- Controls --><!-- 
				      <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
				      </a>
				      <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
				      </a> -->
				    </div>
				    
				</div>
				<div class="subject col-xs-8">
					<a href="<%=basePath %>/servlet/Middle?type1=1"><img style="position:relative;top:1px;"src="images/subject/subject1.jpg" alt="考研资料"></a>
					<a href="<%=basePath %>/servlet/Middle?type1=2"><img src="images/subject/subject2.jpg" alt="学长卖车"></a>
					<a href="<%=basePath %>/servlet/Middle?type1=3"><img src="images/subject/subject3.jpg" alt="生活杂物"></a>
					<a href="<%=basePath %>/servlet/Middle?type1=4"><img src="images/subject/subject4.jpg" alt="数码专柜"></a>
				</div>
		</div>