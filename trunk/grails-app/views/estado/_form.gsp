<%@ page import="netuno.administracao.Estado" %>

<h2 class="ui-state-default">Cadastro de Estado</h2>

<sol:mensagens />

<form id="formEstado">


	<div class="fm-req">
		<label for="txtCodigoIbge">Código IBGE</label> 
		<input name="codigoIBGE" id="txtCodigoIbge" type="text" class="required" value="${instance?.codigoIBGE}"/>
	</div>
	<div class="fm-req">
		<label for="txtSigla">Sigla</label> 
		<input name="sigla" id="txtSigla" type="text" class="required" value="${instance?.sigla}"/>
	</div>
	<div class="fm-req">
		<label for="txtNome">Nome</label> 
		<input name="nome" id="txtNome" type="text" class="required" value="${instance?.nome}"/>
	</div>
	<div class="fm-req">
		<label for="txtPais">Pais</label>
		<sol:autocomplete controller="pais" id="txtPais" name="pais.id" classeCss="required" searchField="nome"/> 
	</div>
	
	<input type="hidden" name="id" value="${instance?.id}" />

	<sol:toolBarSalvar idForm="formEstado" controller="estado" />
</form>
