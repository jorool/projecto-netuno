function mudaPagina(data){
	var timeout = 500;
	
	$("#conteudo").hide(timeout, function() {
		$("#conteudo").html(data);
		$("#conteudo").show(timeout);
	});
	
		
}

