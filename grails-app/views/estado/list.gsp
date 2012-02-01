
<%@ page import="netuno.administracao.Estado" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'estado.label', default: 'Estado')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		
	
	</style>
	</head>
	<body>
	
			<sol:toolBarEdicaoGrid controller="estado" idGrid="gridEstado" />
			
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			<sol:jgrid id="gridEstado" modelo="netuno.administracao.Estado">
				<sol:column name="codigoIBGE" label="Código IBGE" width="100" />
				<sol:column name="nome" label="Nome" width="300" />
				<sol:column name="sigla" label="Sigla" width="60" />
				<sol:column name="pais.nome" label="País" width="70" />
			</sol:jgrid>
			
		</div>
	</body>
</html>
