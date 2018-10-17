<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="images/about-us-favicon.ico">

  <title>Advanced Spectral Technology, Inc. | Creative Solutions for Inspection, Metrology, and Infrared Imaging</title>

  <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">

  <!-- Custom styles -->
  <link href="{{ asset('css/styles.css') }}" rel="stylesheet">
  <link href="{{ asset('css/nav.css') }}" rel="stylesheet">
  <link href="{{ asset('css/carousel.css') }}" rel="stylesheet">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  @yield('styles')
</head>
<body>
  
  <?php $is_iPad = (strstr($_SERVER['HTTP_USER_AGENT'],'iPad')) ? true : false; ?>

  @if($is_iPad)

    @include('includes.inav')

  @else

    @include('includes.nav')

  @endif

  <main role="main">

    @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif

    @if(session('message'))
        @include('partials.success')
    @endif

    @yield('content')

    @include('includes.footer')
  </main>

    <!-- Bootstrap core JavaScript
      ================================================== -->
      <!-- Placed at the end of the document so the pages load faster -->
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="js/assets/vendor/jquery-slim.min.js"><\/script>')</script>
      <script src="{{ asset('js/assets/vendor/popper.min.js') }}"></script>
      <script src="{{ asset('js/bootstrap.min.js') }}"></script>
      <script src="{{ asset('js/productapplications.js') }}"></script>
      <script src="{{ asset('js/carousel.js') }}"></script>
      <script src="{{ asset('js/nav.js') }}"></script>
      <script src="{{ asset('js/productdescription.js') }}"></script>
      <?php 
          $url = explode('/', Request::url());
          $pages = array('about-us', 'third-party-products');
          $fixheight = false;

          foreach ($pages as $page) {
            if(in_array($page, $url)) {
              $fixheight = true;
            }
          }
      ?>
      <?php if($fixheight): ?>
      <script src="{{ asset('js/fixheight.js') }}"></script>
      <?php endif; ?>
      
      @yield('scripts')
    </body>
    </html>
