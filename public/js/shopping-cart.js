$(function(){
	var subtotal = parseFloat($('#subtotal').text());
	var shipping = parseFloat($('#shipping').text());
	var tax = parseFloat(subtotal * 0.07250);
	tax = parseFloat(tax);
	var total = subtotal + shipping + tax;
	$('#tax').text(tax.toFixed(2));

	$('#grand-total').text(total.toFixed(2));
});

$(function(){
	$('.add-one').click(function(){
		//alert('add one');
	});
	$('.remove-one').click(function(){
		//alert('remove one');
	});

	$('.change-quantity').each(function(){
		$(this).click(function(){
			
			//get quantity related to the item user wants to edit
			var qty = $(this).closest('.col').find('.quantity').text();

			//insert text field with value of qty and button to submit
			$(this).closest('.col').find('.quantity').html('<input type="text" class="form-element" id="item-change-quantity" name="quantity" value="' + qty + '"">');

			//when user clicks submit button or presses enter, submit this value to laravel to update and recalculate!
		});
	});
});

$(function(){
	$('#shippingBillingSame').click(function(){
		var checked = $(this).is(':checked');

		if(checked) {
			$(this).val('checked');
			$('#billing_firstname').val($('#shipping_firstname').val());
			$('#billing_lastname').val($('#shipping_lastname').val());
			$('#billing_address_1').val($('#shipping_address_1').val());
			$('#billing_address_2').val($('#shipping_address_2').val());
			$('#billing_city').val($('#shipping_city').val());
			$('#billing_state').val($('#shipping_state').val());
			$('#billing_zip').val($('#shipping_zip').val());
		} else {
			$(this).val('');
			$('#billing_firstname').val('');
			$('#billing_lastname').val('');
			$('#billing_address_1').val('');
			$('#billing_address_2').val('');
			$('#billing_city').val('');
			$('#billing_state').val('');
			$('#billing_zip').val('');
		}
	});
});

function validateForm()
{

}