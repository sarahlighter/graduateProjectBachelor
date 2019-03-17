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
					
					<form action="zhuanli/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="ZHUANLI_ID" id="ZHUANLI_ID" value="${pd.ZHUANLI_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">申请号:</td>
								<td><input type="text" name="SHENQINGHAO" id="SHENQINGHAO" value="${pd.SHENQINGHAO}" maxlength="255" placeholder="这里输入申请号" title="申请号" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">申请日:</td>
								<td><input type="text" name="SHENQINGRI" id="SHENQINGRI" value="${pd.SHENQINGRI}" maxlength="255" placeholder="这里输入申请日" title="申请日" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">专利类型:</td>
								<td><input type="text" name="ZHUANLILEIXIN" id="ZHUANLILEIXIN" value="${pd.ZHUANLILEIXIN}" maxlength="255" placeholder="这里输入专利类型" title="专利类型" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">发明名称:</td>
								<td><input type="text" name="FAMINGMIGNCHENG" id="FAMINGMIGNCHENG" value="${pd.FAMINGMIGNCHENG}" maxlength="255" placeholder="这里输入发明名称" title="发明名称" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">第一发明人:</td>
								<td><input type="text" name="DIYIFAMING" id="DIYIFAMING" value="${pd.DIYIFAMING}" maxlength="255" placeholder="这里输入第一发明人" title="第一发明人" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">其他发明人:</td>
								<td><input type="text" name="QITAFAMING" id="QITAFAMING" value="${pd.QITAFAMING}" maxlength="255" placeholder="这里输入其他发明人" title="其他发明人" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">申请人:</td>
								<td><input type="text" name="SHENQING" id="SHENQING" value="${pd.SHENQING}" maxlength="255" placeholder="这里输入申请人" title="申请人" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">授权日:</td>
								<td><input class="span10 date-picker" name="SHOUQUANRI" id="SHOUQUANRI" value="${pd.SHOUQUANRI}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="授权日" title="授权日" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">终止日:</td>
								<td><input type="text" name="ZHOGNZHIRI" id="ZHOGNZHIRI" value="${pd.ZHOGNZHIRI}" maxlength="255" placeholder="这里输入终止日" title="终止日" style="width:98%;"/></td>
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