<%@ page import="netuno.administracao.Cidade" %>

<h2 class="ui-state-default">Cadastro de Cidade</h2>

<sol:mensagens />

<form id="formCidade">

	<div class="fm-req">
		<label for="txtNome">Nome</label> 
		<input name="nome" id="txtNome" type="text" class="required" value="${instance?.nome}"/>
	</div>
	
	<div class="fm-req">
		<label for="txtEstado">Estado</label>
		<sol:autocomplete controller="estado" id="txtEstado" name="estado.id" classeCss="required" searchField="nome"/> 
	</div>
	
	<div>
		<label for="txtCodigoIbge">Código IBGE</label> 
		<input name="codigoIBGE" id="txtCodigoIbge" type="text" value="${instance?.codigoIBGE}"/>
	</div>

	<input type="hidden" name="id" value="${instance?.id}" />

	<sol:toolBarSalvar idForm="formCidade" controller="cidade" />
</form>