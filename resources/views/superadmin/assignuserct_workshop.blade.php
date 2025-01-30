
@extends('superadmin.layout.common')
@section('content')

<style>
    .opp{
        padding: 10px;
    }
    .text-white{
        color: #fff !important;
        padding: 10px;
        display: inline-block;
    }

    .ultag ul{
        display: flex;
        align-items: center;
        flex-wrap: wrap;
        gap: 10px;
    }
    .assign-form{
        padding: 15px;
    background-color: #f1f1f1;
    border-radius: 5px;
    }

</style>

<!-- customer list area Start-->
    <div class="form-element-area">
      <div class="container">
        <div class="row">
          <div
            class="col-lg-12 col-md-12 col-sm-12 col-xs-12"
            style="background: #fff; padding: 20px"
          >
            <div class="row">
              {{-- <div class="col-lg-4">
                <div class="form-group">
                  <div class="nk-int-st">
                    <input
                      type="search"
                      class="form-control input-sm"
                      placeholder="Search ..."
                    />
                  </div>
                </div>
              </div> --}}


            </div>
            <div class="normal-table-list">
              <div class="bsc-tbl-bdr">
              <h4>Assign customers to Cutting Master & Workshop</h4>

          @if(session()->has('success'))
          <div class="alert alert-success">
              {{ session()->get('success') }}
          </div>
      @endif


      <div class="view-actions row">
        <div class="ultag col-sm-6">


            <p><b>- <u>{{ $row->bill_number }}</u></b></p>
            <p><b>- <u>{{ $row->name }}</u></b></p>
            <p><b>- <u>{{ $row->mobile }}</u></b></p>

            <ul>
                <li>
                    <a href="/crm/manage-billing/{{ $row->id }}" target="_blank" class="btn btn-primary">View Billing</a>
                </li>

                <li>
                    <a href="javascript:void(0)"  onclick="opencustomer({{ $row->id }})" data-toggle="modal"
                    data-target="#ViewModal" class="btn btn-primary">View Customer</a>
                </li>

            </ul>
        </div>
        <div class="col-sm-6">
            <div class="assign-form">
                <form action="/crm/assignpost/{{ $row->id }}" method="post">
                    @csrf
                    <div class="form-group">
                        <?php $cutting_master = DB::table('users')->where('role','team')->where('role_type','cutting_master')->select(['id','name'])->get(); ?>
                        <label for="">Select Cutting Master</label>
                        <select name="cutting_master" class="form-control" id="">
                            @foreach($cutting_master as $key => $value)
                            <option value="{{ $value->id }}">{{ $value->name }}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="form-group">
                        <?php $cutting_master = DB::table('users')->where('role','team')->where('role_type','workshop')->select(['id','name'])->get(); ?>
                        <label for="">Select Workshop</label>
                        <select name="workshop" class="form-control" id="">
                            @foreach($cutting_master as $key => $value)
                            <option value="{{ $value->id }}">{{ $value->name }}</option>
                            @endforeach
                        </select>
                    </div>

                    <button type="submit" class="btn btn-success">Continue to assign</button>

                </form>
            </div>
        </div>
      </div>


              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-12"></div>
        </div>
      </div>
    </div>
    <!-- customer list area End-->
    <!-- view modal -->


    <div class="modal fade" id="ViewModal" role="dialog">
        <div class="modal-dialog modal-large">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">
                &times;
              </button>
            </div>
            <div class="modal-body">
              <h2>Customer Details</h2>
              <div id="customerdetails">
                Loading Customer Details.....
              </div>
            </div>
            <div class="modal-footer">
              <a href="invoice.html">
                <button
                  type="button"
                  class="btn btn-default"
                  style="border-radius: 0; font-size: 12px; padding: 10px 20px"
                >
                  <i class="fa fa-print"></i> Invoice
                </button>
              </a>
              <button
                type="button"
                class="btn btn-danger"
                data-dismiss="modal"
                style="border-radius: 0; font-size: 12px; padding: 10px 20px"
              >
                <i class="fa fa-close"></i> Close
              </button>
            </div>
          </div>
        </div>
      </div>




      <script>
        function opencustomer(customerid){
            $('#customerdetails').html('Loading Customer Details....');
            $.ajax({
                    url: '/crm/viewcustomer/'+customerid,  // URL to the GET route
                    method: 'GET',        // Using the GET method
                    success: function(response) {
                        // On success, append the response to the div
                        $('#customerdetails').html(response);
                    },
                    error: function(xhr, status, error) {
                        // Handle errors
                        $('#customerdetails').html('<p>Error occurred!</p>');
                    }
                });
        }



      </script>


    @endsection
