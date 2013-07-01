<#-- @ftlvariable name="editable" type="boolean" -->
<#-- @ftlvariable name="content.nodes" type="org.webtree.Node.Model.NodeModelList" -->
<#-- @ftlvariable name="content.user" type="org.webtree.Human.Model.HumanModel" -->

<div class="well">
<#include "messageBlock.ftl">
	<#if content??>

		<label for="humanOneEmail">Email</label>
		<h1 class="<#if editable>editable</#if>">
			<#if editable>
				<input id="humanOneEmail" type="text" value="${content.user.getName()}" />
			<#else>
				${content.user.getName()}
			</#if>
		</h1>
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