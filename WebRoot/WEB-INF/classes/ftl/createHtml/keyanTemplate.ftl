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
					<h3> <span>科研成果展示</span> </h3>
				</div>
				<div class="eight columns omega">
					<nav class="breadcrumbs">
						<ul>
							<li></li>
							<li>
								<a>keyan case</a>
							</li>
							<li></li>
						</ul>
					</nav>
				</div>
				<div class="clearfix"></div>
			</div><!-- page-title -->
		</div><!-- container -->
			
			
			<div class="twelve columns">

				<#list lunwenList as var>
					<!-- Post 1 -->
					<div class="post-preview preview-medium">
						<!-- Post Title & Meta -->
												
						<h2><a href="webkeyandetail.html?LUNWEN_ID=${var[0]}" class="dark-link">${var[1]}</a></h2>
						<div class="twelve columns omega">
							<p>
								论文名：		${var[1]}		论文英文名：	${var[2]}		出版日期：	${var[3]}		第一作者	：	${var[4]}		第二作者	：	${var[5]}		第三作者	：	${var[6]}		其他作者	：	${var[7]}
							</p>
							<a class="btn colored"  onclick="window.location.href='lunwen/download.do?LUNWEN_ID=${var[0]}'">下载<i class="fa fa-chevron-circle-right" style="margin: 0 0 0 7px;"></i></a>							
						</div>
        				<div class="clearfix"></div>
					</div>
					
					<!-- End Post 1 -->
				</#list>

				</div>
				
	
	</div>
	<!-- container -->
	
	<!-- footer 包含底部 -->
	<#include "footerTemplate.ftl"> 
	<!-- footer 包含底部  -->

	<script type="text/javascript">
		$(window).load(function() {
			$("#keyan").addClass("current_page_item"); 
		});
	</script>
	<!-- End Document  -->
</body>
</html>