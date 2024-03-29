<%@ page import="netuno.estoque.TipoProduto" %>

<h2 class="ui-state-default">Cadastro de tipo de produto</h2>

<sol:mensagens bean="${instance}" />

<form id="formTipoProduto">

	<div class="fm-req">
		<label for="txtNome">Nome</label> 
		<input name="nome" id="txtNome" type="text" class="required" value="${instance?.nome}"/>
	</div>

	<div>
		<label for="txtDescricao">Descrição</label> 
		<input name="descricao" id="txtDescricao" type="text" value="${instance?.nome}"/>
	</div>
	
	<input type="hidden" name="id" value="${instance?.id}" />

	<sol:toolBarSalvar idForm="formTipoProduto" controller="tipoProduto" />

</form>