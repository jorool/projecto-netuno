<h3 class="ui-state-default">Listagem de Estado</h3>

<sol:toolBarEdicaoGrid controller="estado" idGrid="gridEstado" />

<sol:mensagens />

<sol:jgrid id="gridEstado" modelo="netuno.administracao.Estado">
	<sol:column name="codigoIBGE" label="Código IBGE" width="100" />
	<sol:column name="nome" label="Descrição" width="300" />
	<sol:column name="sigla" label="Sigla" width="50" />
	<sol:column name="pais.nome" label="País" width="100" />
</sol:jgrid>

