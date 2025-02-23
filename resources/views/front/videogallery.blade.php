@extends('front.layout.index')
@section('content')


    <!-- Breadcrumbs -->
    <div class="breadcrumbs overlay">
      <div class="container">
        <div class="bread-inner">
          <div class="row">
            <div class="col-12">
              <h2>Video Gallery</h2>
              <ul class="bread-list">
                <li><a href="/">Home</a></li>
                <li><i class="icofont-simple-right"></i></li>
                <li class="active">Video Gallery</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- End Breadcrumbs -->

    <!-- image gallery start -->
    <div class="container-xxl py-5">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="section-title">
              <h2>Image Gallery</h2>
              <img src="{{ url('website') }}/img/section-img.png" alt="#" />
              <p>
                Lorem ipsum dolor sit amet consectetur adipiscing elit praesent
                aliquet. pretiumts
              </p>
            </div>
          </div>
        </div>

        <!-- nav -->
        <ul
          class="nav nav-tabs mb-lg-5"
          id="myTab"
          role="tablist"
          style="display: flex; align-items: center; justify-content: center"
        >
          <li class="nav-item" role="presentation">
            <button
              class="nav-link active"
              id="Shirt-tab"
              data-toggle="tab"
              data-target="#Shirt"
              type="button"
              role="tab"
              aria-controls="Shirt"
              aria-selected="true"
            >
              Shirt
            </button>
          </li>
          <li class="nav-item" role="presentation">
            <button
              class="nav-link"
              id="Pant-tab"
              data-toggle="tab"
              data-target="#Pant"
              type="button"
              role="tab"
              aria-controls="Pant"
              aria-selected="false"
            >
              Pant
            </button>
          </li>
          <li class="nav-item" role="presentation">
            <button
              class="nav-link"
              id="Blazer-tab"
              data-toggle="tab"
              data-target="#Blazer"
              type="button"
              role="tab"
              aria-controls="Blazer"
              aria-selected="false"
            >
              Blazer
            </button>
          </li>
          <li class="nav-item" role="presentation">
            <button
              class="nav-link"
              id="Jacket-tab"
              data-toggle="tab"
              data-target="#Jacket"
              type="button"
              role="tab"
              aria-controls="Jacket"
              aria-selected="false"
            >
              Jacket
            </button>
          </li>
          <li class="nav-item" role="presentation">
            <button
              class="nav-link"
              id="Kurta-tab"
              data-toggle="tab"
              data-target="#Kurta"
              type="button"
              role="tab"
              aria-controls="Kurta"
              aria-selected="false"
            >
              Kurta
            </button>
          </li>
          <li class="nav-item" role="presentation">
            <button
              class="nav-link"
              id="Formal-tab"
              data-toggle="tab"
              data-target="#Formal"
              type="button"
              role="tab"
              aria-controls="Formal"
              aria-selected="false"
            >
              Formal
            </button>
          </li>
        </ul>
        <div class="tab-content" id="myTabContent">
          <div
            class="tab-pane fade show active"
            id="Shirt"
            role="tabpanel"
            aria-labelledby="Shirt-tab"
          >
            <!-- Gallery -->
            <div class="row">
            @foreach($video as $val)
            <div class="col-lg-6 mb-5">
              <div class="card">
                <video
                  src="https://codingyaar.com/wp-content/uploads/video-in-bootstrap-card.mp4"
                  class="card-img-top"
                  controls
                ></video>
              </div>
            </div>
            @endforeach
              
            </div>
            <!-- Gallery -->
          </div>
          <div
            class="tab-pane fade"
            id="Pant"
            role="tabpanel"
            aria-labelledby="Pant-tab"
          >
            <!-- Gallery -->
            <div class="row">
              <div class="col-lg-6 mb-5">
                <div class="card">
                  <video
                    src="https://codingyaar.com/wp-content/uploads/video-in-bootstrap-card.mp4"
                    class="card-img-top"
                    controls
                  ></video>
                </div>
              </div>
              <div class="col-lg-6 mb-5">
                <div class="card">
                  <video
                    src="https://codingyaar.com/wp-content/uploads/video-in-bootstrap-card.mp4"
                    class="card-img-top"
                    controls
                  ></video>
                </div>
              </div>
            </div>
            <!-- Gallery -->
          </div>
          <div
            class="tab-pane fade"
            id="Blazer"
            role="tabpanel"
            aria-labelledby="Blazer-tab"
          >
            <!-- Gallery -->
            <div class="row">
              <div class="col-lg-6 mb-5">
                <div class="card">
                  <video
                    src="https://codingyaar.com/wp-content/uploads/video-in-bootstrap-card.mp4"
                    class="card-img-top"
                    controls
                  ></video>
                </div>
              </div>
              <div class="col-lg-6 mb-5">
                <div class="card">
                  <video
                    src="https://codingyaar.com/wp-content/uploads/video-in-bootstrap-card.mp4"
                    class="card-img-top"
                    controls
                  ></video>
                </div>
              </div>
            </div>
            <!-- Gallery -->
          </div>
          <div
            class="tab-pane fade"
            id="Jacket"
            role="tabpanel"
            aria-labelledby="Jacket-tab"
          >
            <!-- Gallery -->
            <div class="row">
              <div class="col-lg-6 mb-5">
                <div class="card">
                  <video
                    src="https://codingyaar.com/wp-content/uploads/video-in-bootstrap-card.mp4"
                    class="card-img-top"
                    controls
                  ></video>
                </div>
              </div>
              <div class="col-lg-6 mb-5">
                <div class="card">
                  <video
                    src="https://codingyaar.com/wp-content/uploads/video-in-bootstrap-card.mp4"
                    class="card-img-top"
                    controls
                  ></video>
                </div>
              </div>
            </div>
            <!-- Gallery -->
          </div>
          <div
            class="tab-pane fade"
            id="Kurta"
            role="tabpanel"
            aria-labelledby="Kurta-tab"
          >
            <!-- Gallery -->
            <div class="row">
              <div class="col-lg-6 mb-5">
                <div class="card">
                  <video
                    src="https://codingyaar.com/wp-content/uploads/video-in-bootstrap-card.mp4"
                    class="card-img-top"
                    controls
                  ></video>
                </div>
              </div>
              <div class="col-lg-6 mb-5">
                <div class="card">
                  <video
                    src="https://codingyaar.com/wp-content/uploads/video-in-bootstrap-card.mp4"
                    class="card-img-top"
                    controls
                  ></video>
                </div>
              </div>
            </div>
            <!-- Gallery -->
          </div>
          <div
            class="tab-pane fade"
            id="Formal"
            role="tabpanel"
            aria-labelledby="Formal-tab"
          >
            <!-- Gallery -->
            <div class="row">
              <div class="col-lg-6 mb-5">
                <div class="card">
                  <video
                    src="https://codingyaar.com/wp-content/uploads/video-in-bootstrap-card.mp4"
                    class="card-img-top"
                    controls
                  ></video>
                </div>
              </div>
              <div class="col-lg-6 mb-5">
                <div class="card">
                  <video
                    src="https://codingyaar.com/wp-content/uploads/video-in-bootstrap-card.mp4"
                    class="card-img-top"
                    controls
                  ></video>
                </div>
              </div>
            </div>
            <!-- Gallery -->
          </div>
        </div>
      </div>
    </div>
    <!-- image gallery end -->

    @endsection
