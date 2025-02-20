@section('title', 'Dashboard - Stock-Market')
@extends('layout.admin')
@section('content')

<style>
    .dyanamic_image {
        width: 50px;
        height: 50px;
        border-radius: 10px;
        object-fit: cover;
    }


    .profile-card {
            max-width: 350px;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s;
        }
        .profile-card:hover {
            transform: scale(1.05);
        }
        .profile-header {
            background: linear-gradient(135deg, #007bff, #00d4ff);
            padding: 50px;
            text-align: center;
            color: white;
        }
        .profile-image {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            margin-top: -60px;
            border: 5px solid white;
        }
        .profile-body {
            text-align: center;
            padding: 20px;
        }
        .social-icons a {
            margin: 0 10px;
            color: #007bff;
            font-size: 20px;
            transition: 0.3s;
        }
        .social-icons a:hover {
            color: #0056b3;
        }


</style>


<div class="content-page">
    <div class="content">
        <div class="container-fluid">
            @if (session()->has('success'))
            <div class="alert alert-primary alert-dismissible fade show" style="margin-top: 20px;" role="alert">
                {{ session()->get('success') }}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            @endif

            <div class="py-3 d-flex align-items-sm-center flex-sm-row flex-column">
                <div class="flex-grow-1">
                    <h4 class="fs-18 fw-semibold m-0">View Users</h4>
                </div>
                <div class="text-end">
                    <ol class="breadcrumb m-0 py-0">
                        <li class="breadcrumb-item"><a href="/admin/dashboard">Dashboard</a></li>
                        <li class="breadcrumb-item active">Users</li>
                    </ol>
                </div>
            </div>
            <div class="row">

                <div class="col-12">

<div class="container ">
    <div class="card profile-card">
        <div class="profile-header"></div>
        <div class="card-body profile-body">
            <img src="@if ($row->image)
                {{ url('') }}/uploads/profile_photos/{{ $row->image }}
                 @else
                 {{ url('') }}/uploads/profile_photos/profile.png
                 
            @endif" alt="User" class="profile-image">
            <h4 class="mt-3">{{ $row->name }}</h4>
            <p class="text-muted">Wallet : Rs.{{ $row->wallet }}</p>
        </div>
    </div>
</div>
                </div>
                

                <div class="col-md-6">
                    <div class="card p-3">
                    <h4>Personal Details</h4>
                    <table>
                        <tr>
                            <th>First Name :</th>
                            <td>{{ $row->first_name }}</td>
                        </tr>
                        <tr>
                            <th>Last Name :</th>
                            <td>{{ $row->last_name }}</td>
                        </tr>
                        <tr>
                            <th>Email :</th>
                            <td>{{ $row->email ?? "N/A" }}</td>
                        </tr>
                        <tr>
                            <th>Phone :</th>
                            <td>{{ $row->phone ?? "N/A" }}</td>
                        </tr>
                    </table>
                    </div>
                </div>
               
               
                <div class="col-md-6">
                    <div class="card p-3">
                    <h4>Nominee Details</h4>
                    <table>
                        <tr>
                            <th>Nominee Name:</th>
                            <td>{{ $row->nominee_name ?? "N/A" }}</td>
                        </tr>
                        <tr>
                            <th>Relation with Nominee :</th>
                            <td>{{ $row->nominee_relation }}</td>
                        </tr>
                        <tr>
                            <th>Nominee Age :</th>
                            <td>{{ $row->nominee_age ?? "N/A" }}</td>
                        </tr>
                        <tr>
                            <th>Nominee Contact :</th>
                            <td>{{ $row->nominee_contact ?? "N/A" }}</td>
                        </tr>
                    </table>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card p-3">
                    <h4>Bank & Kyc Details</h4>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <th class="table-dark">Account Holder Name</th>
                                    <td>{{ $row->account_holder_name ?? 'N/A' }}</td>
                                </tr>
                                <tr>
                                    <th class="table-dark">Account Number</th>
                                    <td>{{ $row->account_number ?? 'N/A' }}</td>
                                </tr>
                                <tr>
                                    <th class="table-dark">IFSC Code</th>
                                    <td>{{ $row->ifsc_code ?? 'N/A' }}</td>
                                </tr>
                                <tr>
                                    <th class="table-dark">Branch Name</th>
                                    <td>{{ $row->branch_name ?? 'N/A' }}</td>
                                </tr>
                                <tr>
                                    <th class="table-dark">Aadhar Front</th>
                                    <td>
                                        @if(isset($row->aadhar_card))
                                            <img src="{{ url('') }}/{{ $row->aadhar_card }}" class="img-thumbnail" width="100px" height="80px">
                                        @else
                                            N/A
                                        @endif
                                    </td>
                                </tr>
                                <tr>
                                    <th class="table-dark">Aadhar Back</th>
                                    <td>
                                        @if(isset($row->aadhar_card_back))
                                            <img src="{{ url('') }}/{{ $row->aadhar_card_back }}" class="img-thumbnail" width="100px" height="80px">
                                        @else
                                            N/A
                                        @endif
                                    </td>
                                </tr>
                                <tr>
                                    <th class="table-dark">Bank Passbook</th>
                                    <td>
                                        @if(isset($row->cancel_chaque))
                                            <img src="{{ url('') }}/{{ $row->cancel_chaque }}" class="img-thumbnail" width="100px" height="80px">
                                        @else
                                            N/A
                                        @endif
                                    </td>
                                </tr>
                                <tr>
                                    <th class="table-dark">PAN Number</th>
                                    <td>{{ $row->pan_number ?? 'N/A' }}</td>
                                </tr>
                                <tr>
                                    <th class="table-dark">PAN Card</th>
                                    <td>
                                        @if(isset($row->pan_card))
                                            <img src="{{ url('') }}/{{ $row->pan_card }}" class="img-thumbnail" width="100px" height="80px">
                                        @else
                                            N/A
                                        @endif
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>          
                    </div>
                </div>


                <div class="col-md-6">
                    <div class="card">
                        <div class="comments-form cus-rounded-1 nb3-bg p-4">
                            <h6 class="message__title mb-8 mb-lg-10 text-warning">
                              Dahboard
                            </h6>
                            <div class="row gy-4">
                              <div class="col-lg-4">
                                <div
                                  class="card p-2 mb-0 h-100"
                                  style="background: rgb(102, 102, 191)"
                                >
                                <a href="/deposit-history">
                                  <div class="row">
                                    <div class="col-4">
                                      </div>
                                    <div class="col-12 text-white">
                                      <div>
                                        <h6 style="font-size: 12px">Deposited Amount</h6>
                                        <h5> ₹ <?= DB::table('customer_payment')->where('customer_id',$row->id)->where('status','complete')->sum('amount'); ?></h5>
                                      </div>
                                    </div>
                                  </div>
                                </a>
                                </div>
                              </div>
          
                              <div class="col-lg-4">
                                <div
                                  class="card p-2 mb-0 h-100"
                                  style="background: rgb(102, 173, 191)"
                                >
                                  <div class="row">
                                    <div class="col-4">
                                      </div>
                                    <div class="col-12 text-white">
                                      <div>
                                        <h6 style="font-size: 12px">PNL</h6>
                                        <h5>₹ {{usertotalearningbyuser($row->id)}}</h5>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
          
                              <div class="col-lg-4">
                                <div
                                  class="card p-2 mb-0 h-100"
                                  style="background: rgb(151, 191, 102)"
                                >
                                  <div class="row">
                                    <div class="col-4">
                                      </div>
                                    <div class="col-12 text-white">
                                      <div>
                                        <h6 style="font-size: 12px">Growth</h6>
                                        <h5>
                                          <?php
                                          $tradebalance = DB::table('invested')
                                              ->where('userid', $row->id)
                                              ->where('completestatus', 'pending')
                                              ->sum('amount');
                                          
                                          $pnl_amount = totalearning(); // Earning amount
                                          $invested_amount = $tradebalance; // Invested amount
                                          
                                          // Prevent division by zero
                                          if ($invested_amount > 0) {
                                              $percentage_earning = ($pnl_amount / $invested_amount) * 100;
                                              echo number_format($percentage_earning, 2) . "%";
                                          } else {
                                              echo "0.00%"; // Default output when there's no investment
                                          }
                                          ?>
                                          
                                        </h5>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
          
                              <div class="col-lg-4">
                                <div
                                  class="card p-2 mb-0 h-100"
                                  style="background: rgb(151, 191, 102)"
                                >
                                  <div class="row">
                                    <div class="col-12 text-white">
                                      <div>
                                        <h6 style="font-size: 12px">Withdrawal</h6>
                                        <h5>₹ <?= DB::table('withdraw')->where('userid',$row->id)->where('status','complete')->sum('amount'); ?></h5>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
          
                              <div class="col-lg-4">
                                <div
                                  class="card p-2 mb-0 h-100"
                                  style="background: rgb(102, 108, 191)"
                                >
                                  <div class="row">
                                    <div class="col-4">
                                      </div>
                                    <div class="col-12 text-white">
                                      <div>
                                        <h6 style="font-size: 12px">Profit</h6>
                                        <h5>₹ {{usertotalearningbyuser($row->id)}}</h5>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
          
                              <div class="col-lg-4">
                                <div
                                  class="card p-2 mb-0 h-100"
                                  style="background: rgb(102, 191, 146)"
                                >
                                  <div class="row">
                                    <div class="col-4">
                                      </div>
                                    <div class="col-12 text-white">
                                      <div>
                                        <h6 style="font-size: 12px">Trade Balance</h6>
                                        <h5>₹ <?= DB::table('invested')->where('userid',$row->id)->where('completestatus','pending')->sum('amount'); ?></h5>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
          
                              <div class="col-lg-4">
                                <div
                                  class="card p-2 mb-0 h-100"
                                  style="background: rgb(191, 103, 102)"
                                >
                                  <div class="row">
                                   
                                    <div class="col-12 text-white">
                                      <div>
                                        <h6 style="font-size: 12px">Holding Balance</h6>
                                        <h5>0</h5>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card p-3">
                        @php
                            $totalReferralUsers = App\Models\User::where('referred_by', $row->id)->count();
                        @endphp
                        <h3>Total Referrals = {{ $totalReferralUsers }}</h3>
                    </div>
                </div>

         
        </div>
    </div>
</div>

@endsection
