@component('mail::message')

New inquiry from:<br>
{{ $info['name'] }}<br>
{{ $info['company'] }}<br>
{{ $info['email'] }}<br>
{{ $info['phone-number'] }}<br>

<p>Message</p>
@component('mail::panel', ['url' => ''])
{{ $info['msg'] }}
@endcomponent

Thank you,<br>
{{ config('app.name') }}
@endcomponent
