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
					
					<form action="xiangmu/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="XIANGMU_ID" id="XIANGMU_ID" value="${pd.XIANGMU_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">项目名称:</td>
								<td><input type="text" name="XMNAME" id="XMNAME" value="${pd.XMNAME}" maxlength="50" placeholder="这里输入项目名称" title="项目名称" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">主要负责人:</td>
								<td style="vertical-align:top;padding-left:2px;">								
								 	<select class="chosen-select form-control" name="FUZEREN" id="FUZEREN"  style="vertical-align:middle;width: 120px;">
									<option></option>
									<c:forEach items="${userList}" var="user">							
										<option value="${user.NUMBER}">  ${user.NAME}</option>
									</c:forEach>
								  	</select>
								</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">主要承担方:</td>
								<td><input type="text" name="CHENGDAN" id="CHENGDAN" value="${pd.CHENGDAN}" maxlength="50" placeholder="这里输入主要承担人" title="主要承担人" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">项目来源:</td>
								<td><input type="text" name="LAIYUAN" id="LAIYUAN" value="${pd.LAIYUAN}" maxlength="50" placeholder="这里输入项目来源" title="项目来源" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">项目性质:</td>
								<td><input type="text" name="XINGZHI" id="XINGZHI" value="${pd.XINGZHI}" maxlength="50" placeholder="这里输入项目性质" title="项目性质" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">开始时间:</td>
								<td><input class="span10 date-picker" name="STARTDATE" id="STARTDATE" value="${pd.STARTDATE}" type="text" data-date-format="yyyy-MM-dd" readonly="readonly" placeholder="开始时间" title="开始时间" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">结束时间:</td>
								<td><input class="span10 date-picker" name="JIESHURIQI" id="JIESHURIQI" value="${pd.JIESHURIQI}" type="text" data-date-format="yyyy-MM-dd" readonly="readonly" placeholder="结束时间" title="结束时间" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">申请状态:</td>
								
								<td>	<select name="SHENQINGZT" title="审核状态">
										<option value="审核中" <c:if test="${pd.SHENQINGZT == '审核中' }">selected</c:if> >审核中</option>
										<option value="在研" <c:if test="${pd.SHENQINGZT == '在研' }">selected</c:if> >在研</option>
										<option value="已结题" <c:if test="${pd.SHENQINGZT == '已结题' }">selected</c:if> >已结题</option>
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
			if($("#XMNAME").val()==""){
				$("#XMNAME").tips({
					side:3,
		            msg:'请输入项目名称',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#XMNAME").focus();
			return false;
			}
			if($("#FUZEREN").val()==""){
				$("#FUZEREN").tips({
					side:3,
		            msg:'请输入主要负责人',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#FUZEREN").focus();
			return false;
			}
			if($("#CHENGDAN").val()==""){
				$("#CHENGDAN").tips({
					side:3,
		            msg:'请输入主要承担人',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CHENGDAN").focus();
			return false;
			}
			if($("#LAIYUAN").val()==""){
				$("#LAIYUAN").tips({
					side:3,
		            msg:'请输入项目来源',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#LAIYUAN").focus();
			return false;
			}
			if($("#XINGZHI").val()==""){
				$("#XINGZHI").tips({
					side:3,
		            msg:'请输入项目性质',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#XINGZHI").focus();
			return false;
			}
			if($("#SHENQINGZT").val()==""){
				$("#SHENQINGZT").tips({
					side:3,
		            msg:'请输入申请状态',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SHENQINGZT").focus();
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