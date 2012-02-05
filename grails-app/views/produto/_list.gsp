<h2 class="ui-state-default">Listagem de Produto</h2>

<sol:toolBarEdicaoGrid controller="produto" idGrid="gridProduto" />

<sol:mensagens />

<sol:jgrid id="gridProduto" modelo="netuno.estoque.Produto">
	<sol:column name="codigo" label="Código" width="100" />
	<sol:column name="nome" label="Nome" width="150" />
	<sol:column name="descricao" label="Descrição" width="300" />
	<sol:column name="valorUnitario" label="Valor unit." width="70" />
	<sol:column name="saldoEstoqueFisico" label="Saldo est." width="70" />
	<sol:column name="tipoProduto.nome" label="Tipo" width="70" />
</sol:jgrid>

