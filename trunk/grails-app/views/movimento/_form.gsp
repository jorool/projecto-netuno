<%@page import="netuno.estoque.TipoMovimento"%>
<%@page import="netuno.estoque.Movimento"%>

<g:javascript src="jquery/jquery.maskedinput-1.3.min.js" />

<h3 class="ui-state-default">Cadastro de Movimento</h3>

<sol:mensagens bean="${instance}" />

<form id="formMovimento">

	<div class="fm-req">
		<label for="txtCodigo">Código</label> 
		<input name="codigo" id="txtCodigo" type="text" class="required" value="${instance?.codigo}"/>
	</div>
	
	<div class="fm-req">
		<label for="txtData">Data</label> 
		<input name="data" id="txtData" type="text" class="required" value="${instance?.data}"/>
	</div>

	<div class="fm-req">
		<label for="txtClienteFornecedor">Cliente/Fornecedor</label>
		<sol:autocomplete controller="pessoa" id="txtClienteFornecedor" name="pessoa.id" classeCss="required" searchField="nome" value="${instance?.clienteFornecedor}"/> 
	</div>
	
	<div class="fm-req">
			<label for="txtTipoMovimento">Tipo</label>

			<g:select name="txtTipoMovimento"
				from="${netuno.estoque.TipoMovimento.list()}"
				keys="${netuno.estoque.TipoMovimento.list()*.nome}"
				style="width: 100px" value="${movimento?.tipoMovimento}" />
		</div>
	
	<div class="fm-req">
		<label for="txtUsuario">Usuário</label> 
		<input name="usuario" id="txtUsuario" type="text" class="required" value="${instance?.usuario}"/>
	</div>

	<div class="fm-req">
		<label for="txtValorTotal">Valor total</label> 
		<input name="valorTotal" id="txtValorTotal" type="text" class="required" value="${instance?.valorTotal}"/>
	</div>

	<div class="fm-req">
		<label for="txtValorDesconto">Valor desconto</label> 
		<input name="valorDesconto" id="txtValorDesconto" type="text" class="required" value="${instance?.valorDesconto}"/>
	</div>

	<div id="itens">
		<h4 class="ui-state-default">Itens</h4>
		
		<div class="fm-req">
			<label for="txtProduto">Produto</label>
			<sol:autocomplete controller="produto" id="txtProduto" name="produto.id" classeCss="required" searchField="nome"/> 
		</div>
		
		<div class="fm-req">
			<label for="txtQuantidadeItem">Quantidade</label> 
			<input id="txtQuantidadeItem" type="text" class="required"/>
		</div>
		
		<div class="fm-req">
			<label for="txtValorUnitario">Valor unitário</label> 
			<input id="txtValorUnitario" type="text" class="required"/>
		</div>
		
		<div class="fm-req">
			<label for="txtValorDescontoItem">Valor desconto</label> 
			<input id="txtValorDescontoItem" type="text" class="required"/>
		</div>
		
		<sol:jgrid id="gridItens" modelo="netuno.estoque.ItemMovimento">
			<sol:column name="produto.Nome" label="Produto" width="250" />
			<sol:column name="quantidade" label="Quantidade" width="80" />
			<sol:column name="valorUnitario" label="Valor" width="100" />
		</sol:jgrid>
	</div>

	<input type="hidden" name="id" value="${instance?.id}" />

	<sol:toolBarSalvar idForm="formMovimento" controller="movimento" />
	
<%--	<g:if test="${instance?.id}">--%>
<%--		<sol:historico modelo="Movimento" idEntidade="${instance?.id}"/>		--%>
<%--	</g:if>--%>
</form>