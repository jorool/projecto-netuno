

 

<script type="text/javascript">
	$(function(){
			$("#${attrs.id}").autocomplete({
				source: '<g:createLink controller="${attr.controller}" action="${attr.action}"/>',
				minLength: 2,
				select: function(event, ui){
						ui.item ? $("${attrs.id}_hidden").attr("value", ui.item.value) : $("${attrs.id}_hidden").attr("value", "")
					}	
			});
		});
</script>


<input type="hidden" name="${attrs.name}" id="${attrs.id}_hidden" />
<input id="${attrs.id}" style="${attrs.style}" class="${attrs.classeCss}" />