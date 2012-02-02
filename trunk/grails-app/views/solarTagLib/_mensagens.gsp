
<g:if test="${flash.mensagemErro}">
			<script type="text/javascript">
				$(function(){
					mostraMensagemErro("msg_erro_flash", "${flash.mensagemErro}");
				});
			</script>
			<div id="msg_erro_flash"></div>
</g:if>

<g:if test="${flash.mensagemInfo}">
			<script type="text/javascript">
				$(function(){
					mostraMensagemInfo("msg_info_flash", "${flash.mensagemInfo}");
				});
			</script>
			<div id="msg_info_flash"></div>
</g:if>