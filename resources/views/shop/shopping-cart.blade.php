@extends('layouts.master')

@section('content')
<div id="main-body">
	<div id="main-content" class="container">
		<div class="row">
			@if(Session::has('cart'))
			<div class="col-md-8">
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
			<div class="col-md-4">
				<div class="card">
					<div class="card-header">
						Summary
					</div>
					<div class="card-body">
						<p class="card-text">Subtotal: <span id="subtotal" class="float-right">{{ $totalPrice }}</span><span class="float-right">$</span></p>
						<p class="cart-text">Shipping &amp; Handling: <span id="shipping" class="float-right">5.00</span><span class="float-right">$</span></p>
						<p class="card-text">Tax: <span id="tax" class="float-right">0.00</span><span class="float-right">$</span></p>
						<h5 class="card-title">Total: <span id="grand-total" class="float-right"></span><span class="float-right">$</span></h5>
						<a href="{{ route('shop.yourOrder') }}" class="btn btn-teal">Checkout</a>
					</div>
				</div>
			</div>
			@else
				@include('partials.no-items')
			@endif
		</div>
	</div>
</div>
@endsection

@section('scripts')
<script type="text/javascript" src="{{ asset('/js/shopping-cart.js') }}"></script>
@endsection