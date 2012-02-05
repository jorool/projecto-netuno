<h2 class="ui-state-default">Listagem de Tipo de movimento</h2>

<sol:toolBarEdicaoGrid controller="tipoMovimento" idGrid="gridTipoMovimento" />

<sol:mensagens />

<sol:jgrid id="gridTipoMovimento" modelo="netuno.estoque.TipoMovimento">
	<sol:column name="nome" label="Nome" width="150" />
	<sol:column name="descricao" label="Descrição" width="300" />
	<sol:column name="tipo.nome" label="Tipo" width="100" />
</sol:jgrid>