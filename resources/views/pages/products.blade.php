@extends('layouts.master')

@section('content')

<div id="main-body">
	<div id="main-content" class="container no-left-padding no-right-padding">
		@if(Session::has('success'))
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div id="charge-message" class="alert alert-success" role="alert" style="text-align: center;">
					{{ Session::get('success') }}
				</div>
			</div>
		</div>
		@endif
		<div class="row">
			<div class="col-lg-12">
				<h4>Products</h4>

				<div class="container d-block d-lg-none">
				@foreach($products as $product)

				<div class="products-row-mobile row">
					<div class="col">

					<!-- mobile -->
					<div class="container product-shadow products-md">
						<div class="row">
							<div id="product-{{ $product->slug }}" class="container all-products">
								<div class="row">
									<div class="col">
										<a href="{{ URL::to('/') }}/product/{{ $product->slug }}"><img src="{{ Voyager::image( $product->image ) }}" class="roducts-img"></a>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<p class="product-name">
											<a href="{{ URL::to('/') }}/product/{{ $product->slug }}">
												{{ $product->product_name }}
											</a>
										</p>
										<p class="product-subheader">
											{{ $product->sub_header }}
										</p>
									</div>
								</div>
								<div class="row product-excerpt">
									<div class="col">
										{!! $product->excerpt !!}
									</div>
								</div>
								<div class="row">
									<div class="col product-btn d-flex justify-content-center align-items-end">
										<a href="{{ URL::to('/') }}/product/{{ $product->slug }}" type="button" class="btn btn-info">Go to {{ $product->product_name }}</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					</div>
				</div>
				@endforeach
				</div>

				<?php $counter = 0; ?>

				<div class="container d-none d-lg-block no-right-padding no-left-padding">
				@foreach($products as $product)
				@if($counter % 2 == 0)
				<div class="products-row row">
				@endif

				<div class="col-md-6">

					<div class="container product-shadow">
						<div class="row">
							<div id="product-{{ $product->slug }}" class="container all-products">
								<div class="row product-header">
									<div class="col-md-6">
										<a href="{{ URL::to('/') }}/product/{{ $product->slug }}"><img src="{{ Voyager::image( $product->image ) }}" class="products-img"></a>
									</div>
									<div class="col-md-6">
										<p class="product-name">
											<a href="{{ URL::to('/') }}/product/{{ $product->slug }}">
												{{ $product->product_name }}
											</a>
										</p>
										<p class="product-subheader">
											{{ $product->sub_header }}
										</p>
									</div>
								</div>
								<div class="row product-excerpt">
									<div class="col">
										{!! $product->excerpt !!}
									</div>
								</div>
								<!--<div class="row product-btn">-->
									<div class="row">
										<div class="col product-btn">
											<a href="{{ URL::to('/') }}/product/{{ $product->slug }}"><button type="button" class="btn btn-info">Go to {{ $product->product_name }}</button></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				@if($counter % 2 != 0)
				</div>
				@endif

				<?php $counter++; ?>

				@endforeach
				</div>

			</div>
		</div>
	</div>
</div>

@endsection