<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
					<form action="lunwen/${msg }.do" name="Form" id="Form" method="post">
							<input type="hidden" value="no" id="hasTp1" />
						<!--  -->
						<input type="hidden" name="LUNWEN_ID" id="LUNWEN_ID" value="${pd.LUNWEN_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">论文名:</td>							
								<td style="width:75px;text-align: right;padding-top: 13px;">${pd.LWNAME}</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">论文英文名:</td>								
								<td style="width:75px;text-align: right;padding-top: 13px;">${pd.ENAME}</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">发刊日期:</td>
								<td style="width:75px;text-align: right;padding-top: 13px;">${pd.PUNLISHDATE}</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">第一作者:</td>
								<td style="width:75px;text-align: right;padding-top: 13px;">${pd.FIRSTAUTHOR}</td>							
							<!-- 							
									<c:if test="${pd.FIRSTAUTHORNUM== user.NUMBER }">selected</c:if>
									
										<td><input type="text" name="FIRSTAUTHORNUM" id="FIRSTAUTHORNUM" value="${pd.FIRSTAUTHORNUM}" maxlength="255" placeholder="这里输入第一作者教职工编号" title="第一作者教职工编号" style="width:98%;"/></td>
							 -->
							</tr>
						
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">第二作者:</td>
								<td style="width:75px;text-align: right;padding-top: 13px;">${pd.SECONDAUTHOR}</td>			
								<!-- <td><input type="text" name="SECONDAUTHERNUM" id="SECONDAUTHERNUM" value="${pd.SECONDAUTHERNUM}" maxlength="255" placeholder="这里输入第二作者教职工编号" title="第二作者教职工编号" style="width:98%;"/></td>
								
								 -->
								
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">第三作者:</td>	
								<td style="width:75px;text-align: right;padding-top: 13px;">${pd.THIRDAUTHOR}</td>										
							</tr>
							
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">学科门类:</td>
								<td style="width:75px;text-align: right;padding-top: 13px;">${pd.SUBJECT}</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">出版单位:</td>
								<td style="width:75px;text-align: right;padding-top: 13px;">${pd.PUBLISHER}</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">期刊号:</td>
								<td style="width:75px;text-align: right;padding-top: 13px;">
									<c:forEach items="${qikanList}" var="qikan">																									
										<c:if test="${var.QIKANHAO==qikan.QIKANXINXI_ID}">
											${qikan.QIKANNAME}
										</c:if>
									</c:forEach>							 
								</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">审核状态:</td>
								<td style="width:75px;text-align: right;padding-top: 13px;">${pd.SHENHEZT}</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">所属项目:</td>
								<td style="width:75px;text-align: right;padding-top: 13px;">
								<c:forEach items="${xiangmuList}" var="xiangmu">																									
									<c:if test="${var.XMID==xiangmu.XIANGMU_ID}">
										${xiangmu.XMNAME}
									</c:if>
								</c:forEach>
								</td>								
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">通信联络人1（电话）:</td>
								<td style="width:75px;text-align: right;padding-top: 13px;">${pd.LIANLUO1}</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">通信联络人2（电话）:</td>
								<td style="width:75px;text-align: right;padding-top: 13px;">${pd.LIANLUO2}</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">其他作者:</td>
								<td style="width:75px;text-align: right;padding-top: 13px;">${pd.OTHERAUTHER}</td>
							</tr>
							
							
						</table>
						</div>

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
				//$("#FIRSTAUTHOR").val(k);
			return false;
			}
			if($("#THIRDAUTHOR").val()=="" && $("#THIRDAUTHORNUM").val()!=""){
			var   k = $("#THIRDAUTHORNUM").val();	
				<c:forEach items="${userList}" var="user">																									
					if (k=='${user.NUMBER}')
						$("#THIRDAUTHOR").val('${user.NAME}');
				</c:forEach>			
				//$("#FIRSTAUTHOR").val(k);
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