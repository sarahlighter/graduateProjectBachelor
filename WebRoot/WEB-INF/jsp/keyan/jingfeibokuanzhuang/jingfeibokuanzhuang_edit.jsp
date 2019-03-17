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
					
					<form action="jingfeibokuanzhuang/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="JINGFEIBOKUANZHUANG_ID" id="JINGFEIBOKUANZHUANG_ID" value="${pd.JINGFEIBOKUANZHUANG_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">科研项目id:</td>
								<td><input type="number" name="KEYANXIANGMUID" id="KEYANXIANGMUID" value="${pd.KEYANXIANGMUID}" maxlength="32" placeholder="这里输入科研项目id" title="科研项目id" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">拨款状况:</td>
								<td><input type="text" name="BOKUANZK" id="BOKUANZK" value="${pd.BOKUANZK}" maxlength="255" placeholder="这里输入拨款状况" title="拨款状况" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">拨款总金额:</td>
								<td><input type="number" name="BOKUANJINE" id="BOKUANJINE" value="${pd.BOKUANJINE}" maxlength="32" placeholder="这里输入拨款总金额" title="拨款总金额" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">已到金额:</td>
								<td><input type="number" name="YIDAOJINE" id="YIDAOJINE" value="${pd.YIDAOJINE}" maxlength="32" placeholder="这里输入已到金额" title="已到金额" style="width:98%;"/></td>
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
			if($("#KEYANXIANGMUID").val()==""){
				$("#KEYANXIANGMUID").tips({
					side:3,
		            msg:'请输入科研项目id',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#KEYANXIANGMUID").focus();
			return false;
			}
			if($("#BOKUANZK").val()==""){
				$("#BOKUANZK").tips({
					side:3,
		            msg:'请输入拨款状况',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#BOKUANZK").focus();
			return false;
			}
			if($("#BOKUANJINE").val()==""){
				$("#BOKUANJINE").tips({
					side:3,
		            msg:'请输入拨款总金额',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#BOKUANJINE").focus();
			return false;
			}
			if($("#YIDAOJINE").val()==""){
				$("#YIDAOJINE").tips({
					side:3,
		            msg:'请输入已到金额',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#YIDAOJINE").focus();
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