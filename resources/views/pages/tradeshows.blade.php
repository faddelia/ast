@extends('layouts.master')

@section('content')

<div id="main-body">
	<div id="main-content" class="container no-left-padding no-right-padding">
		<div class="row">
			<div class="col-lg-12">
				<h4>Tradeshow Highlights</h4>
				<?php $counter = 0; ?>
				<?php $numHighlights = 0; ?>

				@foreach( $highlights as $highlight )

				@if( $counter % 2 == 0 )
					<div class="card-deck hightlights">
				@endif
						<div class="card">
							<img class="card-img-top" src="{{ Voyager::image( $highlight->image ) }}" alt="Card image cap">
							<div class="card-body">
								<h5 class="card-title">{{ $highlight->name }}</h5>
								<p class="card-text">
									{{ $highlight->dates }}<br>
									{{ $highlight->location }}<br>
									{{ $highlight->city }}, {{ $highlight->state }}
								</p>
							</div>
						</div>

						@if ( count($highlights) % 2 != 0 && $numHighlights == count($highlights) - 1)
						<div class="card" style="background-color: transparent; border: none;">
							&nbsp;
						</div>

						@endif 

				@if( $counter % 2 != 0)
					</div>
				@endif
					<?php $counter++; ?>
					<?php $numHighlights++; ?>
				@endforeach

		</div>
	</div>
</div>
</div>

@endsection