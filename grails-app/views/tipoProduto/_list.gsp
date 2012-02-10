<h3 class="ui-state-default">Listagem de Tipo de produto</h3>

<sol:toolBarEdicaoGrid controller="tipoProduto" idGrid="gridTipoProduto" />

<sol:mensagens />

<sol:jgrid id="gridTipoProduto" modelo="netuno.estoque.TipoProduto">
	<sol:column name="nome" label="Nome" width="150" />
	<sol:column name="descricao" label="Descrição" width="300" />
</sol:jgrid>