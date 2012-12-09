<#-- @ftlvariable name="helper" type="org.webtree.System.Helpers.ViewHelper" -->
<#include "messageBlock.ftl">
<form class="well form-inline" action="" method="post">
	<div class="row">
		<div class="span-5 offset5">
			<div class="controls control-group">
				<label class="control-group input-prepend">
					<span class="add-on">Логин&nbsp;&nbsp;</span>
					<input class="span-1" type="text" name="email" value="${helper.getParam("email")!}"/>
				</label>
			</div>
			<div class="controls control-group">
				<label class="control-group input-prepend">
					<span class="add-on">Пароль</span>
					<input class="span-2" type="password" name="pass" value="${helper.getParam("pass")!}"/>
				</label>
			</div>
			<div class="control-group control-group">
				<button name="login" type="submit" class="btn btn-large btn-success">Войти</button>
			</div>
		</div>
	</div>
</form>