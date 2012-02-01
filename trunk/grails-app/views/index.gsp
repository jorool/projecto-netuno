<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
  <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt-br">
  <head>
	  <meta http-equiv="Content-Type" content="text/html; utf-8" />
	  <title>Projecto Netuno</title>
	  
	  
	  
	  <g:javascript library="jquery" />
	  
	  <r:layoutResources />
	  
	  
	  <g:javascript src="jquery-ui-1.8.17.custom.min.js" />
	  <g:javascript src="tab.js" />
	  
	  
	  
	  <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery-ui-1.8.17.custom.css')}" type="text/css" />
	  <link rel="stylesheet" href="${resource(dir: 'css', file: 'ui.jqgrid.css')}" type="text/css" />
	  
	  <link rel="stylesheet" href="${resource(dir: 'css', file: 'layout.css')}" type="text/css" />
	  <link rel="stylesheet" href="${resource(dir: 'css', file: 'aplicacao.css')}" type="text/css" />
	  
	  <script type="text/javascript">
		$(function(){

			var wDoc = $(document).width();
			var wAux = $("#auxiliar").width();
			$("#principal").width(wDoc - wAux - 50);
			
		});
	  </script>
	  
  </head>
	<body>
	<div id="tudo" >
  
  <div id="topo"></div>
  
  <div id="conteudo">
	<div id="principal">
	
	    <div id="tabs">
			<ul>
				
			</ul>
		</div>
</div>

    </div>
  
	<div id="auxiliar">
  		<g:render template="menu" contextPath="/" />
    </div>
    <div id="clear"></div>
  </div> <!-- Fim div#conteudo -->
  
  <div id="rodape"></div>

</div> <!-- Fim div#tudo -->
</body>
 </html>