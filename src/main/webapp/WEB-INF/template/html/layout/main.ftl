<#-- @ftlvariable name="menu" type="org.webtree.Menu.Model.MenuModel[]" -->
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<base href="${helper.getBaseUrl()}" />
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="static/css/common.css">
	<link rel="stylesheet" type="text/css" href="static/css/editableField.css">
	<link rel="shortcut icon" type="image/x-icon" href="${helper.getBaseUrl()}static/favicon.ico"/>
	<script type="text/javascript" src="https://www.google.com/jsapi"></script>
	<script>
		var wt = {};
		google.load("jquery", "1.7.1");
	</script>
	<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<script src="${helper.getBaseUrl()}static/js/libs/jquery.history.js"></script>
	<script src="${helper.getBaseUrl()}static/js/libs/bootstrap.min.js"></script>
	<script src="${helper.getBaseUrl()}static/js/libs/helpers.js"></script>
	<script src="${helper.getBaseUrl()}static/js/main.js"></script>
	<script src="${helper.getBaseUrl()}static/js/menu.js"></script>
	<script src="${helper.getBaseUrl()}static/js/fieldEdit.js"></script>
	<script src="${helper.getBaseUrl()}static/js/widgets.js"></script>
</head>
<body>

<#--<div id="right_buttons">-->
<#--<div class="buttons button1"><p><a href="#">Помочь проекту</a></p></div>-->
<#--<br class="cleaner"/>-->

<#--<div class="buttons button2"><p><a href="#">Благодарности</a></p></div>-->
<#--</div>-->

<div id="header">
	<div id="header_container">
		<div class="logo_container">
			<a href="${helper.getBaseUrl()}" class="logo" title="Web-Tree"></a>

			<div class="title">
				<h1 id="site_title">Web<span>-tree</span></h1>
			</div>
		</div>
		<div id="nav_container">
			<div id="nav">
				<ul>
				<#list menu as menuItem>
					<li class="first">
						${menuItem.buildHtmlLink()}
						<#if menuItem.hasSub()>
							<ul class="sub nav nav-tabs nav-stacked">
								<#list menuItem.getSubMenu() as subMenu>
									<li class="second">${subMenu.buildHtmlLink()}</li>
								</#list>
							</ul>
						</#if>
					</li>
				</#list>
				</ul>
			</div>
		</div>
	</div>
</div>
<div id="sub_header">
</div>
<div id="container">
<#--<#if helper.hasAuth()>-->
<#--${helper.getAuthModel().email}-->
<#--<#else>-->
	<#--Не вошел-->
<#--</#if>-->
	<div class="widget" id="mainContent">
	${content}
	</div>
</div>
<footer>&copy; 2012 Web-Tree.org</footer>
<div id="info"></div>
</body>
</html>