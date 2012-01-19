
<%@ page import="projecto.netuno.administracao.Pessoa" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pessoa.label', default: 'Pessoa')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-pessoa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pessoa" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pessoa">
			
				<g:if test="${pessoaInstance?.codigo}">
				<li class="fieldcontain">
					<span id="codigo-label" class="property-label"><g:message code="pessoa.codigo.label" default="Codigo" /></span>
					
						<span class="property-value" aria-labelledby="codigo-label"><g:fieldValue bean="${pessoaInstance}" field="codigo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="pessoa.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${pessoaInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.celular}">
				<li class="fieldcontain">
					<span id="celular-label" class="property-label"><g:message code="pessoa.celular.label" default="Celular" /></span>
					
						<span class="property-value" aria-labelledby="celular-label"><g:fieldValue bean="${pessoaInstance}" field="celular"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.enderecos}">
				<li class="fieldcontain">
					<span id="enderecos-label" class="property-label"><g:message code="pessoa.enderecos.label" default="Enderecos" /></span>
					
						<g:each in="${pessoaInstance.enderecos}" var="e">
						<span class="property-value" aria-labelledby="enderecos-label"><g:link controller="endereco" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.fax}">
				<li class="fieldcontain">
					<span id="fax-label" class="property-label"><g:message code="pessoa.fax.label" default="Fax" /></span>
					
						<span class="property-value" aria-labelledby="fax-label"><g:fieldValue bean="${pessoaInstance}" field="fax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.telefone}">
				<li class="fieldcontain">
					<span id="telefone-label" class="property-label"><g:message code="pessoa.telefone.label" default="Telefone" /></span>
					
						<span class="property-value" aria-labelledby="telefone-label"><g:fieldValue bean="${pessoaInstance}" field="telefone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pessoaInstance?.tipoPessoa}">
				<li class="fieldcontain">
					<span id="tipoPessoa-label" class="property-label"><g:message code="pessoa.tipoPessoa.label" default="Tipo Pessoa" /></span>
					
						<span class="property-value" aria-labelledby="tipoPessoa-label"><g:fieldValue bean="${pessoaInstance}" field="tipoPessoa"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${pessoaInstance?.id}" />
					<g:link class="edit" action="edit" id="${pessoaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
