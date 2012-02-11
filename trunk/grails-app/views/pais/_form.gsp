<%@ page import="netuno.administracao.Pais" %>

<h3 class="ui-state-default">Cadastro de País</h3>

<sol:mensagens bean="${instance}" />
				
<form id="formPais">
	<div>
		<label for="txtCodigoIbge">Código IBGE</label> 
		<input name="codigoIBGE" id="txtCodigoIbge" type="text" value="${instance?.codigoIBGE}"/>
	</div>
	<div class="fm-req">
		<label for="txtNome">Nome</label> 
		<input name="nome" id="txtNome" type="text" class="required" value="${instance?.nome}"/>
	</div>
	
	<input type="hidden" name="id" value="${instance?.id}" />

	<sol:toolBarSalvar idForm="formPais" controller="pais" />
	
	<g:if test="${instance?.id}">
		<sol:historico modelo="Pais" idEntidade="${instance?.id}"/>		
	</g:if>
</form>
