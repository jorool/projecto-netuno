<%@page import="netuno.administracao.Endereco"%>

<script type="text/javascript">
	function salvarEndereco(){

		if(!$('#endereco').valid()){
			return false;
		}
		
		return $('#endereco').serialize();
	}

	function renderizarEndereco(data){
		$("#tabs-endereco").parent().html(data);
	}

	function editarEndereco(){
		var id = $("#listEnderecos").jqGrid('getGridParam', 'selrow');

		if(id){
			return {id:id};
		}else{
			mostraMensagemErro("listEnderecos_erro", "Selecione um endereço para editar");
			return false;
		}
	}

	function excluirEndereco(){
		var id = $("#listEnderecos").jqGrid('getGridParam', 'selrow');
		if(id){
			return {id: id};
		}else{
			mostraMensagemErro("listEnderecos_erro", "Selecione um endereço para excluir");
		}

		return false;
	}

	function posExcluir(data){
		var ev = eval('(' + data + ')');
		if(ev.success){
			mostraMensagemInfo("listEnderecos_erro", ev.msg);
			$("#listEnderecos").trigger("reloadGrid");
		}else{
			mostraMensagemErro("listEnderecos_erro", ev.msg);
		}
		
	}

	$(function(){

		$("#listEnderecos").jqGrid({
			url:'${g.createLink(controller:'pessoa', action:'listarEndereco')}?idPessoa=${idPessoa}',
			datatype:'json',
			colNames:['Endereço', 'Número', 'Bairro', 'Cep', 'Tipo', 'Cidade'],
			colModel:[
					{name:'endereco',index:'endereco', width:200, sortable:false},
					{name:'numero', index:'numero', width:50, sortable:false},
					{name:'bairro', index:'bairro', width:200, sortable:false},
					{name:'cep', index:'cep', width:100, sortable:false},
					{name:'tipoEndereco', index:'tipoEndereco', width:100, sortable:false},
					{name:'cidade', index:'cidade', width:200, sortable:false}
			],
			pager:"#pageEnderecos",
			sortname:'id',
			sortorder:'desc',
			viewrecords: true,
			 jsonReader : {
			      root:"rows",
			      page: "page",
			      total: "total",
			      records: "records",
			      repeatitems: false,
			      id: "id"
			   }
			 
			});
		
		});
</script>

	<div id="tabs-endereco">
	<sol:mensagens bean="${endereco}" />
	<form id="endereco">
		<div class="fm-req">
			<label for="txtEndereco">Endereço</label> <input name="endereco"
				id="txtEndereco" type="text" class="required" value="${endereco?.endereco}" />
		</div>
		<div>
			<label for="txtNumero">Número</label> <input name="numero"
				id="txtNumero" value="${endereco?.numero}"  />
		</div>
		<div class="fm-req">
			<label for="txtBairro">Bairro</label> <input name="bairro"
				id="txtBairro" value="${endereco?.bairro}" class="required" />
		</div>
		<div>
			<label for="txtCep">Cep</label> <input name="cep" id="txtCep"
				value="${endereco?.cep}" />
		</div>
		<div class="fm-req">
			<label for="txtTipoEndereco">Tipo</label>

			<g:select name="tipoEndereco"
				from="${netuno.administracao.TipoEndereco.values()}"
				keys="${netuno.administracao.TipoEndereco.values()*.name()}"
				style="width: 100px" value="${endereco?.tipoEndereco}" />
		</div>
		<div class="fm-req">
			<label for="txtCidade">Cidade</label>
			<sol:autocomplete controller="cidade" searchField="nome" name="cidade.id" classeCss="required"
				id="txtCidade" value="${endereco?.cidade}" />
 
		</div>
		<input type="hidden" name="pessoa.id" value="${idPessoa}" />
		<input type="hidden" name="id" value="${endereco?.id}" />
		
		<sol:button id="btnSalvarEndereco" controller="pessoa" action="salvarEndereco" 
		icon="ui-icon-salvar" onclick="salvarEndereco()" ajax="true" onAjaxSuccess="renderizarEndereco">Salvar</sol:button>
		<sol:button id="btnEditarEndereco" controller="pessoa" action="editarEndereco" 
		icon="ui-icon-editar" onclick="editarEndereco()" ajax="true" onAjaxSuccess="renderizarEndereco">Editar</sol:button>
		<sol:button id="btnExcluirEndereco" controller="pessoa" action="excluirEndereco" 
		icon="ui-icon-excluir" onclick="excluirEndereco()" ajax="true" onAjaxSuccess="posExcluir">Excluir</sol:button>
		
 		</form>
 		
 	

		<div id="listEnderecos_erro" ></div>
		<table id="listEnderecos"></table>
		<div id="pageEnderecos"></div>
</div>