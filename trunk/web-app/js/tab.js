$(function(){
	var $tabs = $("#tabs").tabs({
		tabTemplate: "<li><a href='#{href}'>#{label}</a> <span class='ui-icon ui-icon-close'>Remove Tab</span></li>",
		add: function(event, ui){
			// seleciona a nova aba ao adiciona-la
			$tabs.tabs('select', '#' + ui.panel.id);
			
			var content = "<iframe src='" + tab_url + "' frameborder='0' style='width:100%;height:100%' />";
			
			$(ui.panel).html(content);
			
		}
	});
	
	 // close icon: removing the tab on click
    // note: closable tabs gonna be an option in the future - see
	// http://dev.jqueryui.com/ticket/3924
    $( "#tabs span.ui-icon-close" ).live( "click", function() {
        var index = $( "li", $tabs ).index( $( this ).parent() );
        $tabs.tabs( "remove", index );
    });
});

var counter = 0;
var tab_url = "";

function criarTab(url, titulo){

	var tabJaExiste = false;
	
	$('#tabs ul li a').each(function(i) {
	    if (this.text == titulo) {
	    	tabJaExiste = true;
	    }
	});
	
	if (!tabJaExiste)
		{
			tab_url = url;
			$("#tabs").tabs("add", "#tabContent" + counter++, titulo);
		}
	else
		{
			$('#tabs ul li a').each(function(i) {
			    if (this.text == titulo) {$('#reqTab').val(i)}
			});
	
			$("#tabs").tabs({
			    selected: $('#reqTab').val()
			});
		}
	
}