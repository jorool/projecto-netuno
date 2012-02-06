<%@ page import="netuno.administracao.Pais" %>

<h2 class="ui-state-default">Cadastro de país</h2>

<sol:mensagens />

<form id="formPais">


	<div class="fm-req">
		<label for="txtCodigoIbge">Código IBGE</label> 
		<input name="codigoIBGE" id="txtCodigoIbge" type="text" class="required" value="${instance?.codigoIBGE}"/>
	</div>
	<div class="fm-req">
		<label for="txtNome">Nome</label> 
		<input name="nome" id="txtNome" type="text" class="required" value="${instance?.nome}"/>
	</div>
	
	<input type="hidden" name="id" value="${instance?.id}" />

	<sol:toolBarSalvar idForm="formPais" controller="pais" />
</form>
