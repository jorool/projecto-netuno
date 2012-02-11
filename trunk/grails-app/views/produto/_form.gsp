<%@page import="netuno.estoque.Produto" %>

<g:javascript src="jquery/jquery.price_format.1.6.min.js" />

<h3 class="ui-state-default">Cadastro de Produto</h3>

<sol:mensagens bean="${instance}" />

<script type="text/javascript">
	$('#txtValorUnitario').priceFormat({
		prefix: 'R$ ',
		centsSeparator: ',',
		thousandsSeparator: '.'
	});
</script>

<form id="formProduto">

	<div class="fm-req">
		<label for="txtCodigo">Código</label> 
		<input name="codigo" id="txtCodigo" type="text" class="required" value="${instance?.codigo}"/>
	</div>
	
	<div class="fm-req">
		<label for="txtNome">Nome</label> 
		<input name="nome" id="txtNome" type="text" class="required" value="${instance?.nome}"/>
	</div>
	
	<div>
		<label for="txtDescricao">Descrição</label> 
		<input name="descricao" id="txtDescricao" type="text" value="${instance?.descricao}"/>
	</div>
	
	<div class="fm-req">
		<label for="cbTipoProduto">Tipo</label>
		<sol:autocomplete controller="tipoProduto" id="txtTipoProduto" name="tipoProduto.id" classeCss="required" searchField="nome" value="${instance?.tipoProduto}"/>
	</div>
	
	<div class="fm-req">
		<label for="txtValorUnitario">Valor unitário</label> 
		<input name="valorUnitario" id="txtValorUnitario" type="text" value="${instance?.valorUnitario}" class="required"/>
	</div>

	<div class="fm-req">
		<label for="txtSaldoEstoqueFisico">Saldo de estoque físico</label> 
		<input name="saldoEstoqueFisico" id="txtSaldoEstoqueFisico" type="text" value="${instance?.saldoEstoqueFisico}" class="required" />
	</div>
	
	<input type="hidden" name="id" value="${instance?.id}" />

	<sol:toolBarSalvar idForm="formProduto" controller="produto" />
	
	<g:if test="${instance?.id}">
		<sol:historico modelo="Produto" idEntidade="${instance?.id}"/>		
	</g:if>
</form>