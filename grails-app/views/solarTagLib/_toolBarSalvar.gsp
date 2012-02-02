<script type="text/javascript">
function onSalvar(){

	return $("#${attrs.idForm}").serialize();
}
</script>

<sol:button id="btnSalvar" controller="${attrs.controller}" ajax="true" method="POST" action="save" onclick="onSalvar()" onAjaxSuccess="mudaPagina" icon="ui-icon-salvar">Salvar</sol:button>
<sol:button id="btnCancelar" controller="${attrs.controller}" ajax="true" method="GET" action="list" onAjaxSuccess="mudaPagina" icon="ui-icon-cancelar">Cancelar</sol:button>
