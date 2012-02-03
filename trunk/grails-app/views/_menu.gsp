<script type="text/javascript">
	$(function(){
			$("#menu").accordion({
				collapsible: true
			});
		});
</script>

<div id="menu">
	<h3><a href="#">Cadastros</a></h3>
	<div>
		<h4>Administrativos</h4>
		<%-- conteudo administracao --%>
		<a href="#" onclick="criarTab('pessoa/', 'Pessoa'); return false;">Cliente/Fornecedor</a><br>
		<a href="#" onclick="criarTab('pais/', 'Pais'); return false;">País</a><br>
		<a href="#" onclick="criarTab('estado/', 'Estado'); return false;">Estado</a><br>
		<h4>Estoque</h4>
	</div>
	
	<h3><a href="#">Estoque</a></h3>
	<div>
		<%-- conteudo Estoque --%>
	</div>
	
	<h3><a href="#">Mais Menu</a></h3>
	<div>
		<%-- conteudo Mais Menu --%>
	</div>
	
</div>