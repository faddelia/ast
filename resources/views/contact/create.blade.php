@extends('layouts.master')

@section('content')

<div id="main-body">
	<div id="main-content" class="container">
		<div class="row">
			<div class="col-md-12">
				<h4>Contact</h4>

				{!! Form::open(['route' => 'contact.store']) !!}

				<div class="form-group">
					{!! Form::label('name', 'Your Name') !!}
					{!! Form::text('name', null, ['class' => 'form-control']) !!}
				</div>

				<div class="form-group">
					{!! Form::label('email', 'E-mail Address') !!}
					{!! Form::text('email', null, ['class' => 'form-control']) !!}
				</div>

				<div class="form-group">
					{!! Form::textarea('msg', null, ['class' => 'form-control']) !!}
				</div>

				{!! Form::submit('Submit', ['class' => 'btn btn-info']) !!}

				{!! Form::close() !!}

			</div>
		</div>
	</div>
</div>
@endsection