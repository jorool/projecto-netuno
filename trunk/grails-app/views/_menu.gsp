<script type="text/javascript">
	$(function(){
			$("#menu").accordion();
		});
</script>

<div id="menu">
	<h3><a href="#">Administração</a></h3>
	<div>
		<%-- conteudo administracao --%>
		
		<a href="#" onclick="criarTab('pais/list', 'Pais'); return false;">Pais</a>
		
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