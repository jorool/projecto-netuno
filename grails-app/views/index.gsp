<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt-br">
<head>
<meta http-equiv="Content-Type" content="text/html; utf-8" />
<title>Projecto Netuno</title>

<g:javascript library="jquery" />

<r:layoutResources />

<g:javascript src="jquery/jquery-ui-1.8.17.custom.min.js" />
<g:javascript src="tab.js" />
<g:javascript src="jLayout/jlayout.border.min.js" />
<g:javascript src="jLayout/jlayout.flexgrid.min.js" />
<g:javascript src="jLayout/jlayout.flow.min.js" />
<g:javascript src="jLayout/jlayout.grid.min.js" />
<g:javascript src="jquery/jquery.jlayout.min.js" />
<g:javascript src="jquery/jquery.sizes.min.js" />
<g:javascript src="jquery/jquery.metadata.js" />

<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'jquery-ui-1.8.17.custom.css')}" type="text/css" />
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'ui.jqgrid.css')}" type="text/css" />
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'layout.css')}" type="text/css" />
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'aplicacao.css')}" type="text/css" />

<script type="text/javascript">
	jQuery(function($) {
		var container = $('body'),
			west = $('body > .west'),
			east = $('body > .east'),
			center = $('body > .center');
		
		function layout() {
			container.layout();
			$('#accordion').accordion('resize');
		}
	
		// Lay out the west panel first
		west.layout();
		
		// Then do the main layout.
		layout();
	
		// Hook up the re-layout to the window resize event.
		$(window).resize(layout);
	
		/**
		 * Below here is all demo code, which has no relation to the layout.
		 */
		$('#accordion').accordion({header: 'h3', fillSpace: true});
	
		// Set up the tabs in the center panel and remove the unwanted corners class
		center.tabs();
		center.children('ul').removeClass('ui-corner-all');
	
		$.extend($.ui.slider.defaults, {
			range: "min",
			animate: true,
			orientation: "vertical"
		});
	
		$("#eq > span").each(function() {
			var value = parseInt($(this).text());
			$(this).empty();
			$(this).slider({
				value: value
			});
		});				
	
	});

</script>

</head>

<body class="{layout: {type: 'border', resize: false, hgap: 6}}">
		<div class="north">
		</div>
		<div id="tabs" class="center">
			<ul>
			</ul>
		</div>
<%--		<div class="east">--%>
<%--			<div class="panel">--%>
<%--				<div class="ui-state-default" style="padding:4px;">Panel 1</div>--%>
<%--				qq coisa--%>
<%--			</div>--%>
<%--			<div class="panel">--%>
<%--				<div class="ui-state-default" style="padding:4px;">Panel 2</div>--%>
<%--				qq coisa--%>
<%--			</div>--%>
<%--		</div>--%>
		<div class="west {layout: {type: 'grid', columns: 1, resize: false}}">
			<div id="accordion">
				<g:render template="menu" contextPath="/" />
			</div>
		</div>
		<div class="south">21/12/2012 - Todos os direitos reservados.</div>
	</body>

</html>