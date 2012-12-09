<#-- @ftlvariable name="content" type="org.webtree.Node.Model.NodeModel[]" -->
<#-- @ftlvariable name="helper" type="org.webtree.System.Helpers.ViewHelper" -->

<div class="well">
<#include "menu.ftl">
<#if content??>
	<#include "messageBlock.ftl">
	<#list content as item>
		<div class="item">
			<a href="${helper.getLinkUrl("node", "one/" + item.getId())}">${item.getTitle()}</a>
		</div>
	</#list>
<#else>
	<div class="alert alert-info">У Вас еще нет нодов.</div>
</#if>
</div>