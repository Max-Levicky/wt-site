<#-- @ftlvariable name="nodeMenu" type="org.webtree.Menu.Model.MenuModel[]" -->
<ul class="nav nav-tabs">
<#list nodeMenu as item>
	<li>${item.buildHtmlLink()}</li>
</#list>
</ul>
