//redefines click functionality to mouseover in Product Applications box

$(document).ready(function(){

	$('#myTab a').on('mouseover', function (e) {
		e.preventDefault();

		//get id of tab that moused over and remove suffix
		var getId = $(this).attr('id').slice(0, $(this).attr('id').lastIndexOf('-'));

		//remove active for each tab to prevent multiple slides showing
		$('.tab-pane').each(function(){

			if(getId !== $(this).attr('id')) {
				$(this).removeClass('show').removeClass('active');
			}
			
		});

		//show the tab we want to activate
		$(this).tab('show');
		
	});

});