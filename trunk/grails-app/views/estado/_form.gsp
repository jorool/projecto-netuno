<%@ page import="netuno.administracao.Estado" %>



<div class="fieldcontain ${hasErrors(bean: estadoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="estado.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${estadoInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: estadoInstance, field: 'abreviacao', 'error')} required">
	<label for="abreviacao">
		<g:message code="estado.abreviacao.label" default="Abreviacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="abreviacao" required="" value="${estadoInstance?.abreviacao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: estadoInstance, field: 'codigoIBGE', 'error')} ">
	<label for="codigoIBGE">
		<g:message code="estado.codigoIBGE.label" default="Codigo IBGE" />
		
	</label>
	<g:textField name="codigoIBGE" value="${estadoInstance?.codigoIBGE}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: estadoInstance, field: 'pais', 'error')} required">
	<label for="pais">
		<g:message code="estado.pais.label" default="Pais" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="pais" name="pais.id" from="${netuno.administracao.Pais.list()}" optionKey="id" required="" value="${estadoInstance?.pais?.id}" class="many-to-one"/>
</div>

