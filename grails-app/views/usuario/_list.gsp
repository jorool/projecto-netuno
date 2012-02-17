<h3 class="ui-state-default">Listagem de Usuários</h3>

<sol:toolBarEdicaoGrid controller="usuario" idGrid="gridUsuario" />

<sol:mensagens />

<sol:jgrid id="gridUsuario" modelo="netuno.administracao.Usuario">
	<sol:column name="username" label="Login" width="200" />
<%--	<sol:column name="" label="Perfil" width="200" />--%>
	<sol:column name="enabled" label="Ativo" width="70" />
</sol:jgrid>