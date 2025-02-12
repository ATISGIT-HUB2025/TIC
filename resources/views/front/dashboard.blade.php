@extends('front.layout.index')
@section('content')


  <!--dashboard start-->
  <section class="privacy-policy mt-20 pt-120 pb-120">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 nb3-bg rounded-4 p-4">
          <div
            class="nav flex-column nav-pills me-3"
            id="v-pills-tab"
            role="tablist"
            aria-orientation="vertical"
          >
            <button
              class="nav-link active mb-3"
              id="v-pills-Profile-tab"
              data-bs-toggle="pill"
              data-bs-target="#v-pills-Profile"
              type="button"
              role="tab"
              aria-controls="v-pills-Profile"
              aria-selected="true"
            >
              Profile
            </button>
            <button
              class="nav-link mb-3"
              id="v-pills-Bank-tab"
              data-bs-toggle="pill"
              data-bs-target="#v-pills-Bank"
              type="button"
              role="tab"
              aria-controls="v-pills-Bank"
              aria-selected="false"
            >
              Bank Details
            </button>
           
            <button
              class="nav-link mb-3"
              id="v-pills-wallet-tab"
              data-bs-toggle="pill"
              data-bs-target="#v-pills-wallet"
              type="button"
              role="tab"
              aria-controls="v-pills-wallet"
              aria-selected="false"
            >
              My Wallet
            </button>


            <button
              class="nav-link mb-3"
              id="v-pills-Invested-tab"
              data-bs-toggle="pill"
              data-bs-target="#v-pills-Invested"
              type="button"
              role="tab"
              aria-controls="v-pills-Invested"
              aria-selected="false"
            >
              Invested Amount
            </button>

            <button
              class="nav-link mb-3"
              id="v-pills-Withdrawals-tab"
              data-bs-toggle="pill"
              data-bs-target="#v-pills-Withdrawals"
              type="button"
              role="tab"
              aria-controls="v-pills-Withdrawals"
              aria-selected="false"
            >
              Withdrawals
            </button>
            <hr />
            <div class="text-center">
              <a href="/userlogout" class="nav-link"> Logout </a>
            </div>
          </div>
        </div>
        <div class="col-lg-8">
          <div class="tab-content" id="v-pills-tabContent">
            <!-- Profile Tab -->
            <div
              class="tab-pane fade show active"
              id="v-pills-Profile"
              role="tabpanel"
              aria-labelledby="v-pills-Profile-tab"
            >
              <div class="comments-form cus-rounded-1 nb3-bg">
                <form method="POST" autocomplete="off" id="profile_form" class="message__form p-4 p-lg-8">
                  @csrf
                  <h6 class="message__title mb-8 mb-lg-10 text-warning">Profile</h6>
                  <div class="d-flex gap-7 gap-lg-8 flex-column">
                      <div class="row gy-4">
                          <!-- First Name -->
                          <div class="col-lg-6">
                              <div class="single-input">
                                  <label class="label fw_500 nw1-color mb-4" for="first_name">First Name</label>
                                  <input type="text" class="fs-seven" name="first_name" value="{{ Auth::user()->first_name ?? "" }}" id="first_name" placeholder="First Name" required />
                                  <span class="text-danger error" id="error_first_name"></span>
                              </div>
                          </div>
                          <!-- Last Name -->
                          <div class="col-lg-6">
                              <div class="single-input">
                                  <label class="label fw_500 nw1-color mb-4" for="last_name">Last Name</label>
                                  <input type="text" class="fs-seven" name="last_name" id="last_name" value="{{ Auth::user()->last_name ?? "" }}" placeholder="Last Name" required />
                                  <span class="text-danger error" id="error_last_name"></span>
                              </div>
                          </div>
                          <!-- Email -->
                          <div class="col-lg-6">
                              <div class="single-input">
                                  <label class="label fw_500 nw1-color mb-4" for="email">Email</label>
                                  <input type="email" class="fs-seven" name="email" id="email" value="{{ Auth::user()->email ?? "" }}" placeholder="Your Email" required />
                                  <span class="text-danger error" id="error_email"></span>
                              </div>
                          </div>
                          <!-- Password -->
                          <div class="col-lg-6">
                              <div class="single-input">
                                  <label class="label fw_500 nw1-color mb-4" for="password">Password</label>
                                  <input type="password" class="fs-seven" name="password" id="password" placeholder="Your Password" />
                                  <span class="text-danger error" id="error_password"></span>
                              </div>
                          </div>
                          <!-- New Password -->
                          <div class="col-lg-6">
                              <div class="single-input">
                                  <label class="label fw_500 nw1-color mb-4" for="new_password">New Password</label>
                                  <input type="password" class="fs-seven" name="new_password" id="new_password" placeholder="New Password" />
                                  <span class="text-danger error" id="error_new_password"></span>
                              </div>
                          </div>
                          <!-- Confirm Password -->
                          <div class="col-lg-6">
                              <div class="single-input">
                                  <label class="label fw_500 nw1-color mb-4" for="password_confirmation">Confirm Password</label>
                                  <input type="password" class="fs-seven" name="new_password_confirmation" id="password_confirmation" placeholder="Confirm Password" />
                                  <span class="text-danger error" id="error_new_password_confirmation"></span>
                              </div>
                          </div>
                      </div>
                  </div>
                  <span id="msg"></span>
                  <button type="submit" class="cmn-btn py-3 px-5 px-lg-6 mt-8 mt-lg-10 d-flex ms-auto" name="submit" id="submit">
                      Update<i class="bi bi-arrow-up-right"></i>
                  </button>
              </form>
              
              
              </div>
            </div>

            <!-- Bank Details Tab -->
            <div
              class="tab-pane fade"
              id="v-pills-Bank"
              role="tabpanel"
              aria-labelledby="v-pills-Bank-tab"
            >
              <div class="comments-form cus-rounded-1 nb3-bg">
                <form method="POST" autocomplete="off" id="updatebank" class="message__form p-4 p-lg-8" enctype="multipart/form-data">
                  <h6 class="message__title mb-8 mb-lg-10 text-warning">Bank Details</h6>
                  <div class="d-flex gap-7 gap-lg-8 flex-column">
                      <div class="row gy-4">
                          <!-- Account Holder Name -->
                          <div class="col-lg-6">
                              <div class="single-input">
                                  <label class="label fw_500 nw1-color mb-4" for="accountHolderName">Account Holder Name</label>
                                  <input type="text" class="fs-seven" name="account_holder_name" id="accountHolderName" 
                                      value="{{ auth()->user()->account_holder_name ?? '' }}"/>
                                  <span class="text-danger error" id="error_account_holder_name"></span>
                              </div>
                          </div>
                          <!-- Account Number -->
                          <div class="col-lg-6">
                              <div class="single-input">
                                  <label class="label fw_500 nw1-color mb-4" for="accountNumber">Account Number</label>
                                  <input type="text" class="fs-seven" name="account_number" id="accountNumber" 
                                      value="{{ auth()->user()->account_number ?? '' }}"/>
                                  <span class="text-danger error" id="error_account_number"></span>
                              </div>
                          </div>
                          <!-- IFSC Code -->
                          <div class="col-lg-6">
                              <div class="single-input">
                                  <label class="label fw_500 nw1-color mb-4" for="ifscCode">IFSC Code</label>
                                  <input type="text" class="fs-seven" name="ifsc_code" id="ifscCode" 
                                      value="{{ auth()->user()->ifsc_code ?? '' }}"/>
                                  <span class="text-danger error" id="error_ifsc_code"></span>
                              </div>
                          </div>
                          <!-- Branch Name -->
                          <div class="col-lg-6">
                              <div class="single-input">
                                  <label class="label fw_500 nw1-color mb-4" for="branchName">Branch Name</label>
                                  <input type="text" class="fs-seven" name="branch_name" id="branchName" 
                                      value="{{ auth()->user()->branch_name ?? '' }}"/>
                                  <span class="text-danger error" id="error_branch_name"></span>
                              </div>
                          </div>
                      </div>
                  </div>
                  <hr />
                  <h6 class="message__title mb-8 mb-lg-10 text-warning pt-5">Add KYC</h6>
                  <hr />
                  <div class="d-flex gap-7 gap-lg-8 flex-column">
                      <div class="row gy-4">
                          <!-- Aadhar Card Number -->
                          <div class="col-lg-6">
                              <div class="single-input">
                                  <label class="label fw_500 nw1-color mb-4" for="aadharNumber">Aadhar Card Number</label>
                                  <input type="text" class="fs-seven" name="aadhar_card_number" id="aadharNumber" 
                                      value="{{ auth()->user()->aadhar_card_number ?? '' }}"/>
                                  <span class="text-danger error" id="error_aadhar_card_number"></span>
                              </div>
                          </div>
                          <!-- Aadhar Card Upload -->
                          <div class="col-lg-6">
                              <div class="single-input">
                                  <label class="label fw_500 nw1-color mb-4" for="aadharUpload">Aadhar Card Upload</label>
                                  <input type="file" class="fs-seven" name="aadhar_card" id="aadharUpload" accept=".jpg,.jpeg,.png,.pdf" />
                                  <span class="text-danger error" id="error_aadhar_card"></span>

                              </div>
                          </div>
                          <!-- PAN Number -->
                          <div class="col-lg-6">
                              <div class="single-input">
                                  <label class="label fw_500 nw1-color mb-4" for="panNumber">PAN Number</label>
                                  <input type="text" class="fs-seven" name="pan_number" id="panNumber" 
                                      value="{{ auth()->user()->pan_number ?? '' }}"/>
                                  <span class="text-danger error" id="error_pan_number"></span>
                              </div>
                          </div>
                          <!-- PAN Card Upload -->
                          <div class="col-lg-6">
                              <div class="single-input">
                                  <label class="label fw_500 nw1-color mb-4" for="panUpload">PAN Card Upload</label>
                                  <input type="file" class="fs-seven" name="pan_card" id="panUpload" accept=".jpg,.jpeg,.png,.pdf" />
                                  <span class="text-danger error" id="error_pan_card"></span>
                              </div>
                          </div>
                        

                        
                        @if (isset(Auth::user()->aadhar_card))
                            <div class="col-lg-6">
                             <div class="single-input">
                                <label class="label fw_500 nw1-color mb-4" for="dgjkghkj">Aadhar Card Photo</label>
                                <img src="{{ url('') }}/{{ Auth::user()->aadhar_card }}" class="img-thumbnail" width="100px" height="80px" alt="">
                              </div>
                              </div>
                        @endif
                            

                        @if (isset(Auth::user()->pan_card))
                        <div class="col-lg-6">
                         <div class="single-input">
                            <label class="label fw_500 nw1-color mb-4" for="sdgkgjl">Pan Card Photo</label>
                            <img src="{{ url('') }}/{{ Auth::user()->pan_card }}" class="img-thumbnail" width="100px" height="80px" alt="">
                          </div>
                          </div>
                    @endif
                        

                          
                      </div>
                  </div>
                  <span id="msg"></span>
                  <button type="submit" id="updatesubmitbuton" class="cmn-btn py-3 px-5 px-lg-6 mt-8 mt-lg-10 d-flex ms-auto" id="submit">
                      Submit<i class="bi bi-arrow-up-right"></i>
                  </button>
              </form>
              
              </div>
            </div>




            
            <!-- Bank Details Tab -->
            <div
              class="tab-pane fade"
              id="v-pills-wallet"
              role="tabpanel"
              aria-labelledby="v-pills-wallet-tab"
            >
              <div class="comments-form cus-rounded-1 nb3-bg">
                <form method="POST" autocomplete="off" id="walletForm" class="message__form p-4 p-lg-8" enctype="multipart/form-data">
                  
                  @csrf
                  <h6 class="message__title mb-8 mb-lg-10 text-warning">My Wallet</h6>
              
                  <div class="d-flex gap-7 gap-lg-8 flex-column">
                      <div class="row gy-4">
                          <!-- Wallet Balance -->
                          <div class="col-12">
                              <div class="available_blance">Balance: 
                                  <span class="text-white">Rs.{{ Auth::user()->wallet ?? 0 }}</span>
                              </div>
                          </div>
              
                          <!-- QR Code -->
                          <div class="col-lg-12">
                              <div class="single-input text-center">
                                  <label class="label fw_500 nw1-color mb-4">Make A Payment Using This QR Code</label>
                                  <div class="qrcodebox">
                                      <img src="{{ url('') }}/qrcode/qrcode.png" class="qrcodeimagewallet" alt="QR Code">
                                  </div>
                              </div>
                          </div>
              
                          <!-- Amount -->
                          <div class="col-lg-12 mt-0">
                              <div class="single-input">
                                  <label class="label fw_500 nw1-color mb-4" for="amount">Amount</label>
                                  <input type="text" class="fs-seven" name="amount" id="amount"/>
                                  <span class="text-danger error" id="error_amount"></span>
                              </div>
                          </div>
              
                          <!-- Transaction ID -->
                          <div class="col-lg-12 mt-0">
                              <div class="single-input">
                                  <label class="label fw_500 nw1-color mb-4" for="transaction_id">UTR / Transaction ID</label>
                                  <input type="text" class="fs-seven" name="transaction_id" id="transaction_id"/>
                                  <span class="text-danger error" id="error_transaction_id"></span>
                              </div>
                          </div>
              
                          <!-- Upload Payment Screenshot -->
                          <div class="col-lg-12 mt-0">
                              <div class="single-input">
                                  <label class="label fw_500 nw1-color mb-4" for="file">Upload Payment Screenshot</label>
                                  <input type="file" class="fs-seven" name="image" id="file"/>
                                  <span class="text-danger error" id="error_image"></span>
                              </div>
                          </div>
                      </div>
                  </div>
              
                  <span id="msg"></span>
                  <button type="submit" id="submitWallet" class="cmn-btn py-3 px-5 px-lg-6 mt-8 mt-lg-10 d-flex ms-auto">
                      Submit <i class="bi bi-arrow-up-right"></i>
                  </button>
              </form>
              
              
              </div>
            </div>

            <!-- Invested Amount Tab -->
            <div
              class="tab-pane fade"
              id="v-pills-Invested"
              role="tabpanel"
              aria-labelledby="v-pills-Invested-tab"
            >
              <div class="comments-form cus-rounded-1 nb3-bg">
                <div class="container">
                  <div class="row">

                    @php
                        $mywinning = 0;
                        $daily_earningT = 0;
                        $earning_amountT = 0;
                        $total_new_amountT = 0;
                    @endphp
                   
                    
                    
                    @php
                      
                      $Mypackages = App\Models\Invest::with('package')->where('userid',Auth::user()->id)->where('completestatus','pending')->get();

    @endphp

                 @foreach ($Mypackages as $val)

                 @php
                   $mywithdrawal = App\Models\Withdraw::where('invest_id',$val->id)->where('userid',Auth::user()->id)->where('amount_cut','Y')->sum('amount');
                 @endphp

                 <div class="col-md-6 bg-dark p-4">
                     @if($val->type == "normel")
                     <div class="pricing-table purple">
                      <!-- Table Head -->
                      {{-- <div class="pricing-label">Star</div> --}}
                  
                      <h2>Features:</h2>
                  
                      @php
                        
                        $purchased_amount = $val->amount;
                        $purchased_date = $val->created_at;
                        $interest_percent = $val->interest;
                  
                  
                        // Calculate days passed
                  $days_passed = \Carbon\Carbon::parse($purchased_date)->diffInDays(now());
                  
                  $daily_earning = ($interest_percent / 100) * $purchased_amount;
                  
                  
                  
                  
                  // Calculate earning amount
                  $earning_amount = ($interest_percent / 100) * $purchased_amount * $days_passed;
                  
                  // Calculate new amount
                  $new_amount = $purchased_amount + $earning_amount;
                  
                      @endphp
                  
                  @php
                      $daily_earningT += $daily_earning;
                      $earning_amountT += $earning_amount;
              

                        $new_amounteg = $new_amount-$mywithdrawal; 
           
                  $total_new_amountT += $new_amounteg;


                  @endphp
                  
                  <div class="earningampunt">Invest Date: {{ \Carbon\Carbon::parse($val->created_at)->format('d-m-Y') }}</div>
                  
                      <div class="earningampunt">Daily Earning: {{ number_format($daily_earning, 2) }}</div>
                      <div class="earningampunt">Earning Amount: {{ number_format($earning_amount, 2) }}</div>
                      <div class="earningampunt">New Amount: {{ number_format($new_amounteg, 2) }}</div>
                  
                      <!-- Features -->
                      <div class="pricing-features">
                  
                        <div class="feature">Interest : 6 - 7%</div>
                        <div class="feature">All Starter Package Features</div>
                        <div class="feature">Basic Risk Management Tools</div>
                        <div class="feature">Quarterly Portfolio Review</div>
                        <div class="feature">24/7 Customer Support</div>
                        <div class="feature">Monthly Portfolio Review</div>
                  
                      </div>
                      <!-- Price -->
                      <div class="price-tag">
                        <span class="symbol">₹</span>
                        <span class="amount" style="font-size: 20px;">1000 - 9999</span>
                        <span class="after">/ Month</span>
                      </div>
                      <!-- Button -->
                  
                      @if (Auth::check())
                      @else
                      <a class="price-button" href="/sign-in">Get Started</a>
                      @endif
                    </div>

                      @include('front.partials.normel',['val' => $val])

                     @else
                     <div class="pricing-table purple">
                      <!-- Table Head -->
                      {{-- <div class="pricing-label"><?= getCategoryTitle($val->category) ?></div> --}}
                  
                      <h2>Features:</h2>
                      <!-- Features -->
                  
                      
                      @php
                        
                        $purchased_amount = $val->amount;
                        $purchased_date = $val->created_at;
                        $interest_percent = $val->interest;
                  
                  
                        // Calculate days passed
                  $days_passed = \Carbon\Carbon::parse($purchased_date)->diffInDays(now());
                  
                  $daily_earning = ($interest_percent / 100) * $purchased_amount;

                  
                      
                  
                  
                  // Calculate earning amount
                  $earning_amount = ($interest_percent / 100) * $purchased_amount * $days_passed;
                  
                  // Calculate new amount
                  $new_amount = $purchased_amount + $earning_amount;

                  $daily_earningT += $daily_earning;
                  $earning_amountT += $earning_amount;
                  $new_amounteg = $new_amount-$mywithdrawal; 



                 $total_new_amountT += $new_amounteg; 
               
                   // $total_new_amountT += $new_amount;

                  // if($val->firstminus == "Y"){
                  //       $total_new_amountT += $earning_amount;
                  //     }else{
                  //       $total_new_amountT += $new_amount;
                  //     }
                  
                      @endphp
                  
                  <div class="earningampunt">Invest Date: {{ \Carbon\Carbon::parse($val->created_at)->format('d-m-Y') }}</div>
                      <div class="earningampunt">Daily Earning: {{ number_format($daily_earning, 2) }}</div>
                      <div class="earningampunt">Earning Amount: {{ number_format($earning_amount, 2) }}</div>
                      <div class="earningampunt">New Amount: {{ number_format($new_amounteg, 2) }}</div>
                     
                      <div class="pricing-features">
                          <div class="feature mb-0">Interest : <?= $val->package->interest_rate ?? ""?> %</div>
                        <div class="feature mt-0"><?= $val->package->deac ?? ""?></div>
                      </div>
                      <!-- Price -->
                      <div class="price-tag">
                        <span class="symbol"><?=$val->package->currency ?? "" ?></span>
                        <span class="amount"><?=$val->package->ammount ?? "" ?></span>
                        <span class="after">/<?=$val->package->formate ?? "" ?></span>
                      </div>
                      <!-- Button -->
                      @include('front.partials.normel',['val' => $val])
                      @if (Auth::check())
                      @else
                      <a class="price-button" href="/sign-in">Get Started</a>
                      @endif
                    </div>
                     @endif
                 </div>


                


             @endforeach

               <!-- Purple Table -->
               <div class="col-12" style="order:-1;">

                {{-- {{ usertotalearning(Auth::user()->id) }} --}}

              
              
                <div class="totalearningbox">
                  <p>Total Daily Earning : {{ number_format($daily_earningT, 2) }}</p>
                  <p>Total Earning Amount : {{ number_format($earning_amountT, 2) }}</p>
                  <p>Total New Amount : {{ number_format($total_new_amountT, 2) }}</p>
                </div>
              </div>
              
                    
                  </div>
                </div>
              </div>
            </div>

            <!-- Withdrawals Tab -->
            <div
              class="tab-pane fade"
              id="v-pills-Withdrawals"
              role="tabpanel"
              aria-labelledby="v-pills-Withdrawals-tab"
            >
              <div class="comments-form cus-rounded-1 nb3-bg p-5">
                <div class="table-responsive">
                  <table class="table table-bordered text-white">
                    <thead>
                      <tr>
                        <th
                          scope="col"
                          style="text-wrap: nowrap; font-size: 12px"
                        >
                          #
                        </th>
                        <th
                          scope="col"
                          style="text-wrap: nowrap; font-size: 12px"
                        >
                          Name
                        </th>
                        {{-- <th
                          scope="col"
                          style="text-wrap: nowrap; font-size: 12px"
                        >
                          Date of Birth
                        </th>
                        <th
                          scope="col"
                          style="text-wrap: nowrap; font-size: 12px"
                        >
                          Contact Number
                        </th> --}}
                        {{-- <th
                          scope="col"
                          style="text-wrap: nowrap; font-size: 12px"
                        >
                          Email Address
                        </th> --}}
                        <th
                          scope="col"
                          style="text-wrap: nowrap; font-size: 12px"
                        >
                          Date of Withdrawals
                        </th>
                        <th
                          scope="col"
                          style="text-wrap: nowrap; font-size: 12px"
                        >
                          Reason of Withdrawals
                        </th>
                        <th
                          scope="col"
                          style="text-wrap: nowrap; font-size: 12px"
                        >
                          Amount
                        </th>
                        <th
                          scope="col"
                          style="text-wrap: nowrap; font-size: 12px"
                        >
                         Status
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                      @foreach ($mywithdraw as $value)
                          
                      
                      <tr>
                        <th
                          scope="row"
                          style="text-wrap: nowrap; font-size: 12px"
                        >
                          1
                        </th>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          {{ Auth::user()->name }}
                        </td>
                        {{-- <td style="text-wrap: nowrap; font-size: 12px">
                          02 Aug 1995
                        </td> --}}
                        {{-- <td style="text-wrap: nowrap; font-size: 12px">
                          +91 9090909090
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          mark@gmail.com
                        </td> --}}
                        <td style="text-wrap: nowrap; font-size: 12px">
                          {{ $value->created_at->format('d-M-Y') }}
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          {{ $value->reason }}
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          Rs.{{ $value->amount }}
                        </td>
                        <td>
                          @if ($value->status == "pending")
                          <span class="badge bg-warning">Pending</span>
                          @elseif($value->status == "reject")
                          <span class="badge bg-danger">Reject</span>
                          @else 
                          <span class="badge bg-sucess">Success</span>
                          @endif
                        </td>
                      </tr>

                      @endforeach
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--dashboard end -->

  @section('footer')

  <script>
    $(document).ready(function () {
    $("#profile_form").on("submit", function (e) {
        e.preventDefault();

        $(".error").text(""); // Clear previous error messages

        let formData = $(this).serialize(); // Get form data
        let submitButton = $("#submit");

        // Disable the button and show loading text
        submitButton.prop("disabled", true).text("Updating...");

        $.ajax({
            url: "{{ route('profile.update') }}",
            type: "POST",
            data: formData,
            success: function (response) {
                Swal.fire({
                    icon: "success",
                    title: "Success",
                    text: response.success,
                    confirmButtonText: "OK"
                }).then(() => {
                    location.reload(); // Refresh the page on success
                });

                submitButton.prop("disabled", false).text("Update");
            },
            error: function (xhr) {
                submitButton.prop("disabled", false).text("Update");

                if (xhr.status === 422) { // Validation error
                    let errors = xhr.responseJSON.errors;
                    $.each(errors, function (key, value) {
                        // For each error, find the correct element to display it
                        $("#" + key).next(".error").text(value[0]); // Display error message under the field
                    });
                } else {
                    Swal.fire({
                        icon: "error",
                        title: "Error",
                        text: "Something went wrong. Please try again later."
                    });
                }
            }
        });
    });
});

  </script>

  <script>
    $(document).ready(function () {
    // Remove active tab from localStorage on page load
    localStorage.removeItem("activeTab");

    // Check if "activeTab" was set before reload (only for form submission)
    if (sessionStorage.getItem("activeTab") === "bank") {
        $("#v-pills-Bank-tab").addClass("active");
        $("#v-pills-Bank").addClass("show active");

        // Remove active class from Profile tab
        $("#v-pills-Profile-tab").removeClass("active");
        $("#v-pills-Profile").removeClass("show active");
    }

    $("#updatebank").on("submit", function (e) {
        e.preventDefault();
        let formData = new FormData(this);

        let submitButton = $("#updatesubmitbuton");

// Disable the button and show loading text
submitButton.prop("disabled", true).text("Updating...");
        
        $(".error").text("");

        // Append CSRF token manually
        formData.append('_token', '{{ csrf_token() }}');

        $.ajax({
            url: "{{ route('update.bank') }}",
            type: "POST",
            data: formData,
            processData: false,
            contentType: false,
            success: function (response) {
                // Store active tab state in sessionStorage before reload
                sessionStorage.setItem("activeTab", "bank");

                submitButton.prop("disabled", false).text("Update");

                Swal.fire("Success!", response.success, "success").then(() => {
                    location.reload();
                });
            },
            error: function (xhr) {
                $.each(xhr.responseJSON.errors, function (key, value) {
                    $("#error_" + key).text(value[0]);
                });
                submitButton.prop("disabled", false).text("Update");
            }
        });
    });

    // Clear sessionStorage after 1 second (to prevent tab persistence on manual reload)
    setTimeout(() => {
        sessionStorage.removeItem("activeTab");
    }, 1000);
});

  </script>



  <script>
  $(document).ready(function () {
    $("#walletForm").on("submit", function (e) {
        e.preventDefault();
        
        let formData = new FormData(this);
        $("#submitWallet").prop("disabled", true).text("Processing...");

        $.ajax({
            url: "{{ route('wallet.store') }}",  // Make sure this is the correct route
            type: "POST",
            data: formData,
            contentType: false,
            processData: false,
            success: function (response) {
                // Check if the response is success
                if (response.status == "success") {
                    Swal.fire("Success!", response.message, "success").then(() => {
                        // Reload the page after successful transaction
                        location.reload();
                    });
                } else {
                    // Handle other statuses if needed
                    Swal.fire("Error!", "Something went wrong. Please try again.", "error");
                }

                // Reset the form and UI elements
                $("#walletForm")[0].reset();
                $(".error").html(""); 
                $("#submitWallet").prop("disabled", false).text("Submit");
            },
            error: function (xhr) {
                let errors = xhr.responseJSON.errors;
                $(".error").html(""); 

              

                // Display validation errors next to the form fields
                $.each(errors, function (key, value) {
                    $("#error_" + key).html(value[0]);
                });

                $("#submitWallet").prop("disabled", false).text("Submit");
            },
        });
    });
});
</script>
  
  

@endsection
@endsection