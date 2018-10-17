@extends('layouts.master')

@section('content')

<div id="main-body">
	<div id="main-content" class="container">
		<div class="row">

			<div class="col-lg-6 no-left-padding">

				<div id="business-info" class="container">

					<div class="row">

						<div class="col">

							<h4>Contact Us</h4>

						</div>

					</div>

					<div class="row">

						<div class="col">

							{!! $contactInfo->body !!}

						</div>

					</div>

					<div id="contact-icons" class="row">

						<div class="col">
							<img src="{{ URL::to('/') }}/images/icon_phone_100.png" alt="Call Advanced Spectral Technoloy, Inc." title="Call Advanced Spectral Technoloy, Inc.">
						</div>

						<div class="col">
							<img src="{{ URL::to('/') }}/images/icon_email_100.png" alt="Email Advanced Spectral Technoloy, Inc." title="Email Advanced Spectral Technoloy, Inc.">
						</div>

					</div>

				</div>

			</div>

			<div id="contact-form" class="col-lg-6">

				<div class="container">
					
					<div class="row">
						
						<div class="col no-left-padding">
							
							<h4>Send an Inquiry</h4>

							{!! Form::open(['route' => 'contact.send']) !!}

							<div class="form-group">
								{!! Form::label('name', 'Name') !!}
								{!! Form::text('name', null, ['class' => 'form-control']) !!}
							</div>

							<div class="form-group">
								{!! Form::label('email', 'E-mail') !!}
								{!! Form::text('email', null, ['class' => 'form-control']) !!}
							</div>

							<div class="form-group">
								{!! Form::label('company', 'Company') !!}
								{!! Form::text('company', null, ['class' => 'form-control']) !!}
							</div>

							<div class="form-group">
								{!! Form::label('phone-number', 'Phone') !!}
								{!! Form::text('phone-number', null, ['class' => 'form-control']) !!}
							</div>

							<div class="form-group">
								{!! Form::label('subject', 'Subject') !!}<br>
								{!! Form::select('subject', array('General Inquiry' => 'General Inquiry', 'Quote Request' => 'Request for Quote', 'Service Request' => 'Service Request')); !!}
							</div>

							<div class="form-group">
								{!! Form::label('msg', 'Message') !!}
								{!! Form::textarea('msg', null, ['class' => 'form-control']) !!}
							</div>

							<div class="form-group">
								{!! NoCaptcha::display() !!}
								{!! NoCaptcha::renderJs() !!}

								@if ($errors->has('g-recaptcha-response'))
								    <span class="help-block">
								        <strong>{{ $errors->first('g-recaptcha-response') }}</strong>
								    </span>
								@endif
							</div>

							{!! Form::submit('Submit', ['class' => 'btn btn-info']) !!}

							{!! Form::close() !!}

						</div>

					</div>

				</div>

			</div>
		</div>
	</div>

	<div id="plan-your-trip">

		<div class="container">
			
			<div class="row">
				
				<div class="col no-left-padding">

					{!! $page->body !!}

				</div>

			</div>

			<div class="row">
				
				<div class="col no-left-padding no-right-padding">
					
					<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13186.711592360432!2d-118.799733!3d34.282265!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x8c3e47c50cb10101!2sAdvanced+Spectral+Technology!5e0!3m2!1sen!2sus!4v1496245480738" style="border:0" allowfullscreen="" width="100%" height="450" frameborder="0"></iframe>

				</div>

			</div>

		</div>

	</div>

</div>

@endsection