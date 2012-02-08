


<script type="text/javascript">
	$(function(){

		$("#listHistorico").jqGrid({
			url:'${g.createLink(controller:'jqgrid', action:'historico')}?modelo=${attrs.modelo}&idEntidade=${attrs.idEntidade}',
			datatype:'json',
			colNames:['Usuário', 'Tipo Operação', 'Data Operação'],
			colModel:[
					{name:'usuario',index:'usuario.username', width:200, sortable:false},
					{name:'tipoOperacao', index:'tipoOperacao', width:200, sortable:false},
					{name:'dataOperacao', index:'dataOperacao', width:200, sortable:false}
			],
			rowNum:10,
			rowList:[10,20,30],
			pager:"#pageHistorico",
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
			   },
			  subGrid:true,
			  subGridUrl: '${g.createLink(controller:'jqgrid', action:'historicoDetalhe')}',
			  subGridModel: [{ name : ['Campo', 'Valor Anterior', 'Valor Novo'],
				  				width: [200, 200, 200]}]
			});
		
		});
</script>


<table id="listHistorico"></table>
<div id="pageHistorico"></div>