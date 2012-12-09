<#-- @ftlvariable name="content" type="org.webtree.Human.Model.HumanModel[]" -->
<#-- @ftlvariable name="helper" type="org.webtree.System.Helpers.ViewHelper" -->

<div class="well">
<#--<#include "menu.ftl">-->
<#if content??>
<#--<#include "messageBlock.ftl">-->
	<table class="table">
		<thead>
		<tr>
			<th>Человек</th>
			<th>Рейт</th>
		</tr>
		</thead>
		<tbody>
			<#list content as item>
			<tr>
				<td>
					<a href="${helper.getLinkUrl("human", ""+item.getId())}">${item.getName()}</a>
				</td>
				<td>
					${item.getRate()}
				</td>
			</tr>
			</#list>
		</tbody>
	</table>
<#else>
	<div class="alert alert-info">Нет людей :) Ты можешь стать первым!</div>
</#if>
</div>