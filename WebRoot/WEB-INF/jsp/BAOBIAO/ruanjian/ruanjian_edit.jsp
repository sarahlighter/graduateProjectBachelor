<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
	<base href="<%=basePath%>">
	<!-- 下拉框 -->
	<link rel="stylesheet" href="static/ace/css/chosen.css" />
	<!-- jsp文件头和头部 -->
	<%@ include file="../../system/index/top.jsp"%>
	<!-- 日期框 -->
	<link rel="stylesheet" href="static/ace/css/datepicker.css" />
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
					
					<form action="ruanjian/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="RUANJIAN_ID" id="RUANJIAN_ID" value="${pd.RUANJIAN_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">办理日:</td>
								<td><input class="span10 date-picker" name="BANLIRI" id="BANLIRI" value="${pd.BANLIRI}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="办理日" title="办理日" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">登记号:</td>
								<td><input type="text" name="DENGJIHAO" id="DENGJIHAO" value="${pd.DENGJIHAO}" maxlength="255" placeholder="这里输入登记号" title="登记号" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">发证日:</td>
								<td><input class="span10 date-picker" name="FAZHENGRI" id="FAZHENGRI" value="${pd.FAZHENGRI}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="发证日" title="发证日" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">首次发表日:</td>
								<td><input type="text" name="SHOUCIFABIAO" id="SHOUCIFABIAO" value="${pd.SHOUCIFABIAO}" maxlength="255" placeholder="这里输入首次发表日" title="首次发表日" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">软件名称:</td>
								<td><input type="text" name="RUANJIANMINGCHENG" id="RUANJIANMINGCHENG" value="${pd.RUANJIANMINGCHENG}" maxlength="255" placeholder="这里输入软件名称" title="软件名称" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">作者:</td>
								<td><input type="text" name="ZUOZHE" id="ZUOZHE" value="${pd.ZUOZHE}" maxlength="255" placeholder="这里输入作者" title="作者" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">所在学院:</td>
								<td><input type="text" name="XUEYUAN" id="XUEYUAN" value="${pd.XUEYUAN}" maxlength="255" placeholder="这里输入所在学院" title="所在学院" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">著作权人1:</td>
								<td><input type="text" name="ZHUZUOQUANREN" id="ZHUZUOQUANREN" value="${pd.ZHUZUOQUANREN}" maxlength="255" placeholder="这里输入著作权人1" title="著作权人1" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="text-align: center;" colspan="10">
									<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
									<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
								</td>
							</tr>
						</table>
						</div>
						<div id="zhongxin2" class="center" style="display:none"><br/><br/><br/><br/><br/><img src="static/images/jiazai.gif" /><br/><h4 class="lighter block green">提交中...</h4></div>
					</form>
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.page-content -->
		</div>
	</div>
	<!-- /.main-content -->
</div>
<!-- /.main-container -->


	<!-- 页面底部js¨ -->
	<%@ include file="../../system/index/foot.jsp"%>
	<!-- 下拉框 -->
	<script src="static/ace/js/chosen.jquery.js"></script>
	<!-- 日期框 -->
	<script src="static/ace/js/date-time/bootstrap-datepicker.js"></script>
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
		<script type="text/javascript">
		$(top.hangge());
		//保存
		function save(){
			
			
			$("#Form").submit();
			$("#zhongxin").hide();
			$("#zhongxin2").show();
		}
		
		$(function() {
			//日期框
			$('.date-picker').datepicker({autoclose: true,todayHighlight: true});
		});
		</script>
</body>
</html>