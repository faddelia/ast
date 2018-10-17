@extends('layouts.master')

@section('content')


<div id="main-body">
	<div id="main-content" class="container" style="padding-bottom: 50px;">
		<div class="row">
			<div class="card col-md-8 offset-md-2">
				<div class="card-body">
					<h5 class="card-title">Add an Address</h5>
					<p class="card-text">
						<form action="{{ route('user.add-address') }}" method="post" name="address">
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span id="addressNickname" class="input-group-text">Address Nickname</span>
								</div>
								<input type="text" name="addressNickname" class="form-control" aria-label="Sizing example input" aria-describedby="addressNickname">
							</div>
							<div class="form-group">
								<label for="new-address">New Address</label>
								<textarea id="new-address" class="form-control" name="address" rows="3"></textarea>
							</div>
							<div class="form-group">
								<label for="addressType">Address Type</label>
								<select id="addressType" name="addressType" class="form-control">
									<option value="shipping-address">Shipping Address</option>
									<option value="billing-address">Billing Address</option>
								</select>
							</div>
							<div class="form-group">
								<input id="makeDefault" class="form-check-input" name="isDefault" type="checkbox" value="default">
								<label for="makeDefault">Make this address the default for your <span id="typeOfAddress"></span>?</label>
							</div>
							<div class="form-group">
								<button type="submit" class="btn btn-teal">Add Address</button>
							</div>
							@csrf
						</form>
					</p>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection

@section('scripts')
<script type="text/javascript" src="{{ asset('js/manage-addresses.js') }}"></script>
@endsection