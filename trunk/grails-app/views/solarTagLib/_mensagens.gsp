
<g:if test="${flash.mensagemErro}">
			<script type="text/javascript">
				$(function(){
					mostraMensagemErro("msgs", "${flash.mensagemErro}");
				});
			</script>
			
</g:if>

<g:if test="${flash.mensagemInfo}">
			<script type="text/javascript">
				$(function(){
					mostraMensagemInfo("msgs", "${flash.mensagemInfo}");
				});
			</script>
</g:if>

<g:if test="${attrs.bean}">
	<g:hasErrors bean="${attrs.bean}">
	    <g:eachError bean="${attrs.bean}">
	    <script type="text/javascript">
					$(function(){
						mostraMensagemErro("msgs", "${it.defaultMessage}");
					});
				</script>
	    </g:eachError>
	</g:hasErrors> 
</g:if>

<div id="msgs"></div>