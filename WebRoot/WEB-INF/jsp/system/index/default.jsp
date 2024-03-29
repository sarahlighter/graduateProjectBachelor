﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
<!-- jsp文件头和头部 -->
<%@ include file="../index/top.jsp"%>
<script type="text/javascript">
setTimeout("top.hangge()",500);
</script>
</head>
<body class="no-skin">

	<!-- /section:basics/navbar.layout -->
	<div class="main-container" id="main-container">
		<!-- /section:basics/sidebar -->
		<div class="main-content">
			<div class="main-content-inner">
				<div class="page-content">
					<div class="row">
						<div class="col-xs-12">

							<h3 class="header smaller lighter green">更新网站前台页面</h3>
							<table id="simple-table" class="table table-striped table-bordered table-hover"  style="margin-top:5px;">
								<tr>
									<td style="width:150px;" class="center">
									<button class="btn btn-app btn-primary btn-xs" onclick="proHome();" id="proHome">
												<i class="ace-icon fa fa-print bigger-160"></i>
												生成
									</button>
									</td>
									<td style="padding-top: 19px;">
										<h4 class="green smaller lighter">生成网站首页</h4>
									</td>
								</tr>
								<tr>
									<td style="width:150px;" class="center">
									<button class="btn btn-app btn-primary btn-xs" onclick="proAboutus();" id="proAboutus">
												<i class="ace-icon fa fa-print bigger-160"></i>
												生成
									</button>
									</td>
									<td style="padding-top: 19px;">
										<h4 class="green smaller lighter">生成关于我们页面</h4>
									</td>
								</tr>
								<tr>
									<td style="width:150px;" class="center">
									<button class="btn btn-app btn-primary btn-xs" onclick="proProduct();" id="proProduct">
												<i class="ace-icon fa fa-print bigger-160"></i>
												生成
									</button>
									</td>
									<td style="padding-top: 19px;">
										<h4 class="green smaller lighter">生成产品案例页面</h4>
									</td>
								</tr>
								</tr>
									<tr>
									<td style="width:150px;" class="center">
									<button class="btn btn-app btn-primary btn-xs" onclick="proKeyan();" id="proKeyan">
												<i class="ace-icon fa fa-print bigger-160"></i>
												生成
									</button>
									</td>
									<td style="padding-top: 19px;">
										<h4 class="green smaller lighter">生成科研展示页面</h4>
									</td>
								</tr>
								
								</tr>
									<tr>
									<td style="width:150px;" class="center">
									<button class="btn btn-app btn-primary btn-xs" onclick="proAllwork();" id="proAllwork">
												<i class="ace-icon fa fa-print bigger-160"></i>
												生成
									</button>
									</td>
									<td style="padding-top: 19px;">
										<h4 class="green smaller lighter">生成团队成果页面</h4>
									</td>
								</tr>
								<tr>
									<td style="width:150px;" class="center">
									<button class="btn btn-app btn-primary btn-xs" onclick="proCooperation();" id="proCooperation">
												<i class="ace-icon fa fa-print bigger-160"></i>
												生成
									</button>
									</td>
									<td style="padding-top: 19px;">
										<h4 class="green smaller lighter">生成合作共赢页面</h4>
									</td>
								</tr>
								<tr>
									<td style="width:150px;" class="center">
									<button class="btn btn-app btn-primary btn-xs" onclick="proNews();" id="proNews">
												<i class="ace-icon fa fa-print bigger-160"></i>
												生成
									</button>
									</td>
									<td style="padding-top: 19px;">
										<h4 class="green smaller lighter">生成新闻动态页面</h4>
									</td>
								</tr>
								<tr>
									<td style="width:150px;" class="center">
									<button class="btn btn-app btn-primary btn-xs" onclick="proContactus();" id="proContactus">
												<i class="ace-icon fa fa-print bigger-160"></i>
												生成
									</button>
									</td>
									<td style="padding-top: 19px;">
										<h4 class="green smaller lighter">生成联系我们页面</h4>
									</td>
								</tr>
								
							</table>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<!-- /.main-content -->


		<!-- 返回顶部 -->
		<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
			<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>

	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->
	<!-- 页面底部js¨ -->
	<%@ include file="../index/foot.jsp"%>
	<!-- ace scripts -->
	<script src="static/ace/js/ace/ace.js"></script>
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
	<script type="text/javascript">
		
		$(top.hangge());
	
		//生成首页
		function proHome(){
			top.jzts();
			$.ajax({
				type: "POST",
				url: '<%=basePath%>createHtml/proHome.do',
		    	data: {tm:new Date().getTime()},
				dataType:'json',
				cache: false,
				success: function(data){
					 if("success" == data.result){
						$("#proHome").tips({
							side:3,
				            msg:'生成完毕',
				            bg:'#AE81FF',
				            time:5
				        });
					 }
					top.hangge();
				}
			});
		}
		//生成科研展示案例页面
		function proKeyan(){
			top.jzts();
			$.ajax({
				type: "POST",
				url: '<%=basePath%>createHtml/proKeyan.do',
		    	data: {tm:new Date().getTime()},
				dataType:'json',
				cache: false,
				success: function(data){
					 if("success" == data.result){
						$("#proKeyan").tips({
							side:3,
				            msg:'生成完毕',
				            bg:'#AE81FF',
				            time:5
				        });
					 }
					top.hangge();
				}
			});
		}
	
		//生成团队成果页面
		function proAllwork(){
			top.jzts();
			$.ajax({
				type: "POST",
				url: '<%=basePath%>createHtml/proAllwork.do',
		    	data: {tm:new Date().getTime()},
				dataType:'json',
				cache: false,
				success: function(data){
					 if("success" == data.result){
						$("#proAllwork").tips({
							side:3,
				            msg:'生成完毕',
				            bg:'#AE81FF',
				            time:5
				        });
					 }
					top.hangge();
				}
			});
		}
		//生成合作共赢页面
		function proCooperation(){
			top.jzts();
			$.ajax({
				type: "POST",
				url: '<%=basePath%>createHtml/proCooperation.do',
		    	data: {tm:new Date().getTime()},
				dataType:'json',
				cache: false,
				success: function(data){
					 if("success" == data.result){
						$("#proCooperation").tips({
							side:3,
				            msg:'生成完毕',
				            bg:'#AE81FF',
				            time:5
				        });
					 }
					top.hangge();
				}
			});
		}
		
		//生成关于我们页面
		function proAboutus(){
			top.jzts();
			$.ajax({
				type: "POST",
				url: '<%=basePath%>createHtml/proAboutus.do',
		    	data: {tm:new Date().getTime()},
				dataType:'json',
				cache: false,
				success: function(data){
					 if("success" == data.result){
						$("#proAboutus").tips({
							side:3,
				            msg:'生成完毕',
				            bg:'#AE81FF',
				            time:5
				        });
					 }
					top.hangge();
				}
			});
		}
		
		//生成产品案例页面
		function proProduct(){
			top.jzts();
			$.ajax({
				type: "POST",
				url: '<%=basePath%>createHtml/proProduct.do',
		    	data: {tm:new Date().getTime()},
				dataType:'json',
				cache: false,
				success: function(data){
					 if("success" == data.result){
						$("#proProduct").tips({
							side:3,
				            msg:'生成完毕',
				            bg:'#AE81FF',
				            time:5
				        });
					 }
					top.hangge();
				}
			});
		}
		
		//生成新闻动态页面
		function proNews(){
			top.jzts();
			$.ajax({
				type: "POST",
				url: '<%=basePath%>createHtml/proNews.do',
		    	data: {tm:new Date().getTime()},
				dataType:'json',
				cache: false,
				success: function(data){
					 if("success" == data.result){
						$("#proNews").tips({
							side:3,
				            msg:'生成完毕',
				            bg:'#AE81FF',
				            time:5
				        });
					 }
					top.hangge();
				}
			});
		}
		
		//生成联系我们页面
		function proContactus(){
			top.jzts();
			$.ajax({
				type: "POST",
				url: '<%=basePath%>createHtml/proContactus.do',
		    	data: {tm:new Date().getTime()},
				dataType:'json',
				cache: false,
				success: function(data){
					 if("success" == data.result){
						$("#proContactus").tips({
							side:3,
				            msg:'生成完毕',
				            bg:'#AE81FF',
				            time:5
				        });
					 }
					top.hangge();
				}
			});
		}
	</script>
</body>
</html>