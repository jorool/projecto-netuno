<%@page import="netuno.administracao.TipoPessoa"%>
<%@page import="netuno.administracao.Pessoa" %>

<h2 class="ui-state-default">Cadastro de Cliente/Fornecedor</h2>

<sol:mensagens />

<form id="formPessoa">

	<div class="fm-req">
		<label for="txtNome">Código</label> 
		<input name="codigo" id="txtCodigo" type="text" class="required" value="${instance?.codigo}"/>
	</div>
	<div class="fm-req">
		<label for="txtNome">Nome</label> 
		<input name="nome" id="txtNome" type="text" class="required" value="${instance?.nome}"/>
	</div>
	<div class="fm-req">
		<label for="txtTelefone">Telefone</label>
		<input name="telefone" id="txtTelefone" type="text" class="required" value="${instance?.telefone}"/>
	</div>
	<div class="fm-req">
		<label for="txtCelular">Celular</label>
		<input name="celular" id="txtCelular" type="text" class="required" value="${instance?.celular}"/>
	</div>
	<div class="fm-req">
		<label for="txtFax">Fax</label>
		<input name="fax" id="txtFax" type="text" class="required" value="${instance?.fax}"/>
	</div>
	<div class="fm-req">
		<label for="cbTipoPessoa">Tipo</label>
		<g:select name="tipoPessoa" from="${netuno.administracao.TipoPessoa.values()}" keys="${netuno.administracao.TipoPessoa.values()*.name()}" />
	</div>

	<input type="hidden" name="id" value="${instance?.id}" />

	<sol:toolBarSalvar idForm="formPessoa" controller="pessoa" />
</form>
