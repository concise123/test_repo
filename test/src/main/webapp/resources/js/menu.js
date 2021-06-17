$(document).ready(function(){
	activateMenu();
});

function activateMenu() {
	var url = window.location.pathname; 
	$('#menu a').each(function(){
	    if(url == $(this).attr("href").replace("..","")){
	        $(this).addClass('active');
	    } else if($(this).hasClass("active")) {
			$(this).removeClass("active");
	    }
	});
}