
@extends('cutting_master.layout.index')
@section('content')

<style>
    .alert{
        padding: 0px;
    margin-top: 5px;
    color: red;
    }


    .alert-success {
    color: #3c763d !important;
    background-color: #dff0d8;
    border-color: #d6e9c6;
    padding: 14px !important;
}


</style>

    <!-- steep form start -->
    <section class="signup-step-container">
      <div class="container">
        <div class="row d-flex justify-content-center">

          <div class="col-md-12">
              <div class="row mg-t-20">

                <div
                  class="col-lg-12 col-md-12 col-sm-12 col-xs-12"
                  style="background: #fff; padding: 20px"
                >

                  <div class="normal-table-list">
                    <h3 style="margin-bottom: 20px">Completed Work</h3>
                    <div class="bsc-tbl-bdr">
                      <table class="table table-bordered">
                        <thead>
                          <tr>
                            <th>#</th>
                            <th>Bill No.</th>
                            <th>Total Quantity</th>
                            <th>Category Type</th>
                            <th>Date</th>
                            <th>View</th>
                          </tr>
                        </thead>
                        <tbody>


                            @foreach ($data as $key => $value)

                          <tr>
                            <td>{{ $key+1 }}</td>
                            <td>@if(isset($value->customer->bill_number))
                                {{ $value->customer->bill_number }}
                            @endif</td>
                            <td>{{ $value->qty }}</td>
                            <td>{{ $value->category_type }}</td>
                            <td>{{ $value->created_at->format('d/m/Y | h:i A') }}
                            </td>
                            <td>

                                <div  onclick="opencustomer({{ $value->customer_id }})"
                                    class="btn btn-info primary-icon-notika waves-effect"
                                    data-toggle="modal"
                                    data-target="#ViewModal"><i class="notika-icon notika-eye"></i></div>

                              </td>
                          </tr>

                          @endforeach

                        </tbody>
                      </table>

                      @if ($data instanceof \Illuminate\Pagination\LengthAwarePaginator)
                      <div class="pagination-container">
                          {{-- Custom Pagination Links --}}
                          {{ $data->links('vendor.pagination.custom') }}  {{-- Reference to the custom pagination view --}}
                      </div>
                        @endif


                    </div>
                  </div>
                </div>
              </div>
          </div>
        </div>
      </div>
    </section>
    <!-- steep form end -->


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
