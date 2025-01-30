<!DOCTYPE html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>SP COTTON INDUSTRIES</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- favicon
            ============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/logo/logo.png" />
    <!-- Google Fonts
            ============================================ -->
    <link
      href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900"
      rel="stylesheet"
    />
    <!-- Bootstrap CSS
            ============================================ -->
    <link rel="stylesheet" href="{{ url('workshop') }}/css/bootstrap.min.css" />
    <!-- Bootstrap CSS
            ============================================ -->
    <link rel="stylesheet" href="{{ url('workshop') }}/css/font-awesome.min.css" />
    <!-- owl.carousel CSS
            ============================================ -->
    <link rel="stylesheet" href="{{ url('workshop') }}/css/owl.carousel.css" />
    <link rel="stylesheet" href="{{ url('workshop') }}/css/owl.theme.css" />
    <link rel="stylesheet" href="{{ url('workshop') }}/css/owl.transitions.css" />
    <!-- meanmenu CSS
            ============================================ -->
    <link rel="stylesheet" href="{{ url('workshop') }}/css/meanmenu/meanmenu.min.css" />
    <!-- animate CSS
            ============================================ -->
    <link rel="stylesheet" href="{{ url('workshop') }}/css/animate.css" />
    <!-- normalize CSS
            ============================================ -->
    <link rel="stylesheet" href="{{ url('workshop') }}/css/normalize.css" />
    <!-- mCustomScrollbar CSS
            ============================================ -->
    <link rel="stylesheet" href="{{ url('workshop') }}/css/chosen/chosen.css" />
    <link
      rel="stylesheet"
      href="{{ url('workshop') }}/css/scrollbar/jquery.mCustomScrollbar.min.css"
    />
    <!-- jvectormap CSS
            ============================================ -->
    <link rel="stylesheet" href="{{ url('workshop') }}/css/jvectormap/jquery-jvectormap-2.0.3.css" />
    <!-- notika icon CSS
            ============================================ -->
    <link rel="stylesheet" href="{{ url('workshop') }}/css/notika-custom-icon.css" />
    <!-- wave CSS
            ============================================ -->
    <link rel="stylesheet" href="{{ url('workshop') }}/css/wave/waves.min.css" />
    <!-- main CSS
            ============================================ -->
    <link rel="stylesheet" href="{{ url('workshop') }}/css/main.css" />
    <!-- style CSS
            ============================================ -->
    <link rel="stylesheet" href="{{ url('workshop') }}/style.css" />
    <!-- responsive CSS
            ============================================ -->
    <link rel="stylesheet" href="{{ url('workshop') }}/css/responsive.css" />
    <!-- modernizr JS
            ============================================ -->
    <script src="{{ url('workshop') }}/js/vendor/modernizr-2.8.3.min.js"></script>

    <!-- dropzone CSS
		============================================ -->
    <link rel="stylesheet" href="{{ url('workshop') }}/css/dropzone/dropzone.css" />
  </head>

  <body>
    <!-- Start Header Top Area -->
    <div class="header-top-area">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
            <div class="logo-area">
              <a href="#"
                ><img src="img/logo/logo.png" alt="" style="width: 100px"
              /></a>
            </div>
          </div>
          <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
            <div class="header-top-menu">
              <ul class="nav navbar-nav notika-top-nav">
                <li class="nav-item nc-al">
                  <a
                    href="#"
                    data-toggle="dropdown"
                    role="button"
                    aria-expanded="false"
                    class="nav-link dropdown-toggle"
                  >
                    <span><i class="notika-icon notika-support"></i> </span>
                  </a>
                  <div
                    role="menu"
                    class="dropdown-menu message-dd notification-dd animated zoomIn"
                  >
                    <div class="hd-message-info">
                      <a href="javascript:void(0)">
                        <div class="hd-message-sn">
                          <div class="hd-message-img">
                            <img src="img/logo/logo.png" alt="img" />
                          </div>
                          <div class="hd-mg-ctn">
                            <h3>{{ Auth::user()->name }}</h3>
                          </div>
                        </div>
                      </a>
                    </div>
                    <hr />
                    <div class="hd-mg-va">
                      <a href="/logout">Logout</a>
                    </div>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- End Header Top Area -->

    <!-- Mobile Menu start -->
    <div class="mobile-menu-area">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="mobile-menu">
              <nav id="dropdown">
                <ul class="mobile-menu-nav">
                  <li>
                    <a href="/workshop/dashboard">Today Work</a>
                  </li>

                  <li>
                    <a href="/workshop/completed-work">Completed Work</a>
                  </li>

                  <li>
                    <a href="/workshop/new-work"> New Work List</a>
                  </li>
                </ul>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Mobile Menu end -->

    <!-- Main Menu area start-->
    <div class="main-menu-area mg-tb-40">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <ul class="nav nav-tabs notika-menu-wrap menu-it-icon-pro">
              <li class="active">
                <a href="/workshop/dashboard"
                  ><i class="notika-icon notika-windows"></i> Today Work</a
                >
              </li>
              <li>
                <a href="/workshop/completed-work">Completed Work</a>
              </li>

              <li>
                <a href="/workshop/work-list"
                  ><i class="notika-icon notika-form"></i> New Work
                  <span class="text-danger">(20)</span></a
                >
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <!-- Main Menu area End-->

    @yield('content')




    <!-- Start Footer area-->

    <!-- End Footer area-->

    <!-- jquery
		============================================ -->
        <script src="{{ url('workshop') }}/js/vendor/jquery-1.12.4.min.js"></script>
        <!-- bootstrap JS
            ============================================ -->
        <script src="{{ url('workshop') }}/js/bootstrap.min.js"></script>
        <!-- wow JS
            ============================================ -->
        <script src="{{ url('workshop') }}/js/wow.min.js"></script>
        <!-- price-slider JS
            ============================================ -->
        <script src="{{ url('workshop') }}/js/jquery-price-slider.js"></script>
        <!-- owl.carousel JS
            ============================================ -->
        <script src="{{ url('workshop') }}/js/owl.carousel.min.js"></script>
        <!-- scrollUp JS
            ============================================ -->
        <script src="{{ url('workshop') }}/js/jquery.scrollUp.min.js"></script>
        <!-- meanmenu JS
            ============================================ -->
        <script src="{{ url('workshop') }}/js/meanmenu/jquery.meanmenu.js"></script>
        <!-- counterup JS
            ============================================ -->
        <script src="{{ url('workshop') }}/js/counterup/jquery.counterup.min.js"></script>
        <script src="{{ url('workshop') }}/js/counterup/waypoints.min.js"></script>
        <script src="{{ url('workshop') }}/js/counterup/counterup-active.js"></script>
        <!-- mCustomScrollbar JS
            ============================================ -->
        <script src="{{ url('workshop') }}/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
        <!-- sparkline JS
            ============================================ -->
        <script src="{{ url('workshop') }}/js/sparkline/jquery.sparkline.min.js"></script>
        <script src="{{ url('workshop') }}/js/sparkline/sparkline-active.js"></script>
        <!-- flot JS
            ============================================ -->
        <script src="{{ url('workshop') }}/js/flot/jquery.flot.js"></script>
        <script src="{{ url('workshop') }}/js/flot/jquery.flot.resize.js"></script>
        <script src="{{ url('workshop') }}/js/flot/flot-active.js"></script>
        <!-- knob JS
            ============================================ -->
        <script src="{{ url('workshop') }}/js/knob/jquery.knob.js"></script>
        <script src="{{ url('workshop') }}/js/knob/jquery.appear.js"></script>
        <script src="{{ url('workshop') }}/js/knob/knob-active.js"></script>
        <!-- Input Mask JS
            ============================================ -->
        <script src="{{ url('workshop') }}/js/jasny-bootstrap.min.js"></script>
        <!-- icheck JS
            ============================================ -->
        <script src="{{ url('workshop') }}/js/icheck/icheck.min.js"></script>
        <script src="{{ url('workshop') }}/js/icheck/icheck-active.js"></script>
        <!-- rangle-slider JS
            ============================================ -->
        <script src="{{ url('workshop') }}/js/rangle-slider/jquery-ui-1.10.4.custom.min.js"></script>
        <script src="{{ url('workshop') }}/js/rangle-slider/jquery-ui-touch-punch.min.js"></script>
        <script src="{{ url('workshop') }}/js/rangle-slider/rangle-active.js"></script>
        <!-- datapicker JS
            ============================================ -->
        <script src="{{ url('workshop') }}/js/datapicker/bootstrap-datepicker.js"></script>
        <script src="{{ url('workshop') }}/js/datapicker/datepicker-active.js"></script>
        <!-- bootstrap select JS
            ============================================ -->
        <script src="{{ url('workshop') }}/js/bootstrap-select/bootstrap-select.js"></script>
        <!--  color-picker JS
            ============================================ -->
        <script src="{{ url('workshop') }}/js/color-picker/farbtastic.min.js"></script>
        <script src="{{ url('workshop') }}/js/color-picker/color-picker.js"></script>
        <!--  notification JS
            ============================================ -->
        <script src="{{ url('workshop') }}/js/notification/bootstrap-growl.min.js"></script>
        <script src="{{ url('workshop') }}/js/notification/notification-active.js"></script>
        <!--  summernote JS
            ============================================ -->
        <script src="{{ url('workshop') }}/js/summernote/summernote-updated.min.js"></script>
        <script src="{{ url('workshop') }}/js/summernote/summernote-active.js"></script>
        <!-- dropzone JS
            ============================================ -->
        <script src="{{ url('workshop') }}/js/dropzone/dropzone.js"></script>
        <!--  wave JS
            ============================================ -->
        <script src="{{ url('workshop') }}/js/wave/waves.min.js"></script>
        <script src="{{ url('workshop') }}/js/wave/wave-active.js"></script>
        <!--  chosen JS
            ============================================ -->
        <!--  chosen JS
            ============================================ -->
        <script src="{{ url('workshop') }}/js/chosen/chosen.jquery.js"></script>
        <!--  Chat JS
            ============================================ -->
        <script src="{{ url('workshop') }}/js/chat/jquery.chat.js"></script>
        <!--  todo JS
            ============================================ -->
        <script src="{{ url('workshop') }}/js/todo/jquery.todo.js"></script>
        <!-- plugins JS
            ============================================ -->
        <script src="{{ url('workshop') }}/js/plugins.js"></script>
        <!-- main JS
            ============================================ -->
        <script src="{{ url('workshop') }}/js/main.js"></script>

        <script src="{{ url('workshop') }}/js/dropzone/dropzone.js"></script>
        <!-- tawk chat JS
            ============================================ -->
        <!-- <script src="{{ url('workshop') }}/js/tawk-chat.js"></script> -->
      </body>
    </html>
