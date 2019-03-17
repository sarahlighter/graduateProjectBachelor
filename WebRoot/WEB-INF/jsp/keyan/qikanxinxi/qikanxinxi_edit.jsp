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
					
					<form action="qikanxinxi/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="QIKANXINXI_ID" id="QIKANXINXI_ID" value="${pd.QIKANXINXI_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">期刊名:</td>
								<td><input type="text" name="QIKANNAME" id="QIKANNAME" value="${pd.QIKANNAME}" maxlength="50" placeholder="这里输入期刊名" title="期刊名" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">期刊号:</td>
								<td><input type="text" name="ISSUENUM" id="ISSUENUM" value="${pd.ISSUENUM}" maxlength="255" placeholder="这里输入期刊号" title="期刊号" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">一级学科:</td>
								<td><input type="text" name="YIJIXUEKE" id="YIJIXUEKE" value="${pd.YIJIXUEKE}" maxlength="50" placeholder="这里输入一级学科" title="一级学科" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">二级学科:</td>
								<td><input type="text" name="ERJIXUEKE" id="ERJIXUEKE" value="${pd.ERJIXUEKE}" maxlength="50" placeholder="这里输入二级学科" title="二级学科" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">三级学科:</td>
								<td><input type="text" name="SANJIXUEKE" id="SANJIXUEKE" value="${pd.SANJIXUEKE}" maxlength="50" placeholder="这里输入三级学科" title="三级学科" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">级别:</td>
								<td><input type="text" name="JIBIE" id="JIBIE" value="${pd.JIBIE}" maxlength="255" placeholder="这里输入级别" title="级别" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">影响因子:</td>
								<td><input type="number" name="YINGXIANGYINZI" id="YINGXIANGYINZI" value="${pd.YINGXIANGYINZI}" maxlength="32" placeholder="这里输入影响因子" title="影响因子" style="width:98%;"/></td>
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
			if($("#QIKANNAME").val()==""){
				$("#QIKANNAME").tips({
					side:3,
		            msg:'请输入期刊名',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#QIKANNAME").focus();
			return false;
			}
			if($("#ISSUENUM").val()==""){
				$("#ISSUENUM").tips({
					side:3,
		            msg:'请输入期刊号',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ISSUENUM").focus();
			return false;
			}
			if($("#YIJIXUEKE").val()==""){
				$("#YIJIXUEKE").tips({
					side:3,
		            msg:'请输入一级学科',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#YIJIXUEKE").focus();
			return false;
			}
			if($("#ERJIXUEKE").val()==""){
				$("#ERJIXUEKE").tips({
					side:3,
		            msg:'请输入二级学科',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ERJIXUEKE").focus();
			return false;
			}
			if($("#SANJIXUEKE").val()==""){
				$("#SANJIXUEKE").tips({
					side:3,
		            msg:'请输入三级学科',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SANJIXUEKE").focus();
			return false;
			}
			if($("#JIBIE").val()==""){
				$("#JIBIE").tips({
					side:3,
		            msg:'请输入级别',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JIBIE").focus();
			return false;
			}
			if($("#YINGXIANGYINZI").val()==""){
				$("#YINGXIANGYINZI").tips({
					side:3,
		            msg:'请输入影响因子',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#YINGXIANGYINZI").focus();
			return false;
			}
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