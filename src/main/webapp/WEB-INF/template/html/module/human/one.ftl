<#-- @ftlvariable name="content.nodes" type="org.webtree.Node.Model.NodeModelList" -->
<#-- @ftlvariable name="content.user" type="org.webtree.Human.Model.HumanModel" -->
<#-- @ftlvariable name="helper" type="org.webtree.System.Helpers.ViewHelper" -->

<div class="well">
<#include "messageBlock.ftl">
	<#if content??>

		<small>Email</small>
		<h1 class="editable">${content.user.getName()}</h1>
		<p>Рейт: ${content.user.getRate()}</p>

		<#if content.nodes??>
			<h2>Ноды</h2>
			<ul class="unstyled">
				<#list content.nodes as node>
					<li>
						${helper.buildHtmlLink("node", "one/" + node.getId(), node.getTitle())}
					</li>
				</#list>
			</ul>
		</#if>
	</#if>


</div>