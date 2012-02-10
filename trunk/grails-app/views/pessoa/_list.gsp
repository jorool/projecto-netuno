<h3 class="ui-state-default">Listagem de Cliente/Fornecedor</h3>

<sol:toolBarEdicaoGrid controller="pessoa" idGrid="gridPessoa" />

<sol:mensagens />

<sol:jgrid id="gridPessoa" modelo="netuno.administracao.Pessoa">
	<sol:column name="nome" label="Nome" width="300" />
	<sol:column name="telefone" label="Telefone" width="100" />
	<sol:column name="celular" label="Celular" width="100" />
	<sol:column name="tipoPessoa.nome" label="Tipo" width="80" />
</sol:jgrid>

