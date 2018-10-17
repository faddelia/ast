@extends('layouts.master')

@section('content')

<div id="main-body" style="padding: 50px 0;">	
	<div id="main-content" class="container categories" style="background-color: #fff; padding: 25px 15px;">
		<div class="row">
			<div class="col">
				<img src="{{asset('images/spot_logo_350x148.jpg')}}">
			</div>
		</div>

		<div class="row">
			<div class="container">
				<div class="row">
					<div class="col">

						<h4 id="third-party-category-header">{{ $categories }}</h4>

						<ul id="third-party-product-nav" class="nav flex-column">

							@foreach ($products as $product)
							
							<li class="nav-item">
								<a class="nav-link" href="{{ $product->data_sheet }}">{{ $product->product_name }}</a>
							</li>

							@endforeach

						</ul>

					</div>

					<div class="col">
						@if ($categories == "cameras")
						
						<img src="{{ asset('images/insightcmos350.jpg') }}">

						@endif

						@if ($categories == "adapters")

						<img src="{{asset('images/dw 55 shot250.jpg')}}">

						@endif

						@if ($categories == "boomstands")

						<img src="{{asset('images/boomstand group250.jpg')}}">

						@endif
					</div>

				</div>
			</div>
		</div>
		<div class="row">
			&nbsp;
		</div>
		<div class="row">
			<div class="container">
				<div class="row">
					<div class="col">
						<a href="{{ URL::to('/') }}/third-party-products" style="color: #333; font-size: 125%;">
							Back to third party products
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection