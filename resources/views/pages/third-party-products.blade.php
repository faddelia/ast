@extends('layouts.master')

@section('content')

<div id="main-body" style="padding: 50px 0;">	
	<div id="main-content" class="container categories" style="background-color: #fff; padding: 25px 15px;">
		<div class="row">
			<div class="col">
				<h4>Third Party Products</h4>
			</div>
		</div>

		<div class="row">
			<div class="col">
				<div class="container">
					<div class="row">
						@foreach($categories as $category)
						<div id="{{ $category->slug }}-link" class="col-md-3 item-category">
							<p>
								<a href="{{ URL::to('/') }}/third-party-products/{{ $category->slug }}">{{ $category->category }}</a>
							</p>
							<p>
								<a href="{{ URL::to('/') }}/third-party-products/{{ $category->slug }}"><img src="{{ Voyager::image( $category->category_image ) }}" class="products-img"></a>
							</p>
							
						</div>
						@endforeach
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection