
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

function mostraMensagemErro(id, mensagem){
	
	var classErro = "msg_erro";
	
	limparMensagens();
	
	var msg = criaMensagemErro(mensagem, classErro);
	
	$(msg).prependTo("#" + id).hide().show(300).effect("highlight", {}, 1000);
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
	var classeInfo = "msg_info";
	
	limparMensagens();
	
	var msg = criaMensagemInfo(mensagem, classeInfo);
	
	$(msg).prependTo("#" + id).hide().show(300);
}

function limparMensagens(){
	var classeInfo = "msg_info";
	
	$("." + classeInfo).hide();
	
	var classErro = "msg_erro";
	
	$("." + classErro).hide();
}
