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
	<script type="text/javascript" src="static/ace/js/jquery.js"></script>
	<!-- 上传插件 -->
	<link href="plugins/uploadify/uploadify.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="plugins/uploadify/swfobject.js"></script>
	<script type="text/javascript" src="plugins/uploadify/jquery.uploadify.v2.1.4.min.js"></script>
	<!-- 上传插件 -->
	<script type="text/javascript">
	var jsessionid = "<%=session.getId()%>";  //勿删，uploadify兼容火狐用到
	</script>
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
					<form action="keyanketihuizong/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" value="no" id="hasTp1" />
						<!-- -->
						 <input type="hidden" name="KEYANKETIHUIZONG_ID" id="KEYANKETIHUIZONG_ID" value="${pd.KEYANKETIHUIZONG_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">课题名称:</td>
								<td><input type="text" name="KETINAME" id="KETINAME" value="${pd.KETINAME}" maxlength="50" placeholder="这里输入课题名称" title="课题名称" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">负责人id:</td>
								<td><input type="number" name="FUZERENID" id="FUZERENID" value="${pd.FUZERENID}" maxlength="32" placeholder="这里输入负责人id" title="负责人id" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">负责人姓名:</td>
								<td><input type="text" name="FUZERENNAME" id="FUZERENNAME" value="${pd.FUZERENNAME}" maxlength="50" placeholder="这里输入负责人姓名" title="负责人姓名" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">课题来源:</td>
								<td><input type="text" name="KETINLAIYUAN" id="KETINLAIYUAN" value="${pd.KETINLAIYUAN}" maxlength="50" placeholder="这里输入课题来源" title="课题来源" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">到位经费（万）:</td>
								<td><input type="number" name="DAOWEIJINGFEI" id="DAOWEIJINGFEI" value="${pd.DAOWEIJINGFEI}" maxlength="32" placeholder="这里输入到位经费（万）" title="到位经费（万）" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">课题级别:</td>
								<td><input type="number" name="KETIJIBIE" id="KETIJIBIE" value="${pd.KETIJIBIE}" maxlength="32" placeholder="这里输入课题级别" title="课题级别" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">团队人数:</td>
								<td><input type="number" name="TUANDUIRENSHU" id="TUANDUIRENSHU" value="${pd.TUANDUIRENSHU}" maxlength="32" placeholder="这里输入团队人数" title="团队人数" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">所属学课:</td>
								<td><input type="text" name="SUBJECT" id="SUBJECT" value="${pd.SUBJECT}" maxlength="50" placeholder="这里输入所属学课" title="所属学课" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;" id="FILEPATHn">文件:</td>
								<td>
									<input type="file" name="File_name" id="uploadify1" keepDefaultStyle = "true"/>
									<input type="hidden" name="FILEPATH" id="FILEPATH" value=""/>
								</td>	
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">审核状况:</td>
								<td>	<select name="SHENHE" title="审核状态">
										<option value="审核中" <c:if test="${pd.SHENHE == '审核中' }">selected</c:if> >审核中</option>
										<option value="在研" <c:if test="${pd.SHENHE == '在研' }">selected</c:if> >在研</option>
										<option value="已结题" <c:if test="${pd.SHENHE == '已结题' }">selected</c:if> >已结题</option>
								</select>
							</td>
							</tr>
							
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">通信联络人（电话）:</td>
								<td><input type="number" name="LIANLUO" id="LIANLUO" value="${pd.LIANLUO}" maxlength="32" placeholder="这里输入通信联络人（电话）" title="通信联络人（电话）" style="width:98%;"/></td>
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
			if($("#KETINAME").val()==""){
				$("#KETINAME").tips({
					side:3,
		            msg:'请输入课题名称',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#KETINAME").focus();
			return false;
			}
			if($("#FUZERENID").val()==""){
				$("#FUZERENID").tips({
					side:3,
		            msg:'请输入负责人id',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#FUZERENID").focus();
			return false;
			}
			if($("#FUZERENNAME").val()==""){
				$("#FUZERENNAME").tips({
					side:3,
		            msg:'请输入负责人姓名',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#FUZERENNAME").focus();
			return false;
			}
			if($("#KETINLAIYUAN").val()==""){
				$("#KETINLAIYUAN").tips({
					side:3,
		            msg:'请输入课题来源',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#KETINLAIYUAN").focus();
			return false;
			}
			if($("#DAOWEIJINGFEI").val()==""){
				$("#DAOWEIJINGFEI").tips({
					side:3,
		            msg:'请输入到位经费（万）',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#DAOWEIJINGFEI").focus();
			return false;
			}
			if($("#KETIJIBIE").val()==""){
				$("#KETIJIBIE").tips({
					side:3,
		            msg:'请输入课题级别',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#KETIJIBIE").focus();
			return false;
			}
			if($("#TUANDUIRENSHU").val()==""){
				$("#TUANDUIRENSHU").tips({
					side:3,
		            msg:'请输入团队人数',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#TUANDUIRENSHU").focus();
			return false;
			}
			if($("#SUBJECT").val()==""){
				$("#SUBJECT").tips({
					side:3,
		            msg:'请输入所属学课',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SUBJECT").focus();
			return false;
			}
			if($("#hasTp1").val()=="no"){
				$("#FILEPATHn").tips({
					side:2,
			        msg:'请选择文件',
			        bg:'#AE81FF',
			        time:2  
			    });
			return false;
			}
			
			if($("#SHENHE").val()==""){
				$("#SHENHE").tips({
					side:3,
		            msg:'请输入审核状况',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SHENHE").focus();
			return false;
			}
			
			if($("#LIANLUO").val()==""){
				$("#LIANLUO").tips({
					side:3,
		            msg:'请输入通信联络人（电话）',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#LIANLUO").focus();
			return false;
			}
			$('#uploadify1').uploadifyUpload();
		}
		
		$(function() {
			//日期框
			$('.date-picker').datepicker({autoclose: true,todayHighlight: true});
		});
		//====================上传=================
		$(document).ready(function(){
			var str='';
			$("#uploadify1").uploadify({
				'buttonImg'	: 	"<%=basePath%>static/images/fileup.png",
				'uploader'	:	"<%=basePath%>plugins/uploadify/uploadify.swf",
				'script'    :	"<%=basePath%>plugins/uploadify/uploadFile.jsp;jsessionid="+jsessionid,
				'cancelImg' :	"<%=basePath%>plugins/uploadify/cancel.png",
				'folder'	:	"<%=basePath%>uploadFiles/uploadFile",//上传文件存放的路径,请保持与uploadFile.jsp中PATH的值相同
				'queueId'	:	"fileQueue",
				'queueSizeLimit'	:	1,//限制上传文件的数量
				//'fileExt'	:	"*.rar,*.zip",
				//'fileDesc'	:	"RAR *.rar",//限制文件类型
				'fileExt'     : '*.*;*.*;*.*',
				'fileDesc'    : 'Please choose(.*, .*, .*)',
				'auto'		:	false,
				'multi'		:	true,//是否允许多文件上传
				'simUploadLimit':	2,//同时运行上传的进程数量
				'buttonText':	"files",
				'scriptData':	{'uploadPath':'/uploadFiles/uploadFile/'},//这个参数用于传递用户自己的参数，此时'method' 必须设置为GET, 后台可以用request.getParameter('name')获取名字的值
				'method'	:	"GET",
				'onComplete':function(event,queueId,fileObj,response,data){
					str = response.trim();//单个上传完毕执行
				},
				'onAllComplete' : function(event,data) {
					//alert(str);	//全部上传完毕执行
					$("#FILEPATH").val(str);
					$("#Form").submit();
					$("#zhongxin").hide();
					$("#zhongxin2").show();
		    	},
		    	'onSelect' : function(event, queueId, fileObj){
		    		$("#hasTp1").val("ok");
		    	}
			});
					
		});
		//====================上传=================
			//清除空格
		String.prototype.trim=function(){
		     return this.replace(/(^\s*)|(\s*$)/g,'');
		};
		</script>
</body>
</html>