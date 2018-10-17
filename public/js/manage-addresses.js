$(function(){
	$('#typeOfAddress').html($('#addressType :selected').html().toLowerCase());

	$('#addressType').change(function(){
		$('#typeOfAddress').html($('#addressType :selected').html().toLowerCase());
	});
});