@extends('layouts.master')

@section('content')

@if($page->has_content_bg)
	<div id="main-body" style="padding: 50px 0;">
		<div id="main-content" class="container" style="background-color:<?php echo (substr($page->content_bg_color, 0, 1) == '#') ? '' :'#';?>{{ $page->content_bg_color }}; padding: 25px 15px;">
	@else
		<div id="main-content" class="container">
	@endif
			<div class="row">
				<div class="col-lg-12">
					<h4>{{ $page->title }}</h4>

					{!! $page->body !!}

				</div>
			</div>
			
		</div>
	</div>
</div>

@endsection