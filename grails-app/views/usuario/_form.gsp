<h3 class="ui-state-default">Cadastro de usuário</h3>

<sol:mensagens />

<form id="formUsuario">

	<div class="fm-req">
		<label for="txtLogin">Login</label> 
		<input name="username" id="txtLogin" type="text" class="required" value="${instance?.username}" ${instance?.id ? "disabled" : ""}/>
	</div>
	
	<g:if test="${!instance?.id}">
		<div class="fm-req">
			<label for="txtSenha">Senha</label> 
			<input name="password" id="txtSenha" type="password" class="required" value="${instance?.password}" />
		</div>
	</g:if>
	
	<div>
		<label for="ckAtivo">Ativo</label>
		<g:checkBox name="ckAtivo" value="${instance?.enabled}"/>
	</div>
	
	<input type="hidden" name="id" value="${instance?.id}" />

	<sol:toolBarSalvar idForm="formUsuario" controller="usuario" />

</form>