<h3 class="ui-state-default">Cadastro de usuário</h3>

<sol:mensagens bean="${instance}" />

<form id="formUsuario">

	<div class="fm-req">
		<label for="txtLogin">Login</label> 
		<input name="username" 
			id="txtLogin" 
			type="text" 
			class="required" 
			value="${instance?.username}" ${instance?.id ? "disabled" : ""}
			style="width: 170px"
			/>
	</div>
	
	<g:if test="${!instance?.id}">
		<div class="fm-req">
			<label for="txtSenha">Senha</label> 
			<input name="password" 
				id="txtSenha" 
				type="password" 
				class="required" 
				value="${instance?.password}"
				style="width: 170px" 
				/>
		</div>
	</g:if>
	
	<div>
		<label for="cbPerfil">Perfil</label>
		<g:select name="perfilUsuario" 
			id="cbPerfil"
			from="${netuno.administracao.PerfilUsuario.list()}"
			keys="${netuno.administracao.PerfilUsuario.list()*.authority}"
			style="width: 170px"
			/>
	</div>
	
	<div>
		<label for="ckAtivo">Ativo</label>
		<g:checkBox id="ckAtivo" name="enabled" value="${instance?.enabled}"/>
	</div>
	
	<input type="hidden" name="id" value="${instance?.id}" />

	<sol:toolBarSalvar idForm="formUsuario" controller="usuario" />

</form>