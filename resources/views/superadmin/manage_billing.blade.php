
@extends('superadmin.layout.common')
@section('content')
<!-- customer list area Start-->



<style>
    .uploaded_images{
        width: 60px;
    height: 60px;
    border: 1px solid #eee;
    padding: 2px;
    }

    .bsc-tbl-bdr{
        width: 100%;
        overflow-y: hidden;
    }

   .payment_title{
        margin-bottom: 10px;
    font-size: 15px;
    font-weight: 600;
    }

    td.text-danger {
    color: red !important;
    font-weight: 700;
    }

    td.text-success, .success_p {
    color: rgb(9, 116, 32) !important;
    font-weight: 700;
}
.success_p{
    margin-top: 10px;
}

.form-control{
    width: 100%;
    height: 44px;
}

</style>


    <div class="form-element-area">
      <div class="container">
        <div class="row">
          <div
            class="col-lg-12 col-md-12 col-sm-12 col-xs-12"
            style="background: #fff; padding: 20px"
          >





    <div class="">
        <h4>Customer Information</h4>
        <table class="table">
            <tr>
                <th>Bill Number :</th>
                <td>{{ $row->bill_number }}</td>
            </tr>
            <tr>
                <th>Customer Name :</th>
                <td>{{ $row->name }}</td>
            </tr>
            <tr>
                <th>Mobile Number :</th>
                <td>{{ $row->mobile }}</td>
            </tr>
            <tr>
                <th>Order Date :</th>
                <td>{{ $row->order_date }}</td>
            </tr>
            <tr>
                <th>Salesman Code :</th>
                <td>{{ $row->salesman_code }}</td>
            </tr>
            <tr>
                <th>Date of birth :</th>
                <td>{{ $row->dob }}</td>
            </tr>
            <tr>
                <th>Delivery Date :</th>
                <td>{{ $row->delivery_date }}</td>
            </tr>

        </table>
    </div>



    <div class="">
        <h4>Billing Information</h4>
        <table class="table">
            <tr>
                <th>Total Amount :</th>
                <td>Rs.{{ $row->total_amount }}</td>
            </tr>
            <tr>
                <th>Discount :</th>
                <td>Rs.{{ $row->discount }}</td>
            </tr>
            <tr>
                <th>Advanced Received :</th>
                <td>Rs.{{ $row->advance }}</td>
            </tr>
            <tr>
                <th>Advanced Received Date:</th>
                <td>{{ $row->advance_date }}</td>
            </tr>

            <tr>
                <th>Balance Amount:</th>
                <td>Rs.{{ $row->balance }}</td>
            </tr>

            <tr>
                <th>Transactional Amount:</th>
                <td>Rs.{{ $total_payment_maked }}</td>
            </tr>



            <tr>
                <th>Total Pending Amount:</th>
                <td class="@if($row->balance == $total_payment_maked) text-success @else text-danger @endif" >Rs.{{ $row->balance-$total_payment_maked }}</td>
            </tr>

        </table>
    </div>






            <div class="normal-table-list">

{{--
                <a href="/crm/sendpdf/{{ $row->id }}">
                    Send Pdf
                </a> --}}


@if ($errors->any())
<div class="alert alert-danger">
    <ul>
        @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
        @endforeach
    </ul>
</div>
@endif




                @if(session()->has('success'))
                <div class="alert alert-success">
                    {{ session()->get('success') }}
                </div>
            @endif


            @if(session()->has('error'))
            <div class="alert alert-danger" style="padding:10px;">
                {{ session()->get('error') }}
            </div>
        @endif

        {{-- <div class="row">
            <form action="/crm/cuttion-master-confirm/{{ $row->id }}" class="col-sm-6" method="post">
                @csrf
                <p class="payment_title">Please confirm if all the details are correct. If they are, please confirm so that this data can be sent to the cutting master.</p>
                <div class="nk-int-st" style="display: flex">
                   <select name="confirmation" id="" class="form-control">
                    <option value="N" <?= $row->allow_cutting_master == "N" ? "selected" : "" ?>>No , I want Skip</option>
                    <option value="Y" <?= $row->allow_cutting_master == "Y" ? "selected" : "" ?>>Yes confirmed, Go to cutting master </option>
                   </select>
                    <button class="btn btn-primary" style="min-width: 130px;
    border-radius: 0px;">Confirm</button>
                  </div>

                  @if($row->allow_cutting_master == "Y")
                        <p class="text-success success_p">This product has now gone to the Cutting Master</p>
                  @endif

             </form>
        </div> --}}

               <div class="row mt-3" style="margin-top:20px">
                <form action="/crm/makepayment/{{ $row->id }}" class="col-sm-8" method="get">
                    <p class="payment_title">Enter amount and select paymnet date</p>
                    <div class="nk-int-st" style="display: flex">


                        <select name="payment_mode" id="" required class="form-control">
                            <option disabled selected>Payment  Mode</option>
                            <option value="online" >Online Payment</option>
                            <option value="cash" >Cash</option>
                           </select>

                           <input
                          type="number"
                          class="form-control input-sm"
                          name="amount"
                          required
                          placeholder="Amount"
                        />
                        <input
                        type="date"
                        class="form-control input-sm"
                        name="payment_date"
                        required
                        placeholder="Amount"
                      />
                        <button class="btn btn-primary" style="min-width: 130px;
        border-radius: 0px;">Pay Amount</button>
                      </div>
                 </form>
               </div>

              <div class="bsc-tbl-bdr">

                <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th style="text-wrap: nowrap">#</th>
                        <th style="text-wrap: nowrap">Payment Mode</th>
                        <th style="text-wrap: nowrap">Amount</th>
                        <th style="text-wrap: nowrap">Date</th>
                      </tr>
                    </thead>
                    <tbody>

                    @foreach($tran as $key => $value)

                     <tr>
                        <td style="text-wrap: nowrap">{{ $key+1 }}</td>
                        <td style="text-wrap: nowrap">{{ $value->payment_mode }}</td>
                        <td style="text-wrap: nowrap">{{ $value->amount }}</td>
                        <td style="text-wrap: nowrap">{{ $value->payment_date }}</td>

                      </tr>

                      @endforeach

                    </tbody>
                  </table>

              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-12"></div>
        </div>
      </div>
    </div>
    @endsection
