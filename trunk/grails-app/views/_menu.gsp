<script type="text/javascript">
	$(function(){
			$("#menu").accordion({
				collapsible: true
			});
		});
</script>

<div id="menu">
	<h3><a href="#">Administrativo</a></h3>
	<div>
		<a href="#" onclick="criarTab('pessoa/', 'Cliente/Fornecedor'); return false;">Cliente/Fornecedor</a><br>
		<a href="#" onclick="criarTab('cidade/', 'Cidade'); return false;">Cidade</a><br>
		<a href="#" onclick="criarTab('estado/', 'Estado'); return false;">Estado</a><br>
		<a href="#" onclick="criarTab('pais/', 'País'); return false;">País</a><br>
		<a href="#" onclick="criarTab('usuario/', 'Usuário'); return false;">Usuário</a><br>
	</div>
	
	<h3><a href="#">Estoque</a></h3>
	<div>
		<a href="#" onclick="criarTab('produto/', 'Produto'); return false;">Produto</a><br>
		<a href="#" onclick="criarTab('tipoProduto/', 'Tipo de produto'); return false;">Tipo de produto</a><br>
		<a href="#" onclick="criarTab('tipoMovimento/', 'Tipo de movimento'); return false;">Tipo de movimento</a><br>
	</div>
	
	<h3><a href="#">Configurações</a></h3>
	<div>
		<%-- conteudo Mais Menu --%>
	</div>
	
</div>