<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<title>${TITLE}</title>
<meta name="keywords" content="${KEYWORDS}" />
<meta name="description" content="${DESCRIPTION}">
<meta name="author" content="wxr">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- CSS -->
<link rel="stylesheet" href="fh_static_1/css/style.css">
<link rel="stylesheet" type="text/css"
	href="fh_static_1/css/settings.css" media="screen" />
<!-- JS -->
<script src="fh_static_1/js/jquery-1.8.2.min.js" type="text/javascript"></script>
<!-- jQuery -->
<script src="fh_static_1/js/jquery.easing.1.3.js" type="text/javascript"></script>
<!-- jQuery easing -->
<script src="fh_static_1/js/modernizr.custom.js" type="text/javascript"></script>
<!-- Modernizr -->
<script src="fh_static_1/js/jquery-ui-1.10.1.custom.min.js"
	type="text/javascript"></script>
<!-- tabs, toggles, accordion -->
<script src="fh_static_1/js/custom.js" type="text/javascript"></script>
<!-- jQuery initialization -->
<!-- Responsive Menu -->
<script src="fh_static_1/js/jquery.meanmenu.js"></script>
<script>
	jQuery(document).ready(function() {
		jQuery('header nav').meanmenu();
	});
</script>
<!-- Revolution Slider -->
<script src="fh_static_1/js/jquery.themepunch.plugins.min.js"></script>
<script src="fh_static_1/js/jquery.themepunch.revolution.min.js"></script>
<script src="fh_static_1/js/revolution-slider-options.js"></script>
<!-- Prety photo -->
<script src="fh_static_1/js/jquery.prettyPhoto.js"></script>
<script>
	$(document).ready(function() {
		$("a[data-gal^='prettyPhoto']").prettyPhoto();
	});
</script>
<!-- Tooltip -->
<script src="fh_static_1/js/tooltip.js"></script>
<!-- Flexisel -->
<script type="text/javascript" src="fh_static_1/js/jquery.flexisel.js"></script>
<!-- Favicons  -->
<link rel="shortcut icon" href="fh_static_1/images/favicon.ico">
<link rel="apple-touch-icon" href="fh_static_1/images/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="fh_static_1/images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="fh_static_1/images/apple-touch-icon-114x114.png">
</head>
<body>

	<!-- header 包含导航菜单 -->
	<#include "headerTemplate.ftl"> 
	<!-- header 包含导航菜单 -->

	<div class="container">
	
		<div class="container">
			<div class="sixteen columns page-title">
				<div class="eight columns alpha">
					<h3> <span>联系我们</span> </h3>
				</div>
				<div class="eight columns omega">
					<nav class="breadcrumbs">
						<ul>
							<li></li>
							<li>
								<a>Contact US</a>
							</li>
							<li></li>
						</ul>
					</nav>
				</div>
				<div class="clearfix"></div>
			</div><!-- page-title -->
		</div><!-- container -->

		<!-- About the Author -->
			<div class="about-user">
				<div>
					<p>
						${CONTACTUS}
					</p>
				</div>
			</div>
		<!-- End About the Author -->



		<!-- 留言 -->
		<div class="comment-form">
			<div class="form">
			
				<div class="form-holder">
					<div class="notification canhide"></div>	
										
					<form id="frm_contact" name="frm_contact" action="web/saveLeavemsg.do" method="post">
						
						<div class="field">
							<label for="name">您的姓名<span class="required">*</span></label>
							<div class="inputs">
								<input class="aweform" type="text" id="NAME" name="NAME" maxlength="10"/>
							</div>  
						</div>
						
						<div class="field">
							<label for="email">电子邮箱 <span class="required">*</span></label>
							<div class="inputs">
								<input class="aweform" type="text" id="EMAIL" name="EMAIL" maxlength="30" />
							</div>  
						</div>
						
						<div class="field">
							<label for="name">您的地址</label>
							<div class="inputs">
								<input class="aweform" type="text" id="ADDRESS" name="ADDRESSESS" maxlength="50" />
							</div>  
						</div>
						
						<div class="field">
							<label for="message">留言给我们 <span class="required">*</span></label>
							<div class="inputs">
								<textarea class="aweform" id="LCONTENT" name="LCONTENT" rows="30" cols="5" maxlength="2000"></textarea>
							</div>  
						</div>
					</form>
						<div class="form-submit">
							<button onclick="save()">提交</button>   
						</div>
					
				</div>
				
			</div>
			<!-- 留言 -->
			
		</div>
		
	</div>
	<!-- container -->
	
	<!-- footer 包含底部 -->
	<#include "footerTemplate.ftl"> 
	<!-- footer 包含底部  -->

	<script type="text/javascript">
		$(window).load(function() {
			$("#contactus").addClass("current_page_item"); 
		});
		
		function save(){
			var NAME = $("#NAME").val();
			var EMAIL = $("#EMAIL").val();
			var ADDRESS = $("#ADDRESS").val();
			var LCONTENT = $("#LCONTENT").val();
			$.ajax({
				type: "POST",
				url: 'web/saveLeavemsg.do',
		    	data: {NAME:NAME,EMAIL:EMAIL,ADDRESS:ADDRESS,LCONTENT:LCONTENT,tm:new Date().getTime()},
				dataType:'json',
				cache: false,
				success: function(data){
					 if("00" == data.result){
					 	$("#NAME").val("");
						$("#EMAIL").val("");
						$("#ADDRESS").val("");
						$("#LCONTENT").val("");
						alert("提交成功");
					 }
				}
			});
		}
	</script>
	<!-- End Document  -->
</body>
</html>