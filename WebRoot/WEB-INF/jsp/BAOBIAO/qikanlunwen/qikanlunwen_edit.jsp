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
					
					<form action="qikanlunwen/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="QIKANLUNWEN_ID" id="QIKANLUNWEN_ID" value="${pd.QIKANLUNWEN_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">题名:</td>
								<td><input type="text" name="TIMING" id="TIMING" value="${pd.TIMING}" maxlength="255" placeholder="这里输入题名" title="题名" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">作者:</td>
								<td><input type="text" name="AUTHOR" id="AUTHOR" value="${pd.AUTHOR}" maxlength="255" placeholder="这里输入作者" title="作者" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">刊名:</td>
								<td><input type="text" name="KANMING" id="KANMING" value="${pd.KANMING}" maxlength="255" placeholder="这里输入刊名" title="刊名" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">年:</td>
								<td><input type="text" name="YEAR" id="YEAR" value="${pd.YEAR}" maxlength="4" placeholder="这里输入年" title="年" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">卷:</td>
								<td><input type="text" name="JUAN" id="JUAN" value="${pd.JUAN}" maxlength="255" placeholder="这里输入卷" title="卷" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">期:</td>
								<td><input type="text" name="QI" id="QI" value="${pd.QI}" maxlength="255" placeholder="这里输入期" title="期" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">起止页码:</td>
								<td><input type="text" name="QIZHIYEMA" id="QIZHIYEMA" value="${pd.QIZHIYEMA}" maxlength="255" placeholder="这里输入起止页码" title="起止页码" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">第一作者:</td>
								<td><input type="text" name="DIYIZUOZHE" id="DIYIZUOZHE" value="${pd.DIYIZUOZHE}" maxlength="255" placeholder="这里输入第一作者" title="第一作者" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">共同第一作者（中文名）:</td>
								<td><input type="text" name="GONGTONGDIYI" id="GONGTONGDIYI" value="${pd.GONGTONGDIYI}" maxlength="255" placeholder="这里输入共同第一作者（中文名）" title="共同第一作者（中文名）" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">文章状态:</td>
								<td><input type="text" name="WENZHANGZT" id="WENZHANGZT" value="${pd.WENZHANGZT}" maxlength="255" placeholder="这里输入文章状态" title="文章状态" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">第一通讯联系人（中文名）:</td>
								<td><input type="text" name="DIYITONGXUN" id="DIYITONGXUN" value="${pd.DIYITONGXUN}" maxlength="255" placeholder="这里输入第一通讯联系人（中文名）" title="第一通讯联系人（中文名）" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">第二通讯联络人（中文名）:</td>
								<td><input type="text" name="DIERTONGXUN" id="DIERTONGXUN" value="${pd.DIERTONGXUN}" maxlength="255" placeholder="这里输入第二通讯联络人（中文名）" title="第二通讯联络人（中文名）" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">是否双通或多通:</td>
								<td><select name="SHUANGORDAN" title="是否双通或多通">
										<option value="是" <c:if test="${pd.SHUANGORDAN == '是' }">selected</c:if> >是</option>
										<option value="否" <c:if test="${pd.SHUANGORDAN == '否' }">selected</c:if> >否</option>
								</select>
								</td>								
						</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">数据库收录情况:</td>
								<td><input type="text" name="SHOULUZT" id="SHOULUZT" value="${pd.SHOULUZT}" maxlength="255" placeholder="这里输入数据库收录情况" title="数据库收录情况" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">期刊影响因子:</td>
								<td><input type="text" name="QIKANYXYZ" id="QIKANYXYZ" value="${pd.QIKANYXYZ}" maxlength="255" placeholder="这里输入期刊影响因子" title="期刊影响因子" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">文献类型:</td>
								<td><input type="text" name="WENXIANLEIXING" id="WENXIANLEIXING" value="${pd.WENXIANLEIXING}" maxlength="255" placeholder="这里输入文献类型" title="文献类型" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">财务经费卡号:</td>
								<td><input type="text" name="CAIWUJINGFEI" id="CAIWUJINGFEI" value="${pd.CAIWUJINGFEI}" maxlength="255" placeholder="这里输入财务经费卡号" title="财务经费卡号" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">经费卡负责人:</td>
								<td><input type="text" name="JINGFEIFZREN" id="JINGFEIFZREN" value="${pd.JINGFEIFZREN}" maxlength="255" placeholder="这里输入经费卡负责人" title="经费卡负责人" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">审稿费:</td>
								<td><input type="text" name="SHENGAOFEI" id="SHENGAOFEI" value="${pd.SHENGAOFEI}" maxlength="255" placeholder="这里输入审稿费" title="审稿费" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">经费状态:</td>
								<td><input type="text" name="JINGFEIZHUANGTAI" id="JINGFEIZHUANGTAI" value="${pd.JINGFEIZHUANGTAI}" maxlength="255" placeholder="这里输入经费状态" title="经费状态" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">基金号:</td>
								<td><input type="text" name="JIJINHAO" id="JIJINHAO" value="${pd.JIJINHAO}" maxlength="255" placeholder="这里输入基金号" title="基金号" style="width:98%;"/></td>
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