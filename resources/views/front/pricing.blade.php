@extends('front.layout.index')
@section('content')


<!-- banner section start-->
<section class="banner-section pt-120 pb-120">
    <div class="container mt-10 mt-lg-0 pt-15 pt-lg-20 pb-5 pb-lg-0">
      <div class="row">
        <div class="col-12 breadcrumb-area">
          <h2 class="mb-4">Invest Now</h2>
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb mb-0">
              <li class="breadcrumb-item"><a href="index.html">Home</a></li>
              <li
                class="breadcrumb-item ms-2 ps-7 active"
                aria-current="page"
              >
                <span>Invest Now</span>
              </li>
            </ol>
          </nav>
        </div>
      </div>
    </div>
  </section>
  <!-- banner section end -->

  <!--CHOOSE YOUR PACKAGE On start-->
  <section class="trade_on a2-bg pt-120 pb-120 position-relative z-0">
    <div class="animation position-absolute top-0 left-0 w-100 h-100 z-n1">
      <img
        src="{{url('website')}}/assets/images/coin.png"
        alt="vector"
        class="position-absolute d-none d-md-flex previewShapeRevX"
      />
      <img
        src="{{url('website')}}/assets/images/star2.png"
        alt="vector"
        class="position-absolute d-none d-xl-flex push_animat"
      />
      <img
        src="{{url('website')}}/assets/images/coin_vector.png"
        alt="vector"
        class="position-absolute d-none d-xxxl-flex bottom-0 end-0 previewShapeRevX opacity-50"
      />
    </div>
    <div class="container">
      <div
        class="row gy-10 gy-xxl-0 justify-content-center justify-content-xxl-between align-items-center"
      >
        <div class="col-lg-12 col-xxl-12">
          <div class="trade_on__content">
            <span class="heading s1-color fs-five mb-5"
              >CHOOSE YOUR PACKAGE</span
            >
            <h3 class="mb-4 mb-lg-5">
              Tailored Pricing for Your Financial Goals
            </h3>
          </div>
        </div>
      </div>

      <div class="row">
        @foreach ($pakeges as $val)
            
        <div class="col-md-4">
          <div class="pricing-table purple">
            <!-- Table Head -->
            <div class="pricing-label"><?= getCategoryTitle($val->category) ?></div>

            {{-- <h2>Features:</h2> --}}

            <!-- Features -->
            <div class="pricing-features">
              <div class="feature"><?= $val->deac?></div>
            </div>
            <!-- Price -->
            <div class="price-tag">
              <span class="symbol"><?=$val->currency ?></span>
              <span class="amount"><?=$val->ammount ?></span>
              <span class="after">/<?=$val->formate ?></span>
            </div>
            <!-- Button -->
            <a class="price-button" href="/sign-in">Get Started</a>
          </div>
        </div>
        
        @endforeach
      </div>
    </div>
  </section>
  <!-- CHOOSE YOUR PACKAGE On end -->


@endsection