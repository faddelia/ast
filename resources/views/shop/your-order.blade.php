@extends('layouts.master')

@section('content')

<div id="main-body">
	<div id="main-content" class="container">
		<div class="row">
			@if(Session::has('cart'))
			<div class="col-md-8 offset-md-2">
				<div class="card" style="margin-bottom: 50px; padding: 15px 25px 50px 25px;">
					<h2>Your Cart</h2>
					@foreach($products as $product)
					<hr>
					<div class="row">
						<div class="col-md-1">
							<img src="{{ Voyager::image($product['item']['image']) }}" width="150" height="150">
						</div>
						<div class="col offset-md-2">
							<strong>Model:</strong> {{ $product['item']['product_name'] }}<br>
							<strong>Part number:</strong><br>
							<strong>Quantity:</strong> <span class="quantity">{{ $product['qty'] }}</span> x ${{ $product['item']['price'] }}
							<div class="btn-group btn-group-sm" role="group" aria-label="Basic example">
								<a href="{{ route('product.addOneToCart', ['id' => $product['item']['id']]) }}" id="{{ $product['item']['slug'] }}-add-one" class="btn btn-secondary add-one" title="Add One" alt="Add One" style="color: #fff;">+</a>
								<a href="{{ route('product.reduceByOne', ['id' => $product['item']['id']]) }}" id="{{ $product['item']['slug'] }}-remove-one" class="btn btn-secondary remove-one" title="Remove One" alt="Remove One" style="color: #fff;">-</a>
							</div>
							<div style="margin-top: 30px;">
								<button type="button" class="btn btn-outline-info btn-sm change-quantity">Change Quantity</button>
								<a href="{{ route('product.remove', ['id' => $product['item']['id']]) }}" class="btn btn-outline-danger btn-sm">Remove All</a>								
							</div>
						</div>
						<div class="col">
							<p><strong>Item Subtotal:</strong> <span class="float-right">${{ $product['price'] }}</span></p>
						</div>
					</div>
					@endforeach
				</div>
			</div>
		</div>
		<form id="payment-form" action="{{ route('shop.yourOrder') }}" method="post">
			<div class="row">
				<div class="col-md-8 offset-md-2">
					<div class="card" style="margin-bottom: 50px; padding: 15px 25px 50px 25px;">
						<h4>Shipping Address</h4>
						<hr>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="shipping_firstname">First Name</label>
								<input type="text" name="shipping_firstname" class="form-control" id="shipping_firstname" placeholder="First Name" required>
							</div>
							<div class="form-group col-md-6">
								<label for="shipping_lastname">Last Name</label>
								<input type="text" name="shipping_lastname" class="form-control" id="shipping_lastname" placeholder="Last Name" required>
							</div>
						</div>
						<div class="form-group">
							<label for="shipping_address_1">Address</label>
							<input type="text" name="shipping_address_1" class="form-control" id="shipping_address_1" placeholder="1234 Main St" required>
						</div>
						<div class="form-group">
							<label for="shipping_address_2">Address 2</label>
							<input type="text" name="shipping_address_2" class="form-control" id="shipping_address_2" placeholder="Apartment, studio, or floor">
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="shipping_city">City</label>
								<input type="text" name="shipping_city" class="form-control" id="shipping_city" required>
							</div>
							<div class="form-group col-md-4">
								<label for="shipping_state">State</label>
								<select id="shipping_state" name="shipping_state" class="form-control" required>
									<option selected>Choose...</option>
									@include('partials.states')
								</select>
							</div>
							<div class="form-group col-md-2">
								<label for="shipping_zip">Zip</label>
								<input type="text" name="shipping_zip" class="form-control" id="shipping_zip" required>
							</div>
						</div>
						<h4 style="margin-top: 20px;">Billing Address</h4>
						<hr>
						<div class="form-row">
							<div class="form-group">
								<div class="form-check">
									<input id="shippingBillingSame" class="form-check-input" name="shippingBillingSame" type="checkbox" value="">
									<label class="form-check-label" for="shippingBillingSame">
										Check here if billing address is the same as the shipping address.
									</label>
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="billing_firstname">First Name</label>
								<input type="text" name="billing_firstname" class="form-control" id="billing_firstname" placeholder="First Name">
							</div>
							<div class="form-group col-md-6">
								<label for="billing_lastname">Last Name</label>
								<input type="text" name="billing_lastname" class="form-control" id="billing_lastname" placeholder="Last Name">
							</div>
						</div>
						<div class="form-group">
							<label for="billing_address_1">Address</label>
							<input type="text" name="billing_address_1" class="form-control" id="billing_address_1" placeholder="1234 Main St">
						</div>
						<div class="form-group">
							<label for="billing_address_2">Address 2</label>
							<input type="text" name="billing_address_2" class="form-control" id="billing_address_2" placeholder="Apartment, studio, or floor">
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="billing_city">City</label>
								<input type="text" name="billing_city" class="form-control" id="billing_city">
							</div>
							<div class="form-group col-md-4">
								<label for="billing_state">State</label>
								<select id="billing_state" name="billing_state" class="form-control">
									<option selected>Choose...</option>
									@include('partials.states')
								</select>
							</div>
							<div class="form-group col-md-2">
								<label for="billing_zip">Zip</label>
								<input type="text" name="billing_zip" class="form-control" id="billing_zip">
							</div>
						</div>
						<hr>
						<div class="form-row">
							<div class="form-group col">
								<label for="email">Email address</label>
								<input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp" placeholder="Enter email">
								<small id="emailHelp" class="form-text text-muted">We will never share your email with anyone else.</small>
							</div>
							<div class="form-group col">
								<label for="phoneNumber">Phone</label>
								 <input type="tel" id="phoneNumber" name="phone_number" class="form-control" placeholder="+1-(555)-555-5555">
							</div>
						</div>
						<hr>
						<label for="card-element">
							Credit or debit card
						</label>
						<div id="card-element">
							<!-- A Stripe Element will be inserted here. -->
						</div>

						<!-- Used to display form errors. -->
						<div id="card-errors" role="alert"></div>

						<div class="form-group">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="gridCheck">
								<label class="form-check-label" for="gridCheck">
									Store information for faster checkout on future orders.
								</label>
							</div>
						</div>

						<div id="card-element"></div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8 offset-md-2">
					<div class="card" style="margin-bottom: 50px;">
						<div class="card-header">
							Summary
						</div>
						<div class="card-body">
							<p class="card-text">Subtotal: <span id="subtotal" class="float-right">{{ $totalPrice }}</span><span class="float-right">$</span></p>
							<p class="cart-text">Shipping &amp; Handling: <span id="shipping" class="float-right">5.00</span><span class="float-right">$</span></p>
							<p class="card-text">Tax: <span id="tax" class="float-right">0.00</span><span class="float-right">$</span></p>
							<h5 class="card-title">Total: <span id="grand-total" class="float-right"></span><span class="float-right">$</span></h5>
							<button type="submit" id="buy-now" class="btn btn-teal">Place Order</button>
						</div>
					</div>
				</div>
			</div>
			@csrf
		</form>
		@else
			@include('partials.no-items')
		@endif
	</div>
</div>

@endsection

@section('scripts')
<script type="text/javascript" src="{{ asset('/js/shopping-cart.js') }}"></script>
<script src="https://js.stripe.com/v3/"></script>
<script src="{{ asset('js/checkout.js') }}"></script>
@endsection