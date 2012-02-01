
function criaMensagemErro(mensagem, classErro){
	var erro = '<div class="ui-state-error ';
	erro += classErro;
	erro += ' ui-corner-all" style="padding: 0 .7em;" >';
	erro += '<p><span class="ui-icon ui-icon-alert" style="float:left; margin-right: .3em;"></span>';
	erro += '<strong> Atenção: </strong> ';
	erro += mensagem;
	erro += '</p></div>';
	
	return erro;
}

function mostraMensagemErroEmGrid(idGrid, mensagem){
	
	var classErro = idGrid + "_msg_erro";
	
	limparMensagens();
	
	var msg = criaMensagemErro(mensagem, classErro);
	
	$(msg).prependTo("#gbox_" + idGrid).hide().show(300).effect("highlight", {}, 1000);
}

function criaMensagemInfo(mensagem, classInfo){
	var msg = '<div class="ui-state-highlight ';
	msg += classInfo;
	msg += ' ui-corner-all" style="padding: 0 .7em;" >';
	msg += '<p><span class="ui-icon ui-icon-info" style="float:left; margin-right: .3em;"></span>';
	msg += mensagem;
	msg += '</p></div>';
	
	return msg;
}

function mostraMensagemInfo(id, mensagem){
	var classeInfo = id + "_msg_info";
	
	limparMensagens(id);
	
	var msg = criaMensagemInfo(mensagem, classeInfo);
	
	$(msg).prependTo("#gbox_" + id).hide().show(300);
}

function limparMensagens(id){
	var classeInfo = id + "_msg_info";
	
	$("." + classeInfo).hide();
	
	var classErro = id + "_msg_erro";
	
	$("." + classErro).hide();
}
