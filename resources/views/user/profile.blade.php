@extends('layouts.master')

@section('content')

<div id="main-body">
	<div id="main-content" class="container" style="padding-bottom: 50px;">
		<div class="row">
			<div class="col-3">
				<div class="list-group" id="list-tab" role="tablist">
					<a class="list-group-item list-group-item-action active" id="list-account-list" data-toggle="list" href="#list-account" role="tab" aria-controls="account">My Account</a>
					<a class="list-group-item list-group-item-action" id="list-orders-list" data-toggle="list" href="#list-orders" role="tab" aria-controls="orders">Orders</a>
				</div>
			</div>
			<div class="col-9">
				<div class="tab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="list-account" role="tabpanel" aria-labelledby="list-account-list" style="background-color: #fff; padding: 15px 25px;">
						<form method="post" action="{{ route('user.update') }}" name="user-info">

							<h3>Account Information</h3>

							<div class="form-group input-group">
								<div class="input-group-prepend">
									<span class="input-group-text">Username</span>
								</div>
								<input type="text" aria-label="Name" class="form-control" value="{{ Auth::user()->email }}" disabled>
							</div>

							<div class="form-group input-group">
								<div class="input-group-prepend">
									<span class="input-group-text">Full name</span>
								</div>
								<input type="text" name="name" aria-label="Name" class="form-control" value="{{ Auth::user()->name }}">
							</div>

							<div class="form-group input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text" id="inputGroup-sizing-default">Phone</span>
								</div>
								<input type="text" name="phone" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="{{ $userPhone['phone'] }}">
							</div>

							<div class="form-group">
								<h4>Addresses: </h4>
								<p>
									<a href="/manage-addresses" class="btn btn-sm btn-success" role="button" style="color: #fff;">Manage Addresses</a>
								</p>
								<p>
									<!-- Addresses should have a nickname and should be unique so they can be used as the id and name for differentiation -->
									<label for="shippingAddress">
										Current Default Shipping Address: 
									</label>
									<textarea type="text" id="shippingAddress" name="shipping_address_default" class="form-control" rows="3"></textarea>
								</p>
								<br>
								<p>
									<label for="billingAddress">
										Current Default Billing Address:
									</label>
									<textarea type="text" id="billingAddress" name="billing_address_default" class="form-control" rows="3"></textarea>
								</p>
							</div>
							
							<div class="form-group">
								<h4>Update Password:</h4>
								<p>
									<label for="newPass">
										New Password:
									</label>
									<input type="password" id="newPass" name="newPass" class="form-control">
								</p>
								<p>
									<label for="confirmNewPass">
										Confirm New Password:
									</label>
									<input type="password" id="confirmNewPass" name="confirmNewPass" class="form-control">
								</p>
								<p>
									<button type="button" class="btn btn-secondary">Edit</button>&nbsp;&nbsp;
									<button type="submit" class="btn btn-teal">Save</button>
								</p>
							</div>
							@csrf
						</form>
					</div>
					<div class="tab-pane fade" id="list-orders" role="tabpanel" aria-labelledby="list-orders-list" style="background-color: #fff; padding: 15px 25px;">
						<h3>Recent orders</h3>
						@foreach($orders as $order)
						<p>Date Purchased: {{ $order->created_at }}</p>
						<p>Order #: {{ $order->order_id }}</p>
						@foreach($order->cart->items as $item)
						<p>{{ $item['item']->product_name }}</p>
						@endforeach
						<hr>
						@endforeach

						{{ $orders->links() }}
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection