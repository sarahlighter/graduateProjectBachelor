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
					
					<form action="zhuanzhu/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="ZHUANZHU_ID" id="ZHUANZHU_ID" value="${pd.ZHUANZHU_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">著作名称:</td>
								<td><input type="text" name="ZHUZUONAME" id="ZHUZUONAME" value="${pd.ZHUZUONAME}" maxlength="255" placeholder="这里输入著作名称" title="著作名称" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">作者:</td>
								<td><input type="text" name="AUTHOR" id="AUTHOR" value="${pd.AUTHOR}" maxlength="255" placeholder="这里输入作者" title="作者" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">著作中我校第一作者在所有作者中的排序:</td>
								<td><input type="text" name="WOXIAOPAIWEI" id="WOXIAOPAIWEI" value="${pd.WOXIAOPAIWEI}" maxlength="255" placeholder="这里输入著作中我校第一作者在所有作者中的排序" title="著作中我校第一作者在所有作者中的排序" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">著作总字数（千字）:</td>
								<td><input type="text" name="ZONGZISHU" id="ZONGZISHU" value="${pd.ZONGZISHU}" maxlength="255" placeholder="这里输入著作总字数（千字）" title="著作总字数（千字）" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">我校在著作中的所有作者撰写总字数（千字）:</td>
								<td><input type="text" name="WOXIAOZISHU" id="WOXIAOZISHU" value="${pd.WOXIAOZISHU}" maxlength="255" placeholder="这里输入我校在著作中的所有作者撰写总字数（千字）" title="我校在著作中的所有作者撰写总字数（千字）" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">著作类别:</td>
								<td><input type="text" name="ZHUZUOLEIBIE" id="ZHUZUOLEIBIE" value="${pd.ZHUZUOLEIBIE}" maxlength="255" placeholder="这里输入著作类别" title="著作类别" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">出版单位:</td>
								<td><input type="text" name="CHUBANDANWEI" id="CHUBANDANWEI" value="${pd.CHUBANDANWEI}" maxlength="255" placeholder="这里输入出版单位" title="出版单位" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">出版地:</td>
								<td><input type="text" name="CHUBANDI" id="CHUBANDI" value="${pd.CHUBANDI}" maxlength="255" placeholder="这里输入出版地" title="出版地" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">出版年月:</td>
								<td><input type="text" name="CHUBANNIANYUE" id="CHUBANNIANYUE" value="${pd.CHUBANNIANYUE}" maxlength="255" placeholder="这里输入出版年月" title="出版年月" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">ISBN:</td>
								<td><input type="text" name="ISBN" id="ISBN" value="${pd.ISBN}" maxlength="255" placeholder="这里输入ISBN" title="ISBN" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">是否与外单位合作:</td>
								<td><select name="HEZUOORNOT" title="是否与外单位合作">
										<option value="是" <c:if test="${pd.HEZUOORNOT == '是' }">selected</c:if> >是</option>
										<option value="否" <c:if test="${pd.HEZUOORNOT == '否' }">selected</c:if> >否</option>
								</select>
								</td>		

							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">著作中我校第一作者所属学院:</td>
								<td><input type="text" name="DIYIXUEYUAN" id="DIYIXUEYUAN" value="${pd.DIYIXUEYUAN}" maxlength="255" placeholder="这里输入著作中我校第一作者所属学院" title="著作中我校第一作者所属学院" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">著作类型:</td>
								<td><input type="text" name="ZHUZUOLEIXING" id="ZHUZUOLEIXING" value="${pd.ZHUZUOLEIXING}" maxlength="255" placeholder="这里输入著作类型" title="著作类型" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">学科门类:</td>
								<td><input type="text" name="XUEKEMENLEI" id="XUEKEMENLEI" value="${pd.XUEKEMENLEI}" maxlength="255" placeholder="这里输入学科门类" title="学科门类" style="width:98%;"/></td>
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