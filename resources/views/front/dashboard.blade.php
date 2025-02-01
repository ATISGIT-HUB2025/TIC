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
              <a href="signin.html" class="nav-link"> Logout </a>
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
                    <!-- Purple Table -->
                    <div class="col-md-6 bg-dark p-4">
                      <div class="pricing-table purple">
                        <!-- Table Head -->
                        <div class="pricing-label">Starter Package</div>
                        <h2>Features:</h2>

                        <!-- Features -->
                        <div class="pricing-features">
                          <div class="feature">
                            All Starter Package Features
                          </div>
                          <div class="feature">
                            Basic Risk Management Tools
                          </div>
                          <div class="feature">
                            Quarterly Portfolio Review
                          </div>
                          <div class="feature">24/7 Customer Support</div>
                          <div class="feature">Monthly Portfolio Review</div>
                        </div>
                        <!-- Price -->
                        <div class="price-tag">
                          <span class="symbol">$</span>
                          <span class="amount">99.99</span>
                          <span class="after">/month</span>
                        </div>
                        <!-- Button -->
                      </div>
                    </div>
                    <div class="col-md-6">
                      <!-- Button trigger modal -->

                      <button
                        class="cmn-btn alt-xxl-bg fs-five nb4-xxl-bg gap-2 mt-4 gap-lg-3 align-items-center py-2 px-5 py-lg-3 px-lg-6"
                        style="--top: 47.8125px; --left: 146px"
                        data-bs-toggle="modal"
                        data-bs-target="#exampleModal"
                      >
                        Withdrawal Amount <i class="ti ti-trending-up"></i>
                      </button>
                      <!-- Modal -->
                      <div
                        class="modal fade"
                        id="exampleModal"
                        tabindex="-1"
                        aria-labelledby="exampleModalLabel"
                        aria-hidden="true"
                      >
                        <div class="modal-dialog">
                          <div class="modal-content nb3-bg">
                            <div class="modal-header">
                              <h5 class="modal-title" id="exampleModalLabel">
                                Withdrawal Form
                              </h5>
                              <button
                                type="button"
                                class="btn-close"
                                data-bs-dismiss="modal"
                                aria-label="Close"
                              ></button>
                            </div>
                            <div class="modal-body">
                              <form
                                method="POST"
                                autocomplete="off"
                                id="frmContactus"
                                class="message__form p-4 p-lg-8"
                              >
                                <div
                                  class="d-flex gap-7 gap-lg-8 flex-column"
                                >
                                  <div class="row gy-4">
                                    <!-- Name -->
                                    <div class="col-lg-6">
                                      <div class="single-input">
                                        <label
                                          class="label fw_500 nw1-color mb-4"
                                          for="name"
                                        >
                                          Name
                                        </label>
                                        <input
                                          type="text"
                                          class="fs-seven"
                                          name="name"
                                          id="name"
                                          placeholder="Enter your full name"
                                          required
                                        />
                                      </div>
                                    </div>
                                    <!-- Date of Birth -->
                                    <div class="col-lg-6">
                                      <div class="single-input">
                                        <label
                                          class="label fw_500 nw1-color mb-4"
                                          for="dob"
                                        >
                                          Date of Birth
                                        </label>
                                        <input
                                          type="date"
                                          class="fs-seven"
                                          name="dob"
                                          id="dob"
                                          placeholder="Select your date of birth"
                                          required
                                        />
                                      </div>
                                    </div>
                                    <!-- Contact Number -->
                                    <div class="col-lg-6">
                                      <div class="single-input">
                                        <label
                                          class="label fw_500 nw1-color mb-4"
                                          for="contactNumber"
                                        >
                                          Contact Number
                                        </label>
                                        <input
                                          type="tel"
                                          class="fs-seven"
                                          name="contactNumber"
                                          id="contactNumber"
                                          placeholder="Enter your contact number"
                                          required
                                        />
                                      </div>
                                    </div>
                                    <!-- Email Address -->
                                    <div class="col-lg-6">
                                      <div class="single-input">
                                        <label
                                          class="label fw_500 nw1-color mb-4"
                                          for="email"
                                        >
                                          Email Address
                                        </label>
                                        <input
                                          type="email"
                                          class="fs-seven"
                                          name="email"
                                          id="email"
                                          placeholder="Enter your email address"
                                          required
                                        />
                                      </div>
                                    </div>
                                    <!-- Date of Withdrawals -->
                                    <div class="col-lg-6">
                                      <div class="single-input">
                                        <label
                                          class="label fw_500 nw1-color mb-4"
                                          for="withdrawalDate"
                                        >
                                          Date of Withdrawals
                                        </label>
                                        <input
                                          type="date"
                                          class="fs-seven"
                                          name="withdrawalDate"
                                          id="withdrawalDate"
                                          placeholder="Select withdrawal date"
                                          required
                                        />
                                      </div>
                                    </div>
                                    <!-- Reason of Withdrawals -->
                                    <div class="col-lg-6">
                                      <div class="single-input">
                                        <label
                                          class="label fw_500 nw1-color mb-4"
                                          for="withdrawalReason"
                                        >
                                          Reason of Withdrawals
                                        </label>
                                        <input
                                          type="text"
                                          class="fs-seven"
                                          name="withdrawalReason"
                                          id="withdrawalReason"
                                          placeholder="Enter the reason for withdrawal"
                                          required
                                        />
                                      </div>
                                    </div>

                                    <!-- Amount -->
                                    <div class="col-lg-12">
                                      <div class="single-input">
                                        <label
                                          class="label fw_500 nw1-color mb-4"
                                          for="amount"
                                        >
                                          Amount
                                        </label>
                                        <input
                                          type="number"
                                          class="fs-seven"
                                          name="amount"
                                          id="amount"
                                          placeholder="Enter the amount"
                                          required
                                        />
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <span id="msg"></span>
                                <button
                                  type="submit"
                                  class="cmn-btn py-3 px-5 px-lg-6 mt-8 mt-lg-10 d-flex ms-auto"
                                  name="submit"
                                  id="submit"
                                >
                                  Submit<i class="bi bi-arrow-up-right"></i>
                                </button>
                              </form>
                            </div>
                          </div>
                        </div>
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
                        <th
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
                        </th>
                        <th
                          scope="col"
                          style="text-wrap: nowrap; font-size: 12px"
                        >
                          Email Address
                        </th>
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
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th
                          scope="row"
                          style="text-wrap: nowrap; font-size: 12px"
                        >
                          1
                        </th>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          Mark Doe
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          02 Aug 1995
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          +91 9090909090
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          mark@gmail.com
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          16-Jan-2025
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          Lorem ipsum dolor sit amet.
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          $.20.00
                        </td>
                      </tr>

                      <tr>
                        <th
                          scope="row"
                          style="text-wrap: nowrap; font-size: 12px"
                        >
                          1
                        </th>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          Mark Doe
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          02 Aug 1995
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          +91 9090909090
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          mark@gmail.com
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          16-Jan-2025
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          Lorem ipsum dolor sit amet.
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          $.20.00
                        </td>
                      </tr>

                      <tr>
                        <th
                          scope="row"
                          style="text-wrap: nowrap; font-size: 12px"
                        >
                          1
                        </th>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          Mark Doe
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          02 Aug 1995
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          +91 9090909090
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          mark@gmail.com
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          16-Jan-2025
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          Lorem ipsum dolor sit amet.
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          $.20.00
                        </td>
                      </tr>

                      <tr>
                        <th
                          scope="row"
                          style="text-wrap: nowrap; font-size: 12px"
                        >
                          1
                        </th>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          Mark Doe
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          02 Aug 1995
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          +91 9090909090
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          mark@gmail.com
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          16-Jan-2025
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          Lorem ipsum dolor sit amet.
                        </td>
                        <td style="text-wrap: nowrap; font-size: 12px">
                          $.20.00
                        </td>
                      </tr>
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