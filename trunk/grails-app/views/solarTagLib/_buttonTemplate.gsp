



<script type="text/javascript">
	$(function(){
		$("#${attrs.id}").button({
			<g:if test="${attrs.icon}">
				icons: {
						primary: "${attrs.icon}"
					}	
			</g:if>
			});	
	});

	function exectuarOnClikOn${attrs.id}(){
			<g:if test="${attrs.controller && attrs.action}">
				var result = true;
				<g:if test="${attrs.onclick}">
					result = ${attrs.onclick}
				</g:if>

				<g:if test="${attrs.ajax && attrs.ajax=='true'}">

					if(result == undefined || result == true){
						$.ajax({
								type: '${attrs.method}',
								

								<g:if test="${attrs.onAjaxSuccess}">
										success: ${attrs.onAjaxSuccess},
								</g:if>
								<g:if test="${attrs.onAjaxError}">
										error: ${attrs.onAjaxError},
								</g:if>
										
								url: '<g:createLink controller="${attrs.controller}" action="${attrs.action}"/>'		
								
							});
					}else if(result != false){
						$.ajax({
							type: '${attrs.method}',
							url: '<g:createLink controller="${attrs.controller}" action="${attrs.action}"/>',

							<g:if test="${attrs.onAjaxSuccess}">
									success: ${attrs.onAjaxSuccess},
							</g:if>
							<g:if test="${attrs.onAjaxError}">
									error: ${attrs.onAjaxError},
							</g:if>
									
							data: result
						});
					}	
				
						
				</g:if>

				<g:if test="${!attrs.ajax || attrs.ajax=='false'}">
					if(result == undefined || result == true){
						window.location = '<g:createLink controller="${attrs.controller}" action="${attrs.action}"/>'
					}else if(result != false){
						window.location = '<g:createLink controller="${attrs.controller}" action="${attrs.action}"/>/' + result
					}
				</g:if>
				
				
			</g:if>
		}
</script>


<button id="${attrs.id}"
	onclick="exectuarOnClikOn${attrs.id}();return false;">
	${conteudo}
</button>