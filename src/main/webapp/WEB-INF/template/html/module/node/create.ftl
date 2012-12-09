<div class="well">
<#include "menu.ftl">
	Создать нод
<#include "messageBlock.ftl">
	<form method="post" action="">
		<label>
			Название
			<input type="text" name="title"/>
		</label>
		<input class="btn" name="create" type="submit" value="Создать"/>
	</form>
</div>