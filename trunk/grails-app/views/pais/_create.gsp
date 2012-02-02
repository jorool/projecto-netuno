<h2 class="ui-state-default">Cadastro de Pais</h2>

<sol:mensagens />

<form id="formPais">


	<div class="fm-req">
		<label for="txtCodigoIbge">Código IBGE</label> <input
			name="codigoIBGE" id="txtCodigoIbge" type="text" />
	</div>
	<div class="fm-req">
		<label for="txtNome">Nome</label> <input name="nome" id="txtNome"
			type="text" />
	</div>

	<sol:toolBarSalvar idForm="formPais" controller="pais" />
</form>
