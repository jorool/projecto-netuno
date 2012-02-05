<%@page import="netuno.estoque.EntradaSaida"%>
<%@page import="netuno.estoque.TipoMovimento" %>

<h2 class="ui-state-default">Cadastro de Tipo de movimento</h2>

<sol:mensagens />

<form id="formTipoMovimento">

	<div class="fm-req">
		<label for="txtNome">Nome</label> 
		<input name="nome" id="txtNome" type="text" class="required" value="${instance?.nome}"/>
	</div>

	<div>
		<label for="txtDescricao">Descrição</label> 
		<input name="descricao" id="txtDescricao" type="text" value="${instance?.nome}"/>
	</div>
	
	<div class="fm-req">
		<label for="cbTipo">Tipo</label>
		<g:select name="tipo" from="${netuno.estoque.EntradaSaida.values()}" keys="${netuno.estoque.EntradaSaida.values()*.name()}" />
	</div>
	
	<input type="hidden" name="id" value="${instance?.id}" />

	<sol:toolBarSalvar idForm="formTipoMovimento" controller="tipoMovimento" />

</form>