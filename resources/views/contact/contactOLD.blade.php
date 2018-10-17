@extends('layouts.master')

@section('content')

<div id="main-body">
	<div id="main-content" class="container">
		<div class="row">
			<div class="col-md-12">
				<h1>Message from {{ $info['name'] . ": " . $info['email'] }}</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				Phone: {{ $info['phone-number'] }}
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				{{ $info['msg'] }}
			</div>
		</div>
	</div>
</div>
@endsection