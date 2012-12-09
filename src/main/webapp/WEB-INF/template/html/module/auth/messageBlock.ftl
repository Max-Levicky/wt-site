<#-- @ftlvariable name="messages" type="org.webtree.System.Exception.MessageException[]" -->
<#if messages??>
<div class="alert-block">
	<#list messages as message>
		<div class="alert alert-${message.getStatus()}">
		${message.getMessage()}
		</div>
	</#list>
</div>
</#if>