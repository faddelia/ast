  @extends('layouts.master')

  @section('content')
  <div id="main-body-wht">
    <div id="carousel-container" class="carousel slide" data-ride="carousel">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="row">
              <div class="col">
                <div id="carousel-ipad" class="carousel-inner">
                  <div class="is_iPad carousel-item active">
                    <div class="container">
                      <img class="first-slide" src="images/01.png" alt="First slide">
                    </div>
                  </div>
                  <div class="is_iPad carousel-item">
                    <div class="container">
                      <img class="second-slide" src="images/02.png" alt="Second slide">
                    </div>
                  </div>
                  <div class="is_iPad carousel-item">
                    <div class="container">
                      <img class="third-slide" src="images/03.png" alt="Third slide">
                    </div>
                  </div>
                  <div class="is_iPad carousel-item">
                    <div class="container">
                      <img class="fourth-slide" src="images/04.png" alt="Fourth slide">
                    </div>
                  </div>
                  <div class="is_iPad carousel-item">
                    <div class="container">
                      <img class="fifth-slide" src="images/05.png" alt="Fifth slide">
                    </div>
                  </div>
                  <div class="is_iPad carousel-item">
                    <div class="container">
                      <img class="sixth-slide" src="images/ontospanelwithlogos.png" alt="Sixth slide">
                    </div>
                  </div>
                </div>

                <div id="solutions-sm" class="row carousel-item">
                  <p>Manual to fully automated solutions for your most demanding inspection and metrology applications</p>
                  <a href="/products" type="button" class="btn btn-lg btn-outline-light">See All Products</a>
                </div>
              </div>

            </div>

            <div class="row">
              <a class="carousel-control-prev" href="#carousel-container" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#carousel-container" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
            </div>

          </div>
        </div>
      </div>

    </div>

    <div class="" style="background-color: #ccc;">
    <div class="container">
      <div id="solutions-lg">
        <div class="col-lg-12">
          <div class="container">
            <div class="row">
              <div class="col-9 d-flex align-items-center">
                Manual to fully automated solutions for your most demanding inspection and metrology applications
              </div>
              <div class="col-3 d-flex align-items-center justify-content-end">
                <a href="/products" type="button" class="btn btn-sm btn-outline-dark">See All Products</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>

    <!-- announcement box -->
    <div id="announcements" class="container">
      <div class="row">
        <div class="col-lg-12">
          <a class="trade-show-highlights" href="tradeshows.html">Trade Show Highlights: See our recent appearances at Semicon West, MD&amp;M, and ISTFA.</a>
        </div>
      </div>
      @foreach($announcements as $announcement)
        @if($announcement->active == 1)
          <div class="row">
            <div class="col-lg-12">
                <span id="announcement">{{ $announcement->announcement }}</span>
            </div>
          </div>
        @endif
      @endforeach
    </div>

    <!-- Main content -->

    <div class="container">
      <div class="row">
        <div id="main-about" class="col-lg-12">
          
          {!! $page->body !!}

        </div>
      </div>
    </div>

    <!-- Product applications -->
    <div id="productApplications">
      <div class="container">

        <div class="row">
          <div id="pa-header" class="col-lg-12">
            Product Applications
          </div>
        </div>

        <div class="row">
          <div class="col-lg-12">

            <ul class="nav nav-tabs nav-fill flex-column flex-lg-row" id="myTab" role="tablist">
              <li class="nav-item">
                <a class="nav-link active" id="defect-inspection-tab" data-toggle="tab" href="#defect-inspection" role="tab" aria-controls="defect-inspection" aria-selected="true">Defect Inspection</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="metrology-tab" data-toggle="tab" href="#metrology" role="tab" aria-controls="metrology" aria-selected="false">Metrology</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="infrared-thermal-imaging-tab" data-toggle="tab" href="#infrared-thermal-imaging" role="tab" aria-controls="infrared-thermal-imaging" aria-selected="false">Infrared &amp; Thermal Imaging</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="plasma-surface-preparation-tab" data-toggle="tab" href="#plasma-surface-preparation" role="tab" aria-controls="plasma-surface-preparation" aria-selected="false">Plasma Surface Preparation</a>
              </li>
            </ul>
            <div class="tab-content" id="myTabContent">
              <div class="tab-pane fade show active" id="defect-inspection" role="tabpanel" aria-labelledby="defect-inspection">

                <div class="container pa-container">
                  <div class="row">
                    <div class="col-lg-4 pa-image">
                      <img src="images/stock_defect2.jpg">
                    </div>
                    <div class="col-lg-8">

                      <span class="pa-heading">Defect Inspection</span>

                      <p>
                        Defect inspection and detection is a vital step in the production of critical compoments, such as those used in the aerospace, medical, and semiconductor/MEMS industries. AST carries a full line of systems specifically designed for inspection, defect detection and fault analysis. Additionally, AST can customize our systems to accommodate your specific requirement.
                      </p>

                      <p>
                        Recommended Systems:
                        <ul>
                          <li>AST-200 Advanced Defect Inspection &amp; Metrology System</li>

                          <li>AST-200H Advanced Defect Inspection &amp; Metrology System with Wafer Handling</li>

                          <li>AST-M200C Mid Wave Infrared Inspection System</li>

                          <li>AST-S200T Short Wave Infrared Microscope System</li>

                          <li>AST-230M Ergonomic Metrology Workstation</li>

                          <li>AST-M150T Mid Wave Infrared Microscope for Defect Detection &amp; Analysis</li>

                          <li>uScope</li>

                          <li>Customized Z-Scopes for all your inspection and measurement requirements</li>
                        </ul>
                      </p>
                    </div>
                  </div>
                </div>

              </div>
              <div class="tab-pane fade" id="metrology" role="tabpanel" aria-labelledby="metrology">

                <div class="container pa-container">
                  <div class="row">
                    <div class="col-lg-4 pa-image">
                      <img src="images/stock_metrology2.jpg">
                    </div>
                    <div class="col-lg-8">

                      <span class="pa-heading">Metrology</span>

                      <p>
                        Metrology is a post-process series of measurements by which manufactured parts are checked and verified for overall consistency.  Many industries, such as aerospace, must maintain tight tolerances and shapes for their components, and the science of metrology is an indispensable part of their production process. AST employs the highest quality materials and components in their metrology systems, which ensure  accuracy in your mission-critical products.
                      </p>

                      <p>
                        Recommended Systems:
                        
                        <ul>
                          <li>AST-200 Advanced Defect Inspection &amp; Metrology System</li>

                          <li>AST-200H Advanced Defect Inspection &amp; Metrology System with Wafer Handling</li>

                          <li>AST-230M Ergonomic Metrology Workstation</li>

                          <li>Customized Z-Scopes for all your inspection and measurement requirements</li>
                        </ul>
                      </p>
                    </div>
                  </div>
                </div>

              </div>
              <div class="tab-pane fade" id="infrared-thermal-imaging" role="tabpanel" aria-labelledby="infrared-thermal-imaging">

                <div class="container pa-container">
                  <div class="row">
                    <div class="col-lg-4 pa-image">
                      <img src="images/stock_infrared2.jpg">
                    </div>
                    <div class="col-lg-8">

                      <span class="pa-heading">Infrared &amp; Thermal Imaging</span>

                      <p>
                        Allows defect inspection and metrology within materials transparent to the infrared wavelengths being used. Thermal Imaging detects infrared radiation emitted by all objects above absolute zero according to the black body radiation law. Thermography makes it possible to see one's environment with or without visible illumination, allowing one to see variations in temperature.
                      </p>

                      <p>
                        Recommended Systems:
                        <ul>
                          <li>AST-200 Advanced Defect Inspection &amp; Metrology System</li>

                          <li>AST-200H Advanced Defect Inspection &amp; Metrology System with Wafer Handling</li>

                          <li>AST-M200C Mid Wave Infrared Inspection System</li>

                          <li>AST-S200T Short Wave Infrared Microscope System</li>

                          <li>AST-M150T Mid Wave Infrared Microscope for Defect Detection &amp; Analysis</li>

                          <li>uScope</li>

                          <li>Customized Z-Scopes for all your inspection and measurement requirements</li>
                        </ul>
                      </p>
                    </div>
                  </div>
                </div>

              </div>
              <div class="tab-pane fade" id="plasma-surface-preparation" role="tabpanel" aria-labelledby="plasma-surface-preparation">

                <div class="container pa-container">
                  <div class="row">
                    <div class="col-lg-4 pa-image">
                      <img src="images/stock_plasma2.jpg">
                    </div>
                    <div class="col-lg-8">

                      <span class="pa-heading">Plasma Surface Preparation</span>

                      <p>
                        Because oxides and organic contaminants can compromise certain production processes, such as solder bonding, wire bonding, thin film deposition, and plating, it is critical to have a substrate that is properly cleaned of contaminants and ready to accept these subsequent processes. AST provides industry with the Ontos7, a plasma-based surface cleaning and preparation system, with zero hazardous byproducts or waste.
                      </p>

                      <p>
                        Recommended Systems:
                        <ul>
                          <li>Setna Ontos7 Atmospheric Plasma for Surface Preparation</li>
                        </ul>
                        <img src="images/setna_logo_white.png">&nbsp;&nbsp;<img src="images/ontos_logo_white.png">
                      </p>
                      
                    </div>
                  </div>
                </div>

              </div>
            </div>

          </div>
        </div>
      </div>
    </div>
  </div>
    @endsection