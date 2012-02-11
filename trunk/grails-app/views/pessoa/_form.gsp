<%@page import="netuno.administracao.TipoPessoa"%>
<%@page import="netuno.administracao.Pessoa" %>

<g:javascript src="jquery/jquery.maskedinput-1.3.min.js" />
<script type="text/javascript">
	jQuery(function($){
		   $("#txtTelefone").mask("(99) 9999-9999");
		   $("#txtCelular").mask("(99) 9999-9999");
		   $("#txtFax").mask("(99) 9999-9999");
		});
</script>

<h3 class="ui-state-default">Cadastro de Cliente/Fornecedor</h3>

<sol:mensagens bean="${instance}" />

<form id="formPessoa">

	<div class="fm-req">
		<label for="txtNome">Nome</label> 
		<input name="nome" id="txtNome" type="text" class="required" value="${instance?.nome}" style="width: 300px"/>
	</div>
	<div>
		<label for="txtTelefone">Telefone</label>
		<input name="telefone" id="txtTelefone" type="text" value="${instance?.telefone}" style="width: 100px"/>
	</div>
		<label for="txtCelular">Celular</label>
		<input name="celular" id="txtCelular" type="text" value="${instance?.celular}" style="width: 100px"/>
	<div>
	</div>
	<div>
		<label for="txtFax">Fax</label>
		<input name="fax" id="txtFax" type="text" value="${instance?.fax}" style="width: 100px"/>
	</div>
	<div class="fm-req">
		<label for="cbTipoPessoa">Tipo</label>
		<g:select name="tipoPessoa" 
			from="${netuno.administracao.TipoPessoa.values()}" 
			keys="${netuno.administracao.TipoPessoa.values()*.name()}" 
			style="width: 100px"
			value="${instance?.tipoPessoa?.name()}"/>
	</div>

	<input type="hidden" name="id" value="${instance?.id}" />

	<sol:toolBarSalvar idForm="formPessoa" controller="pessoa" />
	
	<g:if test="${instance?.id}">
		<sol:historico modelo="Pessoa" idEntidade="${instance?.id}"/>		
	</g:if>
</form>
