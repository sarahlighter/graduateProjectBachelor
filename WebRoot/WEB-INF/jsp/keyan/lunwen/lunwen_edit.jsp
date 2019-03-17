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
					
					<form action="lunwen/${msg }.do" name="Form" id="Form" method="post">
							<input type="hidden" value="no" id="hasTp1" />
						<!--  -->
						<input type="hidden" name="LUNWEN_ID" id="LUNWEN_ID" value="${pd.LUNWEN_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">论文名:</td>
								<td><input type="text" name="LWNAME" id="LWNAME" value="${pd.LWNAME}" maxlength="255" placeholder="这里输入论文名" title="论文名" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">论文英文名:</td>
								<td><input type="text" name="ENAME" id="ENAME" value="${pd.ENAME}" maxlength="255" placeholder="这里输入论文英文名" title="论文英文名" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">发刊日期:</td>
								<td><input class="span10 date-picker" name="PUNLISHDATE" id="PUNLISHDATE" value="${pd.PUNLISHDATE}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="发刊日期" title="发刊日期" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">第一作者:</td>
															
								<td style="vertical-align:top;padding-left:2px;">								
								 	<select class="chosen-select form-control" name="FIRSTAUTHORNUM" id="FIRSTAUTHORNUM"  style="vertical-align:middle;width: 120px;">
									<option></option>
									<c:forEach items="${userList}" var="user">							
										<option value="${user.NUMBER}">  ${user.NAME}</option>
									</c:forEach>
								  	</select>
								</td>
								
								<td><input type="text" name="FIRSTAUTHOR" id="FIRSTAUTHOR" value="${pd.FIRSTAUTHOR}" maxlength="20" placeholder="这里输入第一作者" title="第一作者姓名" style="width:98%;"/></td>
	
							<!-- 							
									<c:if test="${pd.FIRSTAUTHORNUM== user.NUMBER }">selected</c:if>
									
										<td><input type="text" name="FIRSTAUTHORNUM" id="FIRSTAUTHORNUM" value="${pd.FIRSTAUTHORNUM}" maxlength="255" placeholder="这里输入第一作者教职工编号" title="第一作者教职工编号" style="width:98%;"/></td>
							 -->
							</tr>
							
							
							
							
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">第二作者:</td>
					
								<td style="vertical-align:top;padding-left:2px;">
								 	<select class="chosen-select form-control" name="SECONDAUTHERNUM" id="SECONDAUTHERNUM" placeholder="本校老师" style="vertical-align:middle;width: 120px;">
									<option></option>
									<c:forEach items="${userList}" var="user">									
										<option value="${user.NUMBER}">${user.NAME}</option>
									</c:forEach>
								  	</select>
								</td>
							<td><input type="text" name="SECONDAUTHOR" id="SECONDAUTHOR" value="${pd.SECONDAUTHOR}" maxlength="20" placeholder="这里输入第二作者" title="第二作者" style="width:98%;"/></td>
				
								<!-- <td><input type="text" name="SECONDAUTHERNUM" id="SECONDAUTHERNUM" value="${pd.SECONDAUTHERNUM}" maxlength="255" placeholder="这里输入第二作者教职工编号" title="第二作者教职工编号" style="width:98%;"/></td>
								
								 -->
								
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">第三作者:</td>
				
								<td style="vertical-align:top;padding-left:2px;">
								 	
								 		<select class="chosen-select form-control" name="THIRDAUTHORNUM" id="THIRDAUTHORNUM"  style="vertical-align:middle;width: 120px;">
									<option></option>
									<c:forEach items="${userList}" var="user">									
										<option value="${user.NUMBER}" >${user.NAME}</option>
									</c:forEach>
								  	</select>
								</td>
							<td><input type="text" name="THIRDAUTHOR" id="THIRDAUTHOR" value="${pd.THIRDAUTHOR}" maxlength="255" placeholder="这里输入第三作者" title="第三作者" style="width:98%;"/></td>
			
								<!--								<td><input type="text" name="THIRDAUTHORNUM" id="THIRDAUTHORNUM" value="${pd.THIRDAUTHORNUM}" maxlength="255" placeholder="这里输入第三作者教职工编号" title="第三作者教职工编号" style="width:98%;"/></td>
	  -->
							</tr>
							
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">学科门类:</td>
								<td><input type="text" name="SUBJECT" id="SUBJECT" value="${pd.SUBJECT}" maxlength="20" placeholder="这里输入学科门类" title="学科门类" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">出版单位:</td>
								<td><input type="text" name="PUBLISHER" id="PUBLISHER" value="${pd.PUBLISHER}" maxlength="20" placeholder="这里输入出版单位" title="出版单位" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">期刊号:</td>
									<td style="vertical-align:top;padding-left:2px;">
									<select class="chosen-select form-control" name="QIKANHAO" id="QIKANHAO"  style="vertical-align:middle;width: 120px;">
									<option></option>
									<c:forEach items="${qikanList}" var="qikan">									
										<option value="${qikan.QIKANXINXI_ID}">  ${qikan.QIKANNAME}</option>
									</c:forEach>
								  	</select>
								  </td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">审核状态:</td>
								
								<td>	<select name="SHENHEZT" title="审核状态">
										<option value="审核中" <c:if test="${pd.SHENHEZT == '审核中' }">selected</c:if> >审核中</option>
										<option value="在研" <c:if test="${pd.SHENHEZT == '在研' }">selected</c:if> >在研</option>
										<option value="已结题" <c:if test="${pd.SHENHEZT == '已结题' }">selected</c:if> >已结题</option>
								</select>
								</td>
								
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">所属项目:</td>
								<td style="vertical-align:top;padding-left:2px;">
									<select class="chosen-select form-control" name="XMID" id="XMID"  style="vertical-align:middle;width: 120px;">
									<option></option>
									<c:forEach items="${xiangmuList}" var="xiangmu">									
										<option value="${xiangmu.XIANGMU_ID}">  ${xiangmu.XMNAME}</option>
									</c:forEach>
								  	</select>
								  </td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">通信联络人1（电话）:</td>
								<td><input type="number" name="LIANLUO1" id="LIANLUO1" value="${pd.LIANLUO1}" maxlength="32" placeholder="这里输入通信联络人1（电话）" title="通信联络人1（电话）" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">通信联络人2（电话）:</td>
								<td><input type="number" name="LIANLUO2" id="LIANLUO2" value="${pd.LIANLUO2}" maxlength="32" placeholder="这里输入通信联络人2（电话）" title="通信联络人2（电话）" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">其他作者:</td>
								<td><input type="text" name="OTHERAUTHER" id="OTHERAUTHER" value="${pd.OTHERAUTHER}" maxlength="255" placeholder="这里输入其他作者" title="其他作者" style="width:98%;"/></td>
							</tr>
							
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;" id="FILEPATHn">文件:</td>
								<td>
									<input type="file" name="File_name" id="uploadify1" keepDefaultStyle = "true"/>
									<input type="hidden" name="FILEPATH" id="FILEPATH" value=""/>
								</td>							</tr>
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
		function save()
		{
			if($("#LWNAME").val()==""){
				$("#LWNAME").tips({
					side:3,
		            msg:'请输入论文名',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#LWNAME").focus();
			return false;
			}
			if($("#ENAME").val()==""){
				$("#ENAME").tips({
					side:3,
		            msg:'请输入论文英文名',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ENAME").focus();
			return false;
			}
			
			if($("#FIRSTAUTHOR").val()==""&& $("#FIRSTAUTHORNUM").val()!=""){
			var   k = $("#FIRSTAUTHORNUM").val();	
				<c:forEach items="${userList}" var="user">																									
					if (k=='${user.NUMBER}')
						$("#FIRSTAUTHOR").val('${user.NAME}');
				</c:forEach>			
				//$("#FIRSTAUTHOR").val(k);
			return false;
			}
			if($("#FIRSTAUTHOR").val()==""){
				$("#FIRSTAUTHOR").tips({
					side:3,
		            msg:'请输入第一作者',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#FIRSTAUTHOR").focus();
			return false;
			}
			if($("#SECONDAUTHOR").val()=="" && $("#SECONDAUTHERNUM").val()!=""){
			var   k = $("#SECONDAUTHERNUM").val();	
				<c:forEach items="${userList}" var="user">																									
					if (k=='${user.NUMBER}')
						$("#SECONDAUTHOR").val('${user.NAME}');
				</c:forEach>			
			return false;
			}
			if($("#THIRDAUTHOR").val()=="" && $("#THIRDAUTHORNUM").val()!=""){
			var   k = $("#THIRDAUTHORNUM").val();	
				<c:forEach items="${userList}" var="user">																									
					if (k=='${user.NUMBER}')
						$("#THIRDAUTHOR").val('${user.NAME}');
				</c:forEach>			
			return false;
			}
			if($("#SUBJECT").val()==""){
				$("#SUBJECT").tips({
					side:3,
		            msg:'请输入学科门类',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SUBJECT").focus();
			return false;
			}
			
			if($("#LIANLUO1").val()==""){
				$("#LIANLUO1").tips({
					side:3,
		            msg:'请输入通信联络人1（电话）',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#LIANLUO1").focus();
			return false;
			}
			if($("#LIANLUO2").val()==""){
				$("#LIANLUO2").tips({
					side:3,
		            msg:'请输入通信联络人2（电话）',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#LIANLUO1").focus();
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