
    <!-- Button trigger modal -->
    <button
      class="cmn-btn alt-xxl-bg fs-five nb4-xxl-bg gap-2 mt-4 gap-lg-3 align-items-center py-2 px-5 py-lg-3 px-lg-6"
      style="--top: 47.8125px; --left: 146px"
      data-bs-toggle="modal"
      data-bs-target="#exampleModal{{ $val->id }}"
    >
      Withdrawal Amount <i class="ti ti-trending-up"></i>
    </button>
    <!-- Modal -->
    <div
      class="modal fade"
      id="exampleModal{{ $val->id }}"
      tabindex="-1"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog">
        <div class="modal-content nb3-bg">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">
              Withdrawal Form {{ $val->id }}
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
              id="formwithdrawyy"
              action="/withdraw/{{ $val->id }}"
              class="message__form p-4 p-lg-8"
            >
            @csrf
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
                        disabled
                        value="{{ Auth::user()->name }}"
                        required
                      />
                    </div>
                  </div>
                  <!-- Date of Birth -->
                  {{-- <div class="col-lg-6">
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
                  </div> --}}
                  <!-- Contact Number -->
                  {{-- <div class="col-lg-6">
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
                        value="{{ Auth::user()->phone }}"
                        disabled
                        id="contactNumber"
                        placeholder="Enter your contact number"
                        required
                      />
                    </div>
                  </div> --}}
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
                        disabled
                        value="{{ Auth::user()->email }}"
                        placeholder="Enter your email address"
                        required
                      />
                      
                    </div>
                  </div>
                  <!-- Date of Withdrawals -->
                  {{-- <div class="col-lg-6">
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
                  </div> --}}
                  <!-- Reason of Withdrawals -->
                  <div class="col-lg-12">
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
                        name="reason"
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
             
             <div class="col-lg-12 otp_box d-none" id="otp_input_section">
                  <div class="single-input">
                      <div class="" >
                        <input type="number" id="otp_input" class="form-control" placeholder="Enter OTP">
                  </div>
                </div>
            </div>

                </div>
              </div>
              <span id="msg"></span>

             

              <div class="otp_box" id="otp_section">
                <button id="send_otp" type="button" class="cmn-btn py-3 px-5 px-lg-6 mt-8 mt-lg-10 d-flex ms-auto">Send OTP</button>
                <button id="verify_otp" type="button" class="cmn-btn py-3 px-5 px-lg-6 mt-8 mt-lg-10 d-flex ms-auto d-none">Verify OTP</button>
            </div>
            
         
            
            <button type="submit" class="cmn-btn py-3 px-5 px-lg-6 mt-8 mt-lg-10 d-flex ms-auto d-none" name="submit" id="submit_withdraw_qu">
                Submit <i class="bi bi-arrow-up-right"></i>
            </button>
            
            </form>
          </div>
        </div>
      </div>
    </div>