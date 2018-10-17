var closeIt;
var hasMouseOver   = false;
var mouseOverChild = false;

$('#navbarDropdown').on('mouseover', function (e) {
  e.preventDefault();

  if(!$('#navDropdown').hasClass('show')) {
  	$(this).trigger('click');
  }
  
});

/*
 * Change active header links dynamically
 */

$(document).ready(function(){

	$('#header-nav > li').each(function(){
		$(this).removeClass('active');
	});

	var currentPage = $(location).attr('href');
	currentPage = currentPage.slice(currentPage.lastIndexOf('/'));

	if(currentPage == '/') {
		$('#home-link').addClass('active');
	} else {
		$('#' + currentPage.slice(currentPage.lastIndexOf('/')+1) + '-link').addClass('active');
	}

});

/* 
 * put in timer to figure out where the mouse is on mouse out
 * give ~3 seconds on mouseout to find if the mouse is over the product links
 * if it is, don't close the menu
 * else, close it

 **** THIS CAN'T SEEM TO FIGURE OUT WHEN IT'S ACTUALLY LEFT #navDropdown 
      OR WHEN IT'S IN NOMANDSLAND WHILE STILL IN ELEMENT ****
 */
 /*
$('#navbarDropdown').on('mouseout', function (e) {
  e.preventDefault();

  closeIt = setTimeout(closeNavDropdown, 3000);
});

$('#navDropdown').on('mouseover', function(e) {
	e.preventDefault();

	hasMouseOver   = true;
	console.log("mouseover, hasMouseOver: " + hasMouseOver);
	console.log("mouseover, mouseOverChild: " + mouseOverChild);
});

$('#navDropdown').contents('*').on('mouseover', function(e) {
	e.preventDefault();

	hasMouseOver   = true;
	mouseOverChild = true;
});

$('#navDropdown').contents('*').on('mouseout', function(e) {
	e.preventDefault();

	hasMouseOver   = true;
	mouseOverChild = false;
});

$('#navDropdown').on('mouseout', function(e) {
	e.preventDefault();

	console.log("mouseout, hasMouseOver: " + hasMouseOver);
	console.log("mouseout, mouseOverChild: " + mouseOverChild);

	if(!mouseOverChild && hasMouseOver) {
		hasMouseOver = false;
		alert("about to close");
		
		closeNavDropdown();
	}
});

function closeNavDropdown() {
	if(!hasMouseOver) {
		$('#navDropdown').trigger('click');
	}
}*/