/*** Make product description ***/
/*
 * Removes default mouseover functionality to use click instead
 * Fix is to bread the mouseover functionality. Lame =\
 */

$('#myTab a').on('click', function (e) {
	e.preventDefault();
	$(this).tab('show');
});


$('#myTab a').off('mouseover');
$('#myTab a').on('mouseover', function(e){
	e.preventDefault();
	(this).attr('href'); //break mouseover
});