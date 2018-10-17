@extends('layouts.master')

@section('styles')
<link href="{{ asset('css/orders.css') }}" rel="stylesheet" type="text/css">
<link href="{{ asset('css/print.css') }}" rel="stylesheet" type="text/css" media="print">
@endsection

@section('content')

<div id="main-body">
	<div id="main-content" class="container print" style="background-color: #fff;">
		@if(Session::has('order'))
		<div class="row noprint">
			<div class="col-md-12">
				<h3>
					Thank you for placing your order. Your order number is {{ Session::get('order')->order_id }}.
				</h3>
				<button type="button" id="receipt" class="btn btn-success" onclick="window.print();">Print Recipt</button>
			</div>
		</div>

		<div class="row section heading">
			<div class="col">
				<h2>Receipt</h2>
			</div>
			<div class="col text-right">
				<h2>Order #: {{ Session::get('order')->order_id }}</h2>
			</div>
		</div>
		<?php
			$billing_address  = unserialize(Session::get('order')->billing_address);
			$shipping_address = unserialize(Session::get('order')->shipping_address);
		?>
		<div class="row section">
			<div class="col">
				<strong>Bill To:</strong><br>
				{{ $billing_address['name'] }}<br>
				{{ $billing_address['address_1'] }}<br>
				@if ($billing_address['address_2'] !== '')
				{{ $billing_address['address_2'] }}<br>
				@endif
				{{ $billing_address['city'] }}, {{ $billing_address['state'] }} {{ $billing_address['zip'] }}
			</div>
			<div class="col text-right">
				<strong>Ship To:</strong><br>
				{{ $shipping_address['name'] }}<br>
				{{ $shipping_address['address_1'] }}<br>
				@if ($shipping_address['address_2'] !== '')
				{{ $shipping_address['address_2'] }}<br>
				@endif
				{{ $shipping_address['city'] }}, {{ $shipping_address['state'] }} {{ $shipping_address['zip'] }}
			</div>
		</div>

		<div class="row section">
			<div class="col">
				<strong>Payment Method:</strong><br>
				Visa ending in {{ Session::get('order')->last4 }}
			</div>
			<div class="col text-right">
				<strong>Order Date:</strong><br>
				{{ Session::get('order')->pretty_date }}
			</div>
		</div>
		<div class="row">
			<div class="col">
				<table id="items" class="table table-sm striped">
					<thead>
						<tr>
							<th scope="col">Item</th>
							<th scope="col">Part Number</th>
							<th scope="col">Price</th>
							<th scope="col">Quantity</th>
							<th scope="col">Total</th>
						</tr>
					</thead>
					<tbody>
						@foreach(Session::get('order')->items as $item)
						<tr>
							<th scope="row">{{ $item['item']->product_name }}</th>
							<td>{{ $item['item']->product_id }}</td>
							<td>${{ $item['price'] / $item['qty'] }}</td>
							<td>{{ $item['qty'] }}</td>
							<td>${{ $item['price'] }}</td>
						</tr>
						@endforeach
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td class="noStripe">
								&nbsp;
							</td>
							<td class="noStripe">
								&nbsp;
							</td>
							<td class="noStripe">
								&nbsp;
							</td>
							<td class="noStripe">
								<strong>Subtotal</strong>
							</td>
							<td class="noStripe">
								${{ Session::get('order')->orderSubTotal }}
							</td>
						</tr>
						<tr>
							<td class="noStripe">
								&nbsp;
							</td>
							<td class="noStripe">
								&nbsp;
							</td>
							<td class="noStripe">
								&nbsp;
							</td>
							<td class="noStripe">
								<strong>Sales Tax</strong>
							</td>
							<td class="noStripe">
								$money
							</td>
						</tr>
						<tr>
							<td class="noStripe">
								&nbsp;
							</td>
							<td class="noStripe">
								&nbsp;
							</td>
							<td class="noStripe">
								&nbsp;
							</td>
							<td class="noStripe">
								<strong>Shipping</strong>
							</td>
							<td class="noStripe">
								$money
							</td>
						</tr>
						<tr>
							<td class="noStripe">
								&nbsp;
							</td>
							<td class="noStripe">
								&nbsp;
							</td>
							<td class="noStripe">
								&nbsp;
							</td>
							<td class="noStripe">
								<strong>Total</strong>
							</td>
							<td class="noStripe">
								$money
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		@else
		<div class="row noprint">
			<div class="col-md-12">
				Your payment was successful, however there was a problem generating the order id. Please contact us Monday through Friday between 8:00 AM and 5:00 PM PST to resolve this issue. We are sorry for the inconvenience!
			</div>
		</div>
		@endif
	</div>
</div>

@endsection