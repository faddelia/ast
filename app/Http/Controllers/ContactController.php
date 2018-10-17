<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Input;
use App\Mail\Contact;
use App\Http\Controllers\NoCaptcha;
use App\PageContent;
use App\Solicitor;

class ContactController extends Controller
{
    public function create() 
    {
        $page = PageContent::where('slug', '=', 'contact-us')->first();
        $contactInfo = PageContent::where('slug', '=', 'contact-us-info')->first();
        $contactForm = PageContent::where('slug', '=', 'contact-form')->first();
    	return view('pages.contact', compact('page', 'contactInfo', 'contactForm'));
    }

    public function send(Request $request)
    {

        // prevent validation error on captcha
        \NoCaptcha::shouldReceive('verifyResponse')
            ->once()
            ->andReturn(true);

        // provide hidden input for your 'required' validation
        \NoCaptcha::shouldReceive('display')
            ->zeroOrMoreTimes()
            ->andReturn('<input type="hidden" name="g-recaptcha-response" value="1" />');

    	$info = $request->validate([
    		'name' => 'required',
            'email' => 'required|email',
    		'company' => '',
            'phone-number' => '',
    		'msg' => 'required',
    		'subject' => '',
    		'g-recaptcha-response' => 'required|captcha',
    	]);

		// get list of known solicitors
		$solicitors = Solicitor::all();
		$domain     = substr($request['email'], strpos($request['email'], '@'), strrpos($request['email'], '.'));
	
		// check if solicitor
		foreach ($solicitors as $solicitor)
		{
			if ($solicitor->email === $request['email'] || strpos($request['email'], $solicitor->domain) !== FALSE)
			{
				session()->flash('message', 'There was an issue sending your inquiry. Please try again later.');
        
    			return redirect()->back();

			}
		}

		// redirect back to contact form with error? or no error to drive them nuts :)
	
        $sendEmailTo = "";
        $emails      = -1;

        //can send to multiple addresses, just put semicolons between the addresses
        switch($info['subject']) {
            case 'General Inquiry':
                $sendEmailTo = "info@advancedspectral.com";
                $emails = 0;
                break;
            case 'Quote Request':
                $sendEmailTo = "sales@advancedspectral.com";
                $emails = 0;
                break;
            case 'Service Request':
                $sendEmailTo = "quality@advancedspectral.com";
                $emails = 0;
                break;
        }

        //delete this for production
        //$sendEmailTo = 'frank@addelia.com';

        if(strpos($sendEmailTo, ';') !== false) {
            $emails = explode(';', $sendEmailTo);
        }

        if($emails == -1) {
            // Send email, send to $sendEmailTo for production
            dd('here emails = -1');
            \Mail::to('kellyv@advancedspectral.com')->send(new Contact($info));
        }
        else {
            //foreach ($emails as $email) {
                //\Mail::to($email)->send(new Contact($info));
                \Mail::to($sendEmailTo)->send(new Contact($info));
            //}
        }

        // Alert user of successful message
        session()->flash('message', 'Thank you for your inquiry, we will contact you shortly.');
        
    	return redirect()->back();
    }
}
