@extends('front.layout.index')
@section('content')



 <!-- banner section start-->
 <section class="banner-section pt-120 pb-120">
  <div class="container mt-lg-0 pt-18 pt-xl-20">
    <div class="row">
      <div class="col-12 breadcrumb-area">
        <h2 class="mb-4">Referral List</h2>
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item"><a href="/">Home</a></li>
            <li
              class="breadcrumb-item ms-2 ps-7 active"
              aria-current="page"
            >
              <span>Referral List</span>
            </li>
          </ol>
        </nav>
      </div>
    </div>
  </div>
</section>
<!-- banner section end -->

<!-- Company Story start-->
<section class="company-story position-relative z-0 pt-120 pb-120">
  <div class="animation position-absolute w-100 h-100 z-n1">
    <img
      src="{{url('website')}}/assets/images/star3.png"
      alt="vector"
      class="position-absolute top-0 end-0 pt-10 pe-20 me-20 d-none d-xxl-flex previewSkew"
    />
  </div>
  <div class="container">
    <div
      class="row gy-15 gy-lg-0 justify-content-center align-items-center"
    >
      <div class="col-12">
        <h4>Referral List</h4>
        <p class="my-2">Total Referral Earning : Rs.{{ Auth::user()->refer_wallet ?? 0 }}</p>
      </div>
      <div class="col-12 mt-0">
        <table class="table table-bordered border-light text-center mt-4 text-white">
            <thead class="table-dark">
                <tr>
                    <th>SN</th>
                    <th>Username</th>
                    <th>Earning</th>
                    <th>Total Invest</th>
                    <th>Register Date</th>
                </tr>
            </thead>
            <tbody>

                @php
                    $user = DB::table('users')->where('refer_by', Auth::user()->id)->orderBy('id', 'desc')->get();
                @endphp

@foreach ($users as $key => $user)
<tr>
    <td>{{ $key + 1 }}</td>
    <td>{{ $user->name }}</td>
    <td>Rs.{{ $user->refer_by_wallet ?? 0 }}</td>
    <td>Rs.{{ $user->investments->sum('amount') ?? 0 }}</td>
    <td>{{ $user->created_at->format('d-m-Y h:i A') }}</td>
</tr>
@endforeach
            </tbody>
        </table>
        
    
      </div>
    </div>
  </div>
</section>
<!-- Company Story end -->


@endsection
