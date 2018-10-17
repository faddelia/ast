  <!-- <= tablet -->
  <header class="nav-header-border">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <nav class="navbar navbar-light small-bg-light">
            <a class="navbar-brand" href="{{ URL::to('/') }}/"><img src="{{ URL::to('/') }}/images/astlogo200.png" title="Advanced Spectral Technology, Inc. Logo" alt="Advanced Spectral Technology, Inc. Logo"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
              <ul id="mobile-nav" class="nav flex-column">
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#products-menu" id="navbarDropdown" role="button" data-toggle="collapse" aria-haspopup="true" aria-expanded="false" aria-controls="products-menu">
                    Products
                  </a>
                  <div id="products-menu" class="collapse">
                    <span class="dropdown-item">Inspect &amp; Metrology:</span>
                    <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-300">AST-300</a>
                    <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-200">AST-200</a>
                    <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-s200t">AST-S200T</a>
                    <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-m150t">AST-M150T</a>
                    <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-m200c">AST-M200C</a>
                    <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-200h">AST-200H</a>
                    <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-230m">AST-230M</a>
                    <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-macro-imager">AST Macro Imager</a>
                    <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-autocollimator">AST Autocollimator</a>
                    <a class="dropdown-item" href="{{ URL::to('/') }}/product/uscope">uScope</a>
                    <span class="dropdown-item">Plasma Surface Preparation:</span>
                    <a class="dropdown-item" href="{{ URL::to('/') }}/product/senta-ontos7">Senta Ontos7</a>
                    <span class="dropdown-item">Third Party Products</span>
                    <a class="dropdown-item" href="{{ URL::to('/') }}/third-party-products/cameras">Cameras</a>
                    <a class="dropdown-item" href="{{ URL::to('/') }}/third-party-products/adapters">Adapters</a>
                    <a class="dropdown-item" href="{{ URL::to('/') }}/third-party-products/boomstands">Boomstands</a>
                  </div>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="{{ URL::to('/') }}/about-us">About Us</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="{{ URL::to('/') }}/contact">Contact</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link active" href="{{ URL::to('/') }}/">Home</a>
                </li>
              </ul>
            </div>
          </nav>
        </div>
      </div>
    </div>
  </header>