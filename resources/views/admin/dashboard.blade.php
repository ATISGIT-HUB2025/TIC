@section('title', 'Dashboard - Stock-Markect')
@extends('layout.admin')
@section('content')

    <div class="content-page">
        <div class="content">

            <!-- Start Content-->
            <div class="container-fluid">
                <div class="py-3 d-flex align-items-sm-center flex-sm-row flex-column">
                    <div class="flex-grow-1">
                        <h4 class="fs-18 fw-semibold m-0">Dashboard</h4>
                    </div>
                </div>

                <!-- start row -->
                <div class="row">
                    <div class="col-md-12 col-xl-12">
                        <div class="row g-3">

                            <div class="col-sm-6 col-md-4 col-xl-3">
                                <div class="card mb-0">
                                    <div class="card-body">
                                        <div class="widget-first">

                                            <div class="d-flex align-items-center mb-2">
                                                <div
                                                    class="p-2 border border-primary border-opacity-10 bg-primary-subtle rounded-pill me-2">
                                                    <div class="bg-primary rounded-circle widget-size text-center">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20"
                                                            height="20" viewBox="0 0 24 24">
                                                            <path fill="#ffffff"
                                                                d="M12 4a4 4 0 0 1 4 4a4 4 0 0 1-4 4a4 4 0 0 1-4-4a4 4 0 0 1 4-4m0 10c4.42 0 8 1.79 8 4v2H4v-2c0-2.21 3.58-4 8-4" />
                                                        </svg>
                                                    </div>
                                                </div>
                                                <p class="mb-0 text-dark fs-15">Deposited Amount</p>
                                            </div>

                                            <div class="d-flex justify-content-between align-items-center">
                                                <h3 class="mb-0 fs-22 text-black me-3">
                                                    ₹ <?= DB::table('customer_payment')->where('status','complete')->sum('amount'); ?>
                                                </h3>
                                                {{-- <div class="text-center">
                                                    <span class="text-primary fs-14"><i
                                                            class="mdi mdi-trending-up fs-14"></i> 12.5%</span>
                                                    <p class="text-dark fs-13 mb-0">Last 7 days</p>
                                                </div> --}}
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6 col-md-4 col-xl-3">
                                <div class="card mb-0">
                                    <div class="card-body">
                                        <div class="widget-first">

                                            <div class="d-flex align-items-center mb-2">
                                                <div
                                                    class="p-2 border border-primary border-opacity-10 bg-primary-subtle rounded-pill me-2">
                                                    <div class="bg-primary rounded-circle widget-size text-center">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20"
                                                            height="20" viewBox="0 0 24 24">
                                                            <path fill="#ffffff"
                                                                d="M12 4a4 4 0 0 1 4 4a4 4 0 0 1-4 4a4 4 0 0 1-4-4a4 4 0 0 1 4-4m0 10c4.42 0 8 1.79 8 4v2H4v-2c0-2.21 3.58-4 8-4" />
                                                        </svg>
                                                    </div>
                                                </div>
                                                <p class="mb-0 text-dark fs-15">PnL</p>
                                            </div>

                                            <div class="d-flex justify-content-between align-items-center">
                                                <h3 class="mb-0 fs-22 text-black me-3">
                                                    ₹ <?= totalearning() ?>
                                                </h3>
                                                {{-- <div class="text-center">
                                                    <span class="text-primary fs-14"><i
                                                            class="mdi mdi-trending-up fs-14"></i> 12.5%</span>
                                                    <p class="text-dark fs-13 mb-0">Last 7 days</p>
                                                </div> --}}
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>




                            
                            <div class="col-sm-6 col-md-4 col-xl-3">
                                <div class="card mb-0">
                                    <div class="card-body">
                                        <div class="widget-first">

                                            <div class="d-flex align-items-center mb-2">
                                                <div
                                                    class="p-2 border border-primary border-opacity-10 bg-primary-subtle rounded-pill me-2">
                                                    <div class="bg-primary rounded-circle widget-size text-center">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20"
                                                            height="20" viewBox="0 0 24 24">
                                                            <path fill="#ffffff"
                                                                d="M12 4a4 4 0 0 1 4 4a4 4 0 0 1-4 4a4 4 0 0 1-4-4a4 4 0 0 1 4-4m0 10c4.42 0 8 1.79 8 4v2H4v-2c0-2.21 3.58-4 8-4" />
                                                        </svg>
                                                    </div>
                                                </div>
                                                <p class="mb-0 text-dark fs-15">Growth</p>
                                            </div>

                                            <div class="d-flex justify-content-between align-items-center">
                                                <h3 class="mb-0 fs-22 text-black me-3">
                                                    <?php


$tradebalance = DB::table('invested')->where('completestatus','pending')->sum('amount');
                                                        
    $pnl_amount = totalearning(); // Earning amount
$invested_amount = $tradebalance; // Invested amount

$percentage_earning = ($pnl_amount / $invested_amount) * 100;

echo  number_format($percentage_earning, 2) . "%";
                                                        
                                                        ?>
                                                </h3>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>



                            <div class="col-sm-6 col-md-4 col-xl-3">
                                <div class="card mb-0">
                                    <div class="card-body">
                                        <div class="widget-first">

                                            <div class="d-flex align-items-center mb-2">
                                                <div
                                                    class="p-2 border border-secondary border-opacity-10 bg-secondary-subtle rounded-pill me-2">
                                                    <div class="bg-secondary rounded-circle widget-size text-center">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20"
                                                            height="20" viewBox="0 0 640 512">
                                                            <path fill="#ffffff"
                                                                d="M96 224c35.3 0 64-28.7 64-64s-28.7-64-64-64s-64 28.7-64 64s28.7 64 64 64m448 0c35.3 0 64-28.7 64-64s-28.7-64-64-64s-64 28.7-64 64s28.7 64 64 64m32 32h-64c-17.6 0-33.5 7.1-45.1 18.6c40.3 22.1 68.9 62 75.1 109.4h66c17.7 0 32-14.3 32-32v-32c0-35.3-28.7-64-64-64m-256 0c61.9 0 112-50.1 112-112S381.9 32 320 32S208 82.1 208 144s50.1 112 112 112m76.8 32h-8.3c-20.8 10-43.9 16-68.5 16s-47.6-6-68.5-16h-8.3C179.6 288 128 339.6 128 403.2V432c0 26.5 21.5 48 48 48h288c26.5 0 48-21.5 48-48v-28.8c0-63.6-51.6-115.2-115.2-115.2m-223.7-13.4C161.5 263.1 145.6 256 128 256H64c-35.3 0-64 28.7-64 64v32c0 17.7 14.3 32 32 32h65.9c6.3-47.4 34.9-87.3 75.2-109.4" />
                                                        </svg>
                                                    </div>
                                                </div>
                                                <p class="mb-0 text-dark fs-15">Withdrawal Amount</p>
                                            </div>

                                            <div class="d-flex justify-content-between align-items-center">
                                                <h3 class="mb-0 fs-22 text-black me-3"> ₹ <?= DB::table('withdraw')->where('status','complete')->sum('amount'); ?></h3>
                                             
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6 col-md-4 col-xl-3">
                                <div class="card mb-0">
                                    <div class="card-body">
                                        <div class="widget-first">

                                            <div class="d-flex align-items-center mb-2">
                                                <div
                                                    class="p-2 border border-secondary border-opacity-10 bg-secondary-subtle rounded-pill me-2">
                                                    <div class="bg-danger rounded-circle widget-size text-center">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20"
                                                            height="20" viewBox="0 0 24 24">
                                                            <path fill="#ffffff"
                                                                d="M7 15h2c0 1.08 1.37 2 3 2s3-.92 3-2c0-1.1-1.04-1.5-3.24-2.03C9.64 12.44 7 11.78 7 9c0-1.79 1.47-3.31 3.5-3.82V3h3v2.18C15.53 5.69 17 7.21 17 9h-2c0-1.08-1.37-2-3-2s-3 .92-3 2c0 1.1 1.04 1.5 3.24 2.03C14.36 11.56 17 12.22 17 15c0 1.79-1.47 3.31-3.5 3.82V21h-3v-2.18C8.47 18.31 7 16.79 7 15" />
                                                        </svg>
                                                    </div>
                                                </div>
                                                <p class="mb-0 text-dark fs-15">Trade Balance</p>
                                            </div>

                                            <div class="d-flex justify-content-between align-items-center">
                                                <h3 class="mb-0 fs-22 text-black me-3"> ₹ <?= DB::table('invested')->where('completestatus','pending')->sum('amount'); ?></h3>
                                             
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>



                            <div class="col-sm-6 col-md-4 col-xl-3">
                                <div class="card mb-0">
                                    <div class="card-body">
                                        <div class="widget-first">

                                            <div class="d-flex align-items-center mb-2">
                                                <div
                                                    class="p-2 border border-warning border-opacity-10 bg-secondary-subtle rounded-pill me-2">
                                                    <div class="bg-warning rounded-circle widget-size text-center">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="20"
                                                        height="20" viewBox="0 0 640 512">
                                                        <path fill="#ffffff"
                                                            d="M96 224c35.3 0 64-28.7 64-64s-28.7-64-64-64s-64 28.7-64 64s28.7 64 64 64m448 0c35.3 0 64-28.7 64-64s-28.7-64-64-64s-64 28.7-64 64s28.7 64 64 64m32 32h-64c-17.6 0-33.5 7.1-45.1 18.6c40.3 22.1 68.9 62 75.1 109.4h66c17.7 0 32-14.3 32-32v-32c0-35.3-28.7-64-64-64m-256 0c61.9 0 112-50.1 112-112S381.9 32 320 32S208 82.1 208 144s50.1 112 112 112m76.8 32h-8.3c-20.8 10-43.9 16-68.5 16s-47.6-6-68.5-16h-8.3C179.6 288 128 339.6 128 403.2V432c0 26.5 21.5 48 48 48h288c26.5 0 48-21.5 48-48v-28.8c0-63.6-51.6-115.2-115.2-115.2m-223.7-13.4C161.5 263.1 145.6 256 128 256H64c-35.3 0-64 28.7-64 64v32c0 17.7 14.3 32 32 32h65.9c6.3-47.4 34.9-87.3 75.2-109.4" />
                                                    </svg>
                                                    </div>
                                                </div>
                                                <p class="mb-0 text-dark fs-15">Users Balance</p>
                                            </div>

                                            <div class="d-flex justify-content-between align-items-center">
                                                <h3 class="mb-0 fs-22 text-black me-3"> ₹ <?= DB::table('users')->sum('wallet'); ?></h3>
                                             
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                           </div>
                    </div>
                </div>
                <!-- end start -->




            </div> <!-- container-fluid -->
        </div> <!-- content -->


        <!-- end Footer -->

    </div>
    <!-- ============================================================== -->
    <!-- End Page content -->


@endsection
