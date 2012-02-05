

 

<script type="text/javascript">
	$(function(){
			$("#${attrs.id}").autocomplete({
				source: '<g:createLink controller="${attrs.controller}" action="${attrs.action}"/>?searchField=${attrs.searchField}',
				minLength: 2,
				select: function(event, ui){
						ui.item ? $("#${attrs.id}_hidden").attr("value", ui.item.id) : $("#${attrs.id}_hidden").attr("value", "")
					}	
			});

			$("#${attrs.id}").blur(function(){

				var val = $("#${attrs.id}_hidden").attr("value");
				if(val == ""){
					$("#${attrs.id}").attr("value", "");
				}
					
			});
		});
</script>


<input type="hidden" name="${attrs.name}" id="${attrs.id}_hidden" />
<input id="${attrs.id}" style="${attrs.style}" class="${attrs.classeCss}" />