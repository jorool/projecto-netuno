<%@ page import="netuno.administracao.Cidade" %>

<h3 class="ui-state-default">Cadastro de cidade</h3>

<sol:mensagens bean="${instance}" />

<form id="formCidade">

	<div class="fm-req">
		<label for="txtNome">Nome</label> 
		<input name="nome" id="txtNome" type="text" class="required" value="${instance?.nome}"/>
	</div>
	
	<div class="fm-req">
		<label for="txtEstado">Estado</label>
		<sol:autocomplete controller="estado" id="txtEstado" name="estado.id" classeCss="required" searchField="nome" value="${instance?.estado}"/> 
	</div>
	
	<div>
		<label for="txtCodigoIbge">Código IBGE</label> 
		<input name="codigoIBGE" id="txtCodigoIbge" type="text" value="${instance?.codigoIBGE}"/>
	</div>

	<input type="hidden" name="id" value="${instance?.id}" />

	<sol:toolBarSalvar idForm="formCidade" controller="cidade" />
	
	<g:if test="${instance?.id}">
		<sol:historico modelo="Cidade" idEntidade="${instance?.id}"/>		
	</g:if>
</form>