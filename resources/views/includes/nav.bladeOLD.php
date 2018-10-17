  <!-- <= tablet -->
  <header class="d-block d-lg-none nav-header-border">
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

  <!-- >= small laptop -->
  <header class="d-none d-lg-block nav-header-border">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <nav class="navbar navbar-expand-lg navbar-light fixed-top bg-light">
            <div id="phone" class="d-none d-lg-block d-xl-block">
              <span>
                Tel: 805.527.7657 (USA)
              </span>
            </div>

            <div id="navbarCollapse" class="collapse navbar-collapse">
              <a class="navbar-brand mr-auto" href="{{ URL::to('/') }}/"><img src="{{ URL::to('/') }}/images/astlogo250.png" title="Advanced Spectral Technology, Inc. Logo" alt="Advanced Spectral Technology, Inc. Logo"></a>
              <ul id="header-nav" class="navbar-nav">
                <li id="products-link" class="nav-item dropdown">
                  <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Products</a>
                  <div id="navDropdown" class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <div class="container">
                      <div class="row">
                        <div class="col-lg-4 nav-table-header">
                          Inspection &amp; Metrology
                        </div>
                        <div class="col-lg-4">
                          &nbsp;
                        </div>
                        <div class="col-lg-4 nav-table-header nav-table-header-border">
                          ATMOSPHERIC PLASMA SURFACE PREPARATION
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-lg-4">
                          <div class="container">
                            <div class="row">
                              <div class="col-4 nav-img">
                                <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-300">
                                  <img src="{{ URL::to('/') }}/images/95_300.jpg" alt="AST-300" title="AST-300">
                                </a>
                              </div>
                              <div class="col">
                                <p class="nav-header">
                                  <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-300">
                                    AST-300
                                  </a>
                                </p>
                                <p class="nav-body">
                                  Advanced Inspection &amp; Metrology System
                                </p>
                              </div>
                            </div>
                          </div>
                          <div class="container">
                            <div class="row">
                              <div class="col-4 nav-img">
                                <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-200">
                                  <img src="{{ URL::to('/') }}/images/95_200.jpg" alt="AST-200" title="AST-200">
                                </a>
                              </div>
                              <div class="col">
                                <p class="nav-header">
                                  <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-200">AST-200</a>
                                </p>
                                <p class="nav-body">
                                  Advanced Defect Inspection &amp; Metrology System
                                </p>
                              </div>
                            </div>
                          </div>
                          <div class="container">
                            <div class="row">
                              <div class="col-4 nav-img">
                                <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-s200t">
                                  <img src="{{ URL::to('/') }}/images/95_s200t.jpg" alt="AST-S200T" title="AST-S200T">
                                </a>
                              </div>
                              <div class="col">
                                <p class="nav-header">
                                  <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-s200t">AST-S200T</a>
                                </p>
                                <p class="nav-body">
                                  Short Wave Infrared Microscope
                                </p>
                              </div>
                            </div>
                          </div>
                          <div class="container">
                            <div class="row">
                              <div class="col-4 nav-img">
                                <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-m150t">
                                  <img src="{{ URL::to('/') }}/images/70_astm150t.jpg" alt="AST-M150T" title="AST-M150T">
                                </a>
                              </div>
                              <div class="col">
                                <p class="nav-header">
                                  <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-m150t">AST-M150T</a>
                                </p>
                                <p class="nav-body">
                                  Mid Wave Infrared for Defect Detection and Analysis
                                </p>
                              </div>
                            </div>
                          </div>
                          <div class="container">
                            <div class="row">
                              <div class="col-4 nav-img">
                                <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-m200c">
                                  <img src="{{ URL::to('/') }}/images/95_m200c.jpg" alt="AST-M200C" title="AST-M200C">
                                </a>
                              </div>
                              <div class="col">
                                <p class="nav-header">
                                  <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-m200c">AST-M200C</a>
                                </p>
                                <p class="nav-body">
                                  Mid Wave Infrared Inspection System
                                </p>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-lg-4">
                          <div class="container">
                            <div class="row">
                              <div class="col-4 nav-img">
                                <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-200h">
                                  <img src="{{ URL::to('/') }}/images/95_200h.jpg" alt="AST-200H" title="AST-200H">
                                </a>
                              </div>
                              <div class="col">
                                <p class="nav-header">
                                  <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-200h">AST-200H</a>
                                </p>
                                <p class="nav-body">
                                  Advanced Defect Inspection &amp; Metrology System with Wafer Handling
                                </p>
                              </div>
                            </div>
                          </div>
                          <div class="container">
                            <div class="row">
                              <div class="col-4 nav-img">
                                <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-230m">
                                  <img src="{{ URL::to('/') }}/images/95_230m.jpg" alt="AST-230M" title="AST-230M">
                                </a>
                              </div>
                              <div class="col">
                                <p class="nav-header">
                                  <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-230m">AST-230M</a>
                                </p>
                                <p class="nav-body">
                                  Metrology Inspection System
                                </p>
                              </div>
                            </div>
                          </div>
                          <div class="container">
                            <div class="row">
                              <div class="col-4 nav-img">
                                <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-macro-imager">
                                  <img src="{{ URL::to('/') }}/images/70_macro_imager.jpg" alt="AST Macro Imager" title="AST Macro Imager">
                                </a>
                              </div>
                              <div class="col">
                                <p class="nav-header">
                                  <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-macro-imager">AST Macro Imager</a>
                                </p>
                                <p class="nav-body">
                                  Fast, High-Resolution Imaging System
                                </p>
                              </div>
                            </div>
                          </div>
                          <div class="container">
                            <div class="row">
                              <div class="col-4 nav-img">
                                <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-autocollimator">
                                  <img src="{{ URL::to('/') }}/images/70_autocollimator.jpg" alt="AST Autocollimator" title="AST Autocollimator">
                                </a>
                              </div>
                              <div class="col">
                                <p class="nav-header">
                                  <a class="dropdown-item" href="{{ URL::to('/') }}/product/ast-autocollimator">AST Autocollimator</a>
                                </p>
                                <p class="nav-body">
                                  Highly Flexible Angle Measurement System
                                </p>
                              </div>
                            </div>
                          </div>
                          <div class="container">
                            <div class="row">
                              <div class="col-4 nav-img">
                                <a class="dropdown-item" href="{{ URL::to('/') }}/product/uscope">
                                  <img src="{{ URL::to('/') }}/images/95_uscope.jpg" alt="uScope" title="uScope">
                                </a>
                              </div>
                              <div class="col">
                                <p class="nav-header">
                                  <a class="dropdown-item" href="{{ URL::to('/') }}/product/uscope">uScope</a>
                                </p>
                                <p class="nav-body">
                                  Small Format Standard and Right Angle Viewing Microscope
                                </p>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-lg-4 nav-table-header-border">
                          <div class="container">
                            <div class="row">
                              <div class="col-4 nav-img">
                                <a class="dropdown-item" href="{{ URL::to('/') }}/product/setna-ontos7">
                                  <img src="{{ URL::to('/') }}/images/95_ontos.jpg" alt="Setna Ontos7" title="Setna Ontos7">
                                </a>
                              </div>
                              <div class="col">
                                <p class="nav-header">
                                  <a class="dropdown-item" href="{{ URL::to('/') }}/product/setna-ontos7">Setna Ontos7</a>
                                </p>
                                <p class="nav-body">
                                  Atmospheric Plasma for Surface Preparation
                                </p>
                              </div>
                            </div>
                            <div class="row no-hover">
                              <div class="col">
                                <img src="{{ URL::to('/') }}/images/blank70x70.png">
                              </div>
                            </div>
                            <div class="row no-hover">
                              <div class="col">
                                <img src="{{ URL::to('/') }}/images/blank70x70.png">
                              </div>
                            </div>
                            <div class="row no-hover">
                              <div class="col">
                                <img src="{{ URL::to('/') }}/images/blank70x70.png">
                              </div>
                            </div>
                            <div class="row no-hover">
                              <div class="col" style="text-align: right;">
                                <a href="{{ URL::to('/') }}/products"> <button id="see-all-products" type="button" class="btn dropdown-nav-btn">See All Products</button></a>
                              </div>
                            </div>
                            <div class="row no-hover align-items-end">
                              <div class="col" style="text-align: right;">
                                <a href="{{ URL::to('/') }}/third-party-products"><button id="third-party-products" type="button" class="btn dropdown-nav-btn">Third Party Products</button></a>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </li>
                <li id="about-us-link" class="nav-item">
                  <a class="nav-link" href="{{ URL::to('/') }}/about-us">About Us</a>
                </li>
                <li id="contact-link" class="nav-item">
                  <a class="nav-link" href="{{ URL::to('/') }}/contact">Contact</a>
                </li>
                <li id="home-link" class="nav-item">
                  <a class="nav-link" href="{{ URL::to('/') }}/">Home <span class="sr-only">(current)</span></a>
                </li>
              </ul>
            </div>
          </nav>
        </div>
      </div>
    </div>
  </header>