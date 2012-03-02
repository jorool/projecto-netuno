<h3 class="ui-state-default">Listagem de Movimentos</h3>

<sol:toolBarEdicaoGrid controller="movimento" idGrid="gridMovimento" />

<sol:mensagens />

<sol:jgrid id="gridMovimento" modelo="netuno.estoque.Movimento">
	<sol:column name="codigo" label="Código" width="70" />
	<sol:column name="data" label="Data" width="80" />
	<sol:column name="tipoMovimento.nome" label="Tipo" width="100" />
	<sol:column name="clienteFornecedor.nome" label="Cliente/Fornecedor" width="300" />
</sol:jgrid>

