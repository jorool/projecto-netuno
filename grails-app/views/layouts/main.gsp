<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title><g:layoutTitle default="Grails" /></title>

<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'jquery-ui-1.8.17.custom.css')}"
	type="text/css">
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'aplicacao.css')}" type="text/css">
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'ui.jqgrid.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'forms.css')}"
	type="text/css">


<g:javascript library="jquery" />


<g:layoutHead />
<r:layoutResources />


<g:javascript src="jgrid/grid.locale-pt-br.js" />
<g:javascript src="jgrid/jquery.jqGrid.min.js" />
<g:javascript src="jquery/jquery-ui-1.8.17.custom.min.js" />
<g:javascript src="mensagens.js" />
<g:javascript src="ajax.js" />
<g:javascript src="validator/jquery.validate.min.js" />
<g:javascript src="validator/messages_ptbr.js" />


</head>
<body>
	<g:layoutBody />
	<div id="spinner" class="spinner" style="display: none;">
		<g:message code="spinner.alt" default="Loading&hellip;" />
	</div>
	<g:javascript library="application" />
	<r:layoutResources />
</body>
</html>