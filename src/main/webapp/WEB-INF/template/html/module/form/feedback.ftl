<#-- @ftlvariable name="content" type="java.util.HashMap" -->

<#if content.result??>

<p class="message">
	<#if content.result == "1">
		<span class="label success">Отправлено успешно. Спасибо! :)</span>
	<#else>
		<span class="label warning">Напиши хоть что нибудь.</span>
	</#if>
</p>
</#if>

<div class="span5">
	<form method="post">
		<div class="input-control text">
			<input type="text" name="theme" value="${content.theme!}" placeholder="Тема"/>
			<button class="btn-clear" tabindex="-1" type="btn-search"></button>
		</div>
		<div class="input-control text">
			<input type="email" name="email" value="${content.email!}" placeholder="Email"/>
			<button class="btn-clear" tabindex="-1" type="btn-search"></button>
		</div>
		<div class="input-control textarea">
			<textarea name="text" placeholder="Текст">${content.text!}</textarea>
		</div>
		<input name="submit" type="submit" value="Отправить"/>
	</form>
</div>