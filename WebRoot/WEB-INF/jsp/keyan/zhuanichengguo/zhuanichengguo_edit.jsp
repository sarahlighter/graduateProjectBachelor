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
					
					<form action="zhuanichengguo/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="ZHUANICHENGGUO_ID" id="ZHUANICHENGGUO_ID" value="${pd.ZHUANICHENGGUO_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">专利号:</td>
								<td><input type="text" name="ZHUANLIHAO" id="ZHUANLIHAO" value="${pd.ZHUANLIHAO}" maxlength="11" placeholder="这里输入专利号" title="专利号" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">专利名:</td>
								<td><input type="text" name="ZHUANLINAME" id="ZHUANLINAME" value="${pd.ZHUANLINAME}" maxlength="100" placeholder="这里输入专利名" title="专利名" style="width:98%;"/></td>
							</tr>

							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">所属项目号:</td>
								<td style="vertical-align:top;padding-left:2px;">
									<select class="chosen-select form-control" name="SUOSHUXIANGMUID" id="SUOSHUXIANGMUID"  style="vertical-align:middle;width: 120px;">
									<option></option>
									<c:forEach items="${xiangmuList}" var="xiangmu">									
										<option value="${xiangmu.XIANGMU_ID}">  ${xiangmu.XMNAME}</option>
									</c:forEach>
								  	</select>
								  </td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">第一发明人:</td>
								<td style="vertical-align:top;padding-left:2px;">								
								 	<select class="chosen-select form-control" name="FAMINGRENID" id="FAMINGRENID"  style="vertical-align:middle;width: 120px;">
									<option></option>
									<c:forEach items="${userList}" var="user">							
										<option value="${user.NUMBER}">  ${user.NAME}</option>
									</c:forEach>
								  	</select>
								</td>
								<td><input type="text" name="FIRSTNAME" id="FIRSTNAME" value="${pd.FIRSTNAME}" maxlength="255" placeholder="这里输入第一发明人姓名" title="第一发明人姓名" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">第二发明人:</td>
								<td style="vertical-align:top;padding-left:2px;">								
								 	<select class="chosen-select form-control" name="SECONDCID" id="SECONDCID"  style="vertical-align:middle;width: 120px;">
									<option></option>
									<c:forEach items="${userList}" var="user">							
										<option value="${user.NUMBER}">  ${user.NAME}</option>
									</c:forEach>
								  	</select>
								</td>
								<td><input type="text" name="SECONDNAME" id="SECONDNAME" value="${pd.SECONDNAME}" maxlength="255" placeholder="这里输入第二发明人姓名" title="第二发明人姓名" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">第三发明人:</td>
								<td style="vertical-align:top;padding-left:2px;">								
								 	<select class="chosen-select form-control" name="THIRDID" id="THIRDID"  style="vertical-align:middle;width: 120px;">
									<option></option>
									<c:forEach items="${userList}" var="user">							
										<option value="${user.NUMBER}">  ${user.NAME}</option>
									</c:forEach>
								  	</select>
								</td>
								<td><input type="text" name="THIRDNAME" id="THIRDNAME" value="${pd.THIRDNAME}" maxlength="255" placeholder="这里输入第三发明人姓名" title="第三发明人姓名" style="width:98%;"/></td>
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
			if($("#ZHUANLIHAO").val()==""){
				$("#ZHUANLIHAO").tips({
					side:3,
		            msg:'请输入专利号',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ZHUANLIHAO").focus();
			return false;
			}
			if($("#ZHUANLINAME").val()==""){
				$("#ZHUANLINAME").tips({
					side:3,
		            msg:'请输入专利名',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ZHUANLINAME").focus();
			return false;
			}

			if($("#SUOSHUXIANGMUID").val()==""){
				$("#SUOSHUXIANGMUID").tips({
					side:3,
		            msg:'请输入所属项目号',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SUOSHUXIANGMUID").focus();
			return false;
			}
			if($("#FIRSTNAME").val()==""&& $("#FAMINGRENID").val()!=""){
			var   k = $("#FAMINGRENID").val();	
				<c:forEach items="${userList}" var="user">																									
					if (k=='${user.NUMBER}')
						$("#FIRSTNAME").val('${user.NAME}');
				</c:forEach>			
			return false;
			}
			if($("#SECONDNAME").val()==""&& $("#SECONDCID").val()!=""){
			var   k = $("#SECONDCID").val();	
				<c:forEach items="${userList}" var="user">																									
					if (k=='${user.NUMBER}')
						$("#SECONDNAME").val('${user.NAME}');
				</c:forEach>			
			return false;
			}
			if($("#THIRDNAME").val()==""&& $("#THIRDID").val()!=""){
			var   k = $("#THIRDID").val();	
				<c:forEach items="${userList}" var="user">																									
					if (k=='${user.NUMBER}')
						$("#THIRDNAME").val('${user.NAME}');
				</c:forEach>			
				//$("#FIRSTAUTHOR").val(k);
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