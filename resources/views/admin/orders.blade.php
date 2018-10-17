@extends('layouts.master')

@section('content')

<div id="main-body">
	<div id="main-content" class="container" style="padding-bottom: 50px;">
		<div class="row">
			<div class="col">
				<h1>Orders</h1>
			</div>
		</div>
		<?php
			$dateAsString = '';
		?>
	@foreach($orders as $order)
		@if($dateAsString == '' || $dateAsString !== $order->date_string)
		<?php $dateAsString = $order->date_string; ?>
		<div class="row">
			<div class="col">
				Ordered on {{ $order->date_string }}
			</div>
		</div>
		@endif
		<div class="row" style="background-color: #fff; border: 1px solid #555; margin-bottom: 10px;">
			<div class="col">
					<?php
						$shippingAddress = unserialize($order->shipping_address);
						$billingAddress  = unserialize($order->billing_address);
						$cart            = unserialize($order->cart);
					?>
					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<strong>Order Date:</strong> {{ $order->created_at }}<br>
								<strong>Order Id:</strong> {{ $order->order_id }}<br>
								<strong>Stripe Payment Id:</strong> {{ $order->payment_id }}
							</div>
							<div class="col-md-6 text-right">
								<p>
									<strong>Ship to:</strong> {{ $shippingAddress['name'] }}<br>
									{{ $shippingAddress['address_1'] }} 
									@if($shippingAddress['address_2'])
									(Apt/Ste/Unit) {{ $shippingAddress['address_2'] }}
									@endif
									<br>
									{{ $shippingAddress['city'] }}, {{ $shippingAddress['state'] }} {{ $shippingAddress['zip'] }}
								</p>
								<p>
									<strong>Bill to:</strong> {{ $billingAddress['name'] }}<br>
									{{ $billingAddress['address_1'] }}
									@if($billingAddress['address_2'])
									(Apt/Ste/Unit) {{ $billingAddress['address_2'] }}
									@endif
									<br>
									{{ $billingAddress['city'] }}, {{ $billingAddress['state'] }} {{ $billingAddress['zip'] }}<br>
								</p>
								<p>
									<strong>User Contact Information:</strong><br>
									<strong>Email: </strong><a href="mailto: {{ $order->user_info['email'] }}" class="link">{{ $order->user_info['email'] }}</a><br>
									<strong>Phone: </strong>{{ $order->user_info['phone'] }}
								</p>
							</div>
						</div>

						<div class="row">
							<div class="col">
								@foreach($cart->items as $item)
								<div class="row" style="margin-bottom: 15px;">
									<div class="col-md-8">
										<img src="{{ Voyager::image($item['item']->image) }}" class="float-left" style="width: 25%;">
										<strong>Product Name: </strong>{{ $item['item']->product_name }}<br>
										<strong>Quantity: </strong>{{ $item['qty'] }}<br>
										<strong>Total: </strong>${{ $item['price'] }}
									</div>
								</div>
								@endforeach
							</div>
							<div class="col d-flex align-items-end text-right">
								<div id="processOrder">
									<button class="btn btn-teal" name="process-order">Process Order</button>
								</div>
							</div>
						</div>
					</div>
			</div>
		</div>
	@endforeach
	</div>
</div>

@endsection