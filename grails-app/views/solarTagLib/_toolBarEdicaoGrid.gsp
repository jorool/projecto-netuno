

<script type="text/javascript">
			function editar(){
				var id = $("#${attrs.idGrid}").jqGrid('getGridParam', 'selrow');
				if(id){
					return {id:id };
				}else{
					mostraMensagemErro("${attrs.idGrid}_erro", "Selecione um item para editar");
				}

				return false;
			}

			function excluir(){
				var id = $("#${attrs.idGrid}").jqGrid('getGridParam', 'selrow');
				if(id){
					return {id: id};
				}else{
					mostraMensagemErro("${attrs.idGrid}_erro", "Selecione um item para excluir");
				}

				return false;
			}

			function posExcluir(data){
				var ev = eval('(' + data + ')');
				if(ev.success){
					mostraMensagemInfo("${attrs.idGrid}_erro", ev.msg);
					$("#${attrs.idGrid}").trigger("reloadGrid");
				}else{
					mostraMensagemErro("${attrs.idGrid}_erro", ev.msg);
				}
				
			}

</script>

<sol:button  id="${attrs.idGrid}_btnCreate" controller="${attrs.controller}" action="create" icon="ui-icon-novo" ajax="true" method="GET" onAjaxSuccess="mudaPagina">Novo</sol:button>
<sol:button id="${attrs.idGrid}_btnEditar" onclick="editar()" controller="${attrs.controller}" action="edit" icon="ui-icon-editar">Editar</sol:button>
<sol:button id="${attrs.idGrid}_btnExcluir" onclick="excluir()" ajax="true" method="POST" 
				controller="${attrs.controller}" action="delete" onAjaxSuccess="posExcluir" icon="ui-icon-excluir">Excluir</sol:button>
				
<div id="${attrs.idGrid}_erro" ></div>
		