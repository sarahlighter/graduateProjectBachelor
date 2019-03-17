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
					
					<form action="huiyilunwen/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="HUIYILUNWEN_ID" id="HUIYILUNWEN_ID" value="${pd.HUIYILUNWEN_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">题名:</td>
								<td><input type="text" name="TIMING" id="TIMING" value="${pd.TIMING}" maxlength="255" placeholder="这里输入题名" title="题名" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">作者:</td>
								<td><input type="text" name="ZUOZHE" id="ZUOZHE" value="${pd.ZUOZHE}" maxlength="255" placeholder="这里输入作者" title="作者" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">会议论文集名称:</td>
								<td><input type="text" name="LUNWENJI" id="LUNWENJI" value="${pd.LUNWENJI}" maxlength="255" placeholder="这里输入会议论文集名称" title="会议论文集名称" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">会议时间:</td>
								<td><input class="span10 date-picker" name="HUIYISHIJIAN" id="HUIYISHIJIAN" value="${pd.HUIYISHIJIAN}" type="text" data-date-format="yyyy-MM-dd HH:mm:ss" readonly="readonly" placeholder="会议时间" title="会议时间" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">会议地点:</td>
								<td><input type="text" name="HUIYIDIDIAN" id="HUIYIDIDIAN" value="${pd.HUIYIDIDIAN}" maxlength="255" placeholder="这里输入会议地点" title="会议地点" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">会议名称:</td>
								<td><input type="text" name="HUIYIMINGCHENG" id="HUIYIMINGCHENG" value="${pd.HUIYIMINGCHENG}" maxlength="255" placeholder="这里输入会议名称" title="会议名称" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">举办单位:</td>
								<td><input type="text" name="JUBANDANWEI" id="JUBANDANWEI" value="${pd.JUBANDANWEI}" maxlength="255" placeholder="这里输入举办单位" title="举办单位" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">起止页码:</td>
								<td><input type="text" name="QIZHIYEMA" id="QIZHIYEMA" value="${pd.QIZHIYEMA}" maxlength="255" placeholder="这里输入起止页码" title="起止页码" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">第一作者（中文名）:</td>
								<td><input type="text" name="DIYIZUOZHE" id="DIYIZUOZHE" value="${pd.DIYIZUOZHE}" maxlength="255" placeholder="这里输入第一作者（中文名）" title="第一作者（中文名）" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">共同第一作者（中文名）:</td>
								<td><input type="text" name="GONGTONGDIYI" id="GONGTONGDIYI" value="${pd.GONGTONGDIYI}" maxlength="255" placeholder="这里输入共同第一作者（中文名）" title="共同第一作者（中文名）" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">第一 通讯联系人（中文名）:</td>
								<td><input type="text" name="DIYITONGXUNLIANXI" id="DIYITONGXUNLIANXI" value="${pd.DIYITONGXUNLIANXI}" maxlength="255" placeholder="这里输入第一 通讯联系人（中文名）" title="第一 通讯联系人（中文名）" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">第二 通讯联系人（中文名）:</td>
								<td><input type="text" name="DIERTONGXUN" id="DIERTONGXUN" value="${pd.DIERTONGXUN}" maxlength="255" placeholder="这里输入第二 通讯联系人（中文名）" title="第二 通讯联系人（中文名）" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">是否双通或多通:</td>
								<td><select name="SHUANTTOGNDUOTONG" title="是否双通或多通">
										<option value="是" <c:if test="${pd.SHUANTTOGNDUOTONG == '是' }">selected</c:if> >是</option>
										<option value="否" <c:if test="${pd.SHUANTTOGNDUOTONG == '否' }">selected</c:if> >否</option>
								</select>
								</td>	
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">数据库收录情况:</td>
								<td><input type="text" name="SHUJUKUSHOULU1" id="SHUJUKUSHOULU1" value="${pd.SHUJUKUSHOULU1}" maxlength="255" placeholder="这里输入数据库收录情况" title="数据库收录情况" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">是否注册:</td>
								<td><select name="SHFOUZHUCE" title="是否注册">
										<option value="是" <c:if test="${pd.SHFOUZHUCE == '是' }">selected</c:if> >是</option>
										<option value="否" <c:if test="${pd.SHFOUZHUCE == '否' }">selected</c:if> >否</option>
								</select>
								</td>	
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">财务经费卡号:</td>
								<td><input type="text" name="CEIWUJINGFEIKAHAO" id="CEIWUJINGFEIKAHAO" value="${pd.CEIWUJINGFEIKAHAO}" maxlength="255" placeholder="这里输入财务经费卡号" title="财务经费卡号" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">经费卡负责人:</td>
								<td><input type="text" name="JINGFEIKAFUZREN" id="JINGFEIKAFUZREN" value="${pd.JINGFEIKAFUZREN}" maxlength="255" placeholder="这里输入经费卡负责人" title="经费卡负责人" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">经费状态:</td>
								<td><input type="text" name="JIGNFEIZHUANGTAI" id="JIGNFEIZHUANGTAI" value="${pd.JIGNFEIZHUANGTAI}" maxlength="255" placeholder="这里输入经费状态" title="经费状态" style="width:98%;"/></td>
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