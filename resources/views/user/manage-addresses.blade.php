@extends('layouts.master')

@section('content')


<div id="main-body">
	<div id="main-content" class="container" style="padding-bottom: 50px;">
		<div class="row">
			<div class="card col-md-8 offset-md-2">
				<div class="card-body">
					<h5 class="card-title">Add an Address</h5>
					<p class="card-text">
						<h3>Your Addresses</h3>
						<?php $counter = 0; ?>
						<div class="row">
						@foreach($addresses as $address)
						<div class="col-sm-6">
							<div class="card" style="min-height: 210px; margin-bottom: 15px;">
								<div class="card-body">
									<h5 class="card-title">{{ $address->address_nickname }}</h5>
									<p class="card-text">
										Address: {{ $address->address }}<br>
										Address Type: {{ $address->address_type }}
									</p>
									@if($address->is_default == 0)
										<button class="btn btn-sm btn-teal">
											Make Default
										</button>
									@else
										<button class="btn btn-sm btn-teal" disabled>
											Current Default
										</button>
									@endif
									<button class="btn btn-sm btn-dark">Edit</button>&nbsp;&nbsp;
								</div>
							</div>
						</div>
						@if(($counter + 1) % 2 == 0)
							</div>
							<div class="row">
						@endif
						<?php $counter ++; ?>
						@endforeach
					</p>
				</div>
			</div>
		</div>
	</div>
</div>

<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-recipient-name="@mdo">Open modal for @mdo</button>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@fat">Open modal for @fat</button>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">Open modal for @getbootstrap</button>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Recipient:</label>
            <input type="text" class="form-control" id="recipient-name">
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">Message:</label>
            <textarea class="form-control" id="message-text"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Send message</button>
      </div>
    </div>
  </div>
</div>

@endsection