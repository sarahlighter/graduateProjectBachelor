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
					
					<form action="chengguo/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="CHENGGUO_ID" id="CHENGGUO_ID" value="${pd.CHENGGUO_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">成果名:</td>
								<td><input type="text" name="CGNAME" id="CGNAME" value="${pd.CGNAME}" maxlength="50" placeholder="这里输入成果名" title="成果名" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">项目负责人:</td>
								<td style="vertical-align:top;padding-left:2px;">								
								 	<select class="chosen-select form-control" name="FZNAME" id="FZNAME"  style="vertical-align:middle;width: 120px;">
									<option></option>
									<c:forEach items="${userList}" var="user">							
										<option value="${user.NUMBER}">  ${user.NAME}</option>
									</c:forEach>
								  	</select>
								</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">科研项目:</td>
									<td style="vertical-align:top;padding-left:2px;">
									<select class="chosen-select form-control" name="FZID" id="FZID"  style="vertical-align:middle;width: 120px;">
									<option></option>
									<c:forEach items="${xiangmuList}" var="xiangmu">									
										<option value="${xiangmu.XIANGMU_ID}">  ${xiangmu.XMNAME}</option>
									</c:forEach>
								  	</select>
								  </td>
						</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">鉴定时间:</td>
								<td><input class="span10 date-picker" name="JDTIME" id="JDTIME" value="${pd.JDTIME}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="鉴定时间" title="鉴定时间" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">鉴定单位:</td>
								<td><input type="text" name="JDDW" id="JDDW" value="${pd.JDDW}" maxlength="50" placeholder="这里输入鉴定单位" title="鉴定单位" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">鉴定编号:</td>
								<td><input type="text" name="JDNUM" id="JDNUM" value="${pd.JDNUM}" maxlength="255" placeholder="这里输入鉴定编号" title="鉴定编号" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">其他参与人员:</td>
								<td><input type="text" name="OTHERS" id="OTHERS" value="${pd.OTHERS}" maxlength="255" placeholder="这里输入其他参与人员" title="其他参与人员" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">审核状态:</td>
								<td>	<select name="SHZT" title="审核状态">
										<option value="审核中" <c:if test="${pd.SHZT == '审核中' }">selected</c:if> >审核中</option>
										<option value="在研" <c:if test="${pd.SHZT == '在研' }">selected</c:if> >在研</option>
										<option value="已结题" <c:if test="${pd.SHZT == '已结题' }">selected</c:if> >已结题</option>
								</select>
							</td>
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
			if($("#CGNAME").val()==""){
				$("#CGNAME").tips({
					side:3,
		            msg:'请输入成果名',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CGNAME").focus();
			return false;
			}
			if($("#FZNAME").val()==""){
				$("#FZNAME").tips({
					side:3,
		            msg:'请输入项目负责人',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#FZNAME").focus();
			return false;
			}
			if($("#FZID").val()==""){
				$("#FZID").tips({
					side:3,
		            msg:'请输入项目负责人id',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#FZID").focus();
			return false;
			}
			if($("#JDTIME").val()==""){
				$("#JDTIME").tips({
					side:3,
		            msg:'请输入鉴定时间',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JDTIME").focus();
			return false;
			}
			if($("#JDDW").val()==""){
				$("#JDDW").tips({
					side:3,
		            msg:'请输入鉴定单位',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JDDW").focus();
			return false;
			}
			if($("#JDNUM").val()==""){
				$("#JDNUM").tips({
					side:3,
		            msg:'请输入鉴定编号',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JDNUM").focus();
			return false;
			}
			if($("#OTHERS").val()==""){
				$("#OTHERS").tips({
					side:3,
		            msg:'请输入其他参与人员',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#OTHERS").focus();
			return false;
			}
			if($("#SHZT").val()==""){
				$("#SHZT").tips({
					side:3,
		            msg:'请输入审核状态',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SHZT").focus();
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