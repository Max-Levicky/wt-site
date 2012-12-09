<#-- @ftlvariable name="messages" type="org.webtree.System.Exception.MessageException[]" -->
<div class="alert-block">
<#list messages as message>
	<div class="alert alert-${message.getStatus()}">
	${message.getMessage()}
	</div>
</#list>
</div>
<form class="well form-inline" action="" method="post">
	<div class="row">
		<div class="span-5 offset5">
			<div class="controls control-group">
				<label class="control-group input-prepend">
					<span class="add-on">Емеил&nbsp;&nbsp;</span>
					<input class="span-1" type="text" name="email" value="${content.email!}"/>
				</label>
			</div>
			<div class="controls control-group">
				<label class="control-group input-prepend">
					<span class="add-on">Пароль</span>
					<input class="span-2" type="password" name="pass" value="${content.pass!}"/>
				</label>
			</div>
			<div class="control-group control-group">
				<button name="register" type="submit" class="btn btn-large btn-success">Зарегистрироваться</button>
			</div>
		</div>
	</div>
</form>