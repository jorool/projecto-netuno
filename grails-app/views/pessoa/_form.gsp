<%@ page import="projecto.netuno.administracao.Pessoa" %>



<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'codigo', 'error')} required">
	<label for="codigo">
		<g:message code="pessoa.codigo.label" default="Codigo" />
		<span class="required-indicator">*</span>