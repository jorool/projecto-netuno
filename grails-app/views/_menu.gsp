<script type="text/javascript">
	$(function(){
			$("#menu").accordion();
		});
</script>

<div id="menu">
	<h3><a href="#">Cadastros</a></h3>
	<div>
		<h4>Administrativos</h4>
		<%-- conteudo administracao --%>
		<a href="#" onclick="criarTab('pais/list', 'Pais'); return false;">Pais</a><br>
		<a href="#" onclick="criarTab('pais/list', 'Pais'); return false;">Pais</a><br>
		<a href="#" onclick="criarTab('pais/list', 'Pais'); return false;">Pais</a><br>
		<a href="#" onclick="criarTab('pais/list', 'Pais'); return false;">Pais</a><br>
		<h4>Estoque</h4>
		<a href="#" onclick="criarTab('pais/list', 'Pais'); return false;">Pais</a><br>
		<a href="#" onclick="criarTab('pais/list', 'Pais'); return false;">Pais</a><br>
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