<#-- @ftlvariable name="editable" type="boolean" -->
<#-- @ftlvariable name="content" type="org.webtree.Node.Model.NodeModel" -->
<#-- @ftlvariable name="helper" type="org.webtree.System.Helpers.ViewHelper" -->

<div class="well">
<#include "menu.ftl">
<#include "messageBlock.ftl">
<#if content??>
	<small>Нод</small>
	<h1>
		"${content.getTitle()}"
	</h1>
	<div>Рейт: ${content.getRate()}</div>
	<div>
	</div>
	<#if editable>
	<div class="nodeLink">

		<div class="getLink">Получить ссылку</div>
		<ul class="nav nav-tabs">
			<li class="active"><a href="#jsCode" data-toggle="tab">JS код</a></li>
			<li><a href="#clearLink" data-toggle="tab">Ссылка</a></li>
		</ul>
		<div class="tab-content">
			<div class="tab-pane active" id="jsCode">
				<label>
					Скопируйте код, и вставьте его на сайт.
					<br />
					<textarea class="span6" rows="7"><#include "activityJs.ftl"></textarea>
				</label>
			</div>
			<div class="tab-pane" id="clearLink">
				<label>
					Данную ссылку должны вызывать пользователи при пользовании нодом.
					<br />
					<input type="text" class="span6" value="http://${helper.getLogHost()}/static/js/activity/log.js" />
				</label>
			</div>
		</div>
	</div>
	</#if>
</#if>
</div>