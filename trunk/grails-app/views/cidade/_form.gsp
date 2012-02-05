<%@ page import="netuno.administracao.Cidade" %>



<div class="fieldcontain ${hasErrors(bean: cidadeInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="cidade.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${cidadeInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cidadeInstance, field: 'codigoIBGE', 'error')} required">
	<label for="codigoIBGE">
		<g:message code="cidade.codigoIBGE.label" default="Codigo IBGE" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="codigoIBGE" required="" value="${cidadeInstance?.codigoIBGE}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cidadeInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="cidade.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="estado" name="estado.id" from="${netuno.administracao.Estado.list()}" optionKey="id" required="" value="${cidadeInstance?.estado?.id}" class="many-to-one"/>
</div>

