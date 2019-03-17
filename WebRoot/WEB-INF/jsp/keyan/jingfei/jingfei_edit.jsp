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
					
					<form action="jingfei/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="JINGFEI_ID" id="JINGFEI_ID" value="${pd.JINGFEI_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">图书资料费:</td>
								<td><input type="number" name="TUSHU" id="TUSHU" value="${pd.TUSHU}" maxlength="32" placeholder="这里输入图书资料费" title="图书资料费" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">数据采集费:</td>
								<td><input type="number" name="SHUJU" id="SHUJU" value="${pd.SHUJU}" maxlength="32" placeholder="这里输入数据采集费" title="数据采集费" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">会议费:</td>
								<td><input type="number" name="HUIYI" id="HUIYI" value="${pd.HUIYI}" maxlength="32" placeholder="这里输入会议费" title="会议费" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">专家咨询与评审费:</td>
								<td><input type="number" name="ZHUANJIAZIXUN" id="ZHUANJIAZIXUN" value="${pd.ZHUANJIAZIXUN}" maxlength="32" placeholder="这里输入专家咨询与评审费" title="专家咨询与评审费" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">助研津贴和劳务费:</td>
								<td><input type="number" name="ZHUYANJINGTIE" id="ZHUYANJINGTIE" value="${pd.ZHUYANJINGTIE}" maxlength="32" placeholder="这里输入助研津贴和劳务费" title="助研津贴和劳务费" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">印刷和出版费:</td>
								<td><input type="number" name="YINSHUA" id="YINSHUA" value="${pd.YINSHUA}" maxlength="32" placeholder="这里输入印刷和出版费" title="印刷和出版费" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">调研差旅费:</td>
								<td><input type="number" name="CHAILU" id="CHAILU" value="${pd.CHAILU}" maxlength="32" placeholder="这里输入调研差旅费" title="调研差旅费" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">国际合作交流费:</td>
								<td><input type="number" name="GUOJIJIAOLIUHEZUO" id="GUOJIJIAOLIUHEZUO" value="${pd.GUOJIJIAOLIUHEZUO}" maxlength="32" placeholder="这里输入国际合作交流费" title="国际合作交流费" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">设备购置和使用费:</td>
								<td><input type="number" name="SHEBEI" id="SHEBEI" value="${pd.SHEBEI}" maxlength="32" placeholder="这里输入设备购置和使用费" title="设备购置和使用费" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">间接费用:</td>
								<td><input type="number" name="JIANJIEFEIYONG" id="JIANJIEFEIYONG" value="${pd.JIANJIEFEIYONG}" maxlength="32" placeholder="这里输入间接费用" title="间接费用" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">间接费用备注:</td>
								<td><input type="text" name="JIANJIEZBZ" id="JIANJIEZBZ" value="${pd.JIANJIEZBZ}" maxlength="255" placeholder="这里输入间接费用备注" title="间接费用备注" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">其他费用:</td>
								<td><input type="number" name="QITAFEIYONG" id="QITAFEIYONG" value="${pd.QITAFEIYONG}" maxlength="32" placeholder="这里输入其他费用" title="其他费用" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">其他费用备注:</td>
								<td><input type="text" name="QITAFEIYONGBZ" id="QITAFEIYONGBZ" value="${pd.QITAFEIYONGBZ}" maxlength="255" placeholder="这里输入其他费用备注" title="其他费用备注" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">总经费:</td>
								<td><input type="number" name="ZONGJINGFEI" id="ZONGJINGFEI" value="${pd.ZONGJINGFEI}" maxlength="32" placeholder="这里输入总经费" title="总经费" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">所属项目:</td>
								<td style="vertical-align:top;padding-left:2px;">
									<select class="chosen-select form-control" name="XIANGMUID" id="XIANGMUID"  style="vertical-align:middle;width: 120px;">
									<option></option>
									<c:forEach items="${xiangmuList}" var="xiangmu">									
										<option value="${xiangmu.XIANGMU_ID}">  ${xiangmu.XMNAME}</option>
									</c:forEach>
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
			if($("#TUSHU").val()==""){
				$("#TUSHU").tips({
					side:3,
		            msg:'请输入图书资料费',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#TUSHU").focus();
			return false;
			}
			if($("#SHUJU").val()==""){
				$("#SHUJU").tips({
					side:3,
		            msg:'请输入数据采集费',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SHUJU").focus();
			return false;
			}
			if($("#HUIYI").val()==""){
				$("#HUIYI").tips({
					side:3,
		            msg:'请输入会议费',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#HUIYI").focus();
			return false;
			}
			if($("#ZHUANJIAZIXUN").val()==""){
				$("#ZHUANJIAZIXUN").tips({
					side:3,
		            msg:'请输入专家咨询与评审费',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ZHUANJIAZIXUN").focus();
			return false;
			}
			if($("#ZHUYANJINGTIE").val()==""){
				$("#ZHUYANJINGTIE").tips({
					side:3,
		            msg:'请输入助研津贴和劳务费',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ZHUYANJINGTIE").focus();
			return false;
			}
			if($("#YINSHUA").val()==""){
				$("#YINSHUA").tips({
					side:3,
		            msg:'请输入印刷和出版费',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#YINSHUA").focus();
			return false;
			}
			if($("#CHAILU").val()==""){
				$("#CHAILU").tips({
					side:3,
		            msg:'请输入调研差旅费',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CHAILU").focus();
			return false;
			}
			if($("#GUOJIJIAOLIUHEZUO").val()==""){
				$("#GUOJIJIAOLIUHEZUO").tips({
					side:3,
		            msg:'请输入国际合作交流费',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#GUOJIJIAOLIUHEZUO").focus();
			return false;
			}
			if($("#SHEBEI").val()==""){
				$("#SHEBEI").tips({
					side:3,
		            msg:'请输入设备购置和使用费',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SHEBEI").focus();
			return false;
			}
			if($("#JIANJIEFEIYONG").val()==""){
				$("#JIANJIEFEIYONG").tips({
					side:3,
		            msg:'请输入间接费用',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JIANJIEFEIYONG").focus();
			return false;
			}
			if($("#JIANJIEZBZ").val()==""){
				$("#JIANJIEZBZ").tips({
					side:3,
		            msg:'请输入间接费用备注',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JIANJIEZBZ").focus();
			return false;
			}
			if($("#QITAFEIYONG").val()==""){
				$("#QITAFEIYONG").tips({
					side:3,
		            msg:'请输入其他费用',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#QITAFEIYONG").focus();
			return false;
			}
			if($("#QITAFEIYONGBZ").val()==""){
				$("#QITAFEIYONGBZ").tips({
					side:3,
		            msg:'请输入其他费用备注',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#QITAFEIYONGBZ").focus();
			return false;
			}
			if($("#ZONGJINGFEI").val()==""){
				$("#ZONGJINGFEI").tips({
					side:3,
		            msg:'请输入总经费',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ZONGJINGFEI").focus();
			return false;
			}
			if($("#XIANGMUID").val()==""){
				$("#XIANGMUID").tips({
					side:3,
		            msg:'请输入所属项目id',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#XIANGMUID").focus();
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