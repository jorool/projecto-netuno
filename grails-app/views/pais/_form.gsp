<%@ page import="netuno.administracao.Pais" %>



<div class="fieldcontain ${hasErrors(bean: paisInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="pais.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${paisInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: paisInstance, field: 'codigoIBGE', 'error')} ">
	<label for="codigoIBGE">
		<g:message code="pais.codigoIBGE.label" default="Codigo IBGE" />
		
	</label>
	<g:textField name="codigoIBGE" value="${paisInstance?.codigoIBGE}"/>
</div>

