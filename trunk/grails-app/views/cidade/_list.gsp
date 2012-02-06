<h2 class="ui-state-default">Listagem de cidade</h2>

<sol:toolBarEdicaoGrid controller="cidade" idGrid="gridCidade" />

<sol:mensagens />

<sol:jgrid id="gridCidade" modelo="netuno.administracao.Cidade">
	<sol:column name="codigoIBGE" label="Código IBGE" width="100" />
	<sol:column name="nome" label="Nome" width="300" />
	<sol:column name="estado.nome" label="Estado" width="100" />
	<sol:column name="estado.pais.nome" label="País" width="100" />
</sol:jgrid>