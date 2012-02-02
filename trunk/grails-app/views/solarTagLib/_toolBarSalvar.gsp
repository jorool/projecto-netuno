<script type="text/javascript">
function onSalvar(){


	if(!$("#${attrs.idForm}").valid()){
		return false;
	}
	

	
	return $("#${attrs.idForm}").serialize();
}

$(function(){
	$("#${attrs.idForm}").validate({
			errorPlacement: function(error, element){
				//error.appendTo($("<br />").appendTo(element));
				element.after(error).after("<br />");
				var pos = element.position();
				error.css("margin-left", pos.left);
			}
		});
});
</script>

<sol:button id="btnSalvar" controller="${attrs.controller}" ajax="true" method="POST" action="save" onclick="onSalvar()" onAjaxSuccess="mudaPagina" icon="ui-icon-salvar">Salvar</sol:button>
<sol:button id="btnCancelar" controller="${attrs.controller}" ajax="true" method="GET" action="list" onAjaxSuccess="mudaPagina" icon="ui-icon-cancelar">Cancelar</sol:button>
