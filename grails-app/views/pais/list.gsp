
<%@ page import="netuno.administracao.Pais" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pais.label', default: 'Pais')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		
	
	</style>
	</head>
	<body>
	
<%--		<h3>Listagem de Pais</h3>--%>
			
			<sol:toolBarEdicaoGrid controller="pais" idGrid="gridPais" />
			
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			<sol:jgrid id="gridPais" modelo="netuno.administracao.Pais">
				<sol:column name="codigoIBGE" label="Código IBGE" width="100" />
				<sol:column name="nome" label="Nome" width="300" />
			</sol:jgrid>
			
		</div>
	</body>
</html>
