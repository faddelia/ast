$(document).ready(function(){

	var docHeight = $(document).height();
	var elemOffset = $('#main-content').offset().top;
	var footerHeight = $('#footer').height();

	// fix height of #main-content for instances of when there isn't enough content to fill the whole page
	$('#main-content').css('minHeight', (docHeight - elemOffset - footerHeight));

});