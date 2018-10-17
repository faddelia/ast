@extends('layouts.master')

@section('content')

<div id="main-body">
	<div id="main-content" class="container no-left-padding no-right-padding">
		<div class="row">
			<div id="product-nav" class="col-lg-3 d-none d-lg-block">
				<p id="inspection-metrology">Inspection &amp; Metrology</p>

				{{ menu('Inspection and Metrology', 'bootstrap') }}

				<p id="plasma-surface">Plasma Surface Preparation</p>

				{{ menu('Plasma Surface Preparation', 'bootstrap') }}
			</div>
			<div class="col-lg-9">

				<div class="container d-none d-lg-block no-right-padding">
					<div class="row">
						<div class="col">
							<div class="float-right">
								<strong>Uses:</strong> {{ $product->uses }}
							</div>
							<h4 class="bread-crumbs">
								<a href="{{ URL::to('/') }}/products">Products</a> >> {{ $product->product_name }} {{ $product->tool_name }}
							</h4>
						</div>
					</div>
				</div>

				<div class="container d-block d-lg-none">
					<div class="row">
						<div class="col d-flex justify-content-center">
							<h4 class="bread-crumbs">
								<a href="{{ URL::to('/') }}/products">Products</a> >> {{ $product->product_name }}
							</h4>
						</div>
					</div>
					<div class="row">
						<div class="col d-flex justify-content-center">
							<strong>Uses:</strong> {{ $product->uses }}
						</div>
					</div>
				</div>

				<div class="container">
					<div class="row">
						<div class="col">
							<div class="container">
								<div class="row justify-content-center align-items-center h-100">
									<div id="product-image" class="col-lg-6 h-100">
										<img src="{{ Voyager::image( $product->image ) }}">
									</div>
									
									<div id="product-info" class="col-lg-6">
										<p class="product-name">{{ $product->product_name }}</p>
										<p class="product-subheader">{{ $product->sub_header }}</p>
										@if($product->price !== null)
										<p>${{ $product->stringPrice }}</p>
										<form action="" method="post">
											@csrf
											<p><a href="{{ route('product.addToCart', ['id' => $product->id]) }}" class="btn btn-sm btn-success">Add to Cart</a></p>
										</form>
										@endif
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div id="productContent" class="row">
					<div class="col-lg-12 no-right-padding">
						<ul class="nav nav-tabs justify-content-end" id="myTab" role="tablist">
							<li class="nav-item">
								<a class="nav-link active" id="home-tab" data-toggle="tab" href="#description" role="tab" aria-controls="home" aria-selected="true">Description</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="profile-tab" data-toggle="tab" href="#features" role="tab" aria-controls="profile" aria-selected="false">Features &amp; Specs</a>
							</li>
						</ul>
						<div class="tab-content" id="tabContent">
							<div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="home-tab">
								<div class="containter">
									<div class="row">
										<div class="col-lg-12">
											{!! $product->description !!}
										</div>
									</div>
									<div class="row">
										<div class="col spec-download">
											Download PDF Specification Sheet >> <a href="{{ $data_sheet }}"><img src="{{ URL::to('/') }}/images/pdf_symbol.jpg" title="{{ $original_name }}" alt="Download PDF for {{ $original_name }}"></a>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane fade" id="features" role="tabpanel" aria-labelledby="profile-tab">
								{!! $product->features_specs !!}
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>

	</div>
</div>

@endsection