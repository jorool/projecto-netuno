

<%--<g:javascript src="jgrid/jquery.jqGrid.src.js" />--%>
<script type="text/javascript">
$(function(){
	$('#${attrs.id}').jqGrid({
			url: '${g.createLink(controller:'jqgrid', action:'list')}?modelo=${attrs.modelo}&colunas=${colArgs}',
			datatype: 'json',			
			${colNames}
			${colModel}
			rowNum: 10,
			rowList: [10, 20, 30],
			height: 230,
			width: 600,
			pager: '${attrs.id}_pager',
			sortname: 'id',
			viewrecords: true,
			sortorder: 'desc',
			caption: '${attrs.titulo}',
			 jsonReader : {
			      root:"rows",
			      page: "page",
			      total: "total",
			      records: "records",
			      repeatitems: false,
			      id: "id"
			   },
			
		});
	$('#${attrs.id}').jqGrid('navGrid', '#${attrs.id}_pager', {edit:false, add:false, del:false});
});
</script>

<table id='${attrs.id}' ></table>
<div id='${attrs.id}_pager'></div>