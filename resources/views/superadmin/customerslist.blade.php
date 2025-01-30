
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
</style>


    <div class="form-element-area">
      <div class="container">
        <div class="row">
          <div
            class="col-lg-12 col-md-12 col-sm-12 col-xs-12"
            style="background: #fff; padding: 20px"
          >

          @if(session()->has('success'))
    <div class="alert alert-success">
        {{ session()->get('success') }}
    </div>
@endif


            <div class="row">
              <div class="col-lg-6">
                <div class="form-group">
                 <form action="/crm/customers-list" method="get">
                    <div class="nk-int-st" style="display: flex">
                        <input
                          type="search"
                          class="form-control input-sm"
                          name="search"
                          placeholder="Search ..."
                        />
                        <button class="btn btn-primary" style="    min-width: 91px;
        border-radius: 0px;">Search</button>
                      </div>
                 </form>

                 <?php  if (isset($_GET['search']) && !empty($_GET['search'])) { ?>
                 <div style="margin-top:20px"><b>Search Results :</b> {{ $_GET['search'] }}</div>
                 <?php } ?>

                 @if ($customers->count() == 0)
                     <div style="    font-size: 12px;
    margin-top: 9px;
    color: red;">No Customer Found</div>
                 @endif

                </div>
              </div>
            </div>
            <div class="normal-table-list">
              <div class="bsc-tbl-bdr">
                <table class="table table-bordered">
                  <thead>
                    <tr>
                      <th style="text-wrap: nowrap">#</th>
                      <th style="text-wrap: nowrap">Bill No.</th>
                      <th style="text-wrap: nowrap">Customer Name</th>
                      <th style="text-wrap: nowrap">Voice Recording</th>
                      <th style="text-wrap: nowrap">Fabric Images</th>
                      <th style="text-wrap: nowrap">Mobile Number</th>
                      <th>Date & Time</th>
                      <th style="text-wrap: nowrap">Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    @foreach ($customers as $key => $value )

                    <tr>
                      <td style="text-wrap: nowrap">{{ $key+1 }}</td>
                      <td style="text-wrap: nowrap">{{ $value->bill_number }}</td>
                      <td style="text-wrap: nowrap">{{ $value->name }}</td>
                      <td style="text-wrap: nowrap">
                        <audio controls>
                        <source src="{{ $value->audioPlayer_input }}" type="audio/ogg">
                      </audio>

                    </td>
                      <td>
                        @if(isset($value->fabric_image))

                        <a href="{{ url('uploads') }}/{{ $value->fabric_image }}">
                            <img src="{{ url('uploads') }}/{{ $value->fabric_image }}" class="uploaded_images" alt="">
                        </a>

                        @endif
                      </td>
                      <td style="text-wrap: nowrap">{{ $value->mobile }}</td>
                      <td style="text-wrap: nowrap">{{ $value->created_at->format('d/m/Y | h:i A') }}
                    </td>




                    <td style="text-wrap: nowrap">

                        @if(Auth::user()->role_type == "billing")
                        @else

                        <a href="/crm/edit-customers/{{ $value->id }}">
                          <button
                            class="btn btn-primary primary-icon-notika waves-effect"
                          >
                            <i class="notika-icon notika-edit"></i>
                          </button>
                        </a>

                        @endif

                        <a href="javascript:void(0)" onclick="opencustomer({{ $value->id }})">
                          <button
                            class="btn btn-info primary-icon-notika waves-effect"
                            data-toggle="modal"
                            data-target="#ViewModal"
                          >
                            <i class="notika-icon notika-eye"></i>
                          </button>
                        </a>



                        @if(Auth::user()->role_type == "billing")
                        <a href="/crm/manage-billing/{{ $value->id }}">
                            <button
                              class="btn btn-success primary-icon-notika waves-effect"
                            >
                            <svg width="20" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"><path d="M22.0049 6.99979H23.0049V16.9998H22.0049V19.9998C22.0049 20.5521 21.5572 20.9998 21.0049 20.9998H3.00488C2.4526 20.9998 2.00488 20.5521 2.00488 19.9998V3.99979C2.00488 3.4475 2.4526 2.99979 3.00488 2.99979H21.0049C21.5572 2.99979 22.0049 3.4475 22.0049 3.99979V6.99979ZM20.0049 16.9998H14.0049C11.2435 16.9998 9.00488 14.7612 9.00488 11.9998C9.00488 9.23836 11.2435 6.99979 14.0049 6.99979H20.0049V4.99979H4.00488V18.9998H20.0049V16.9998ZM21.0049 14.9998V8.99979H14.0049C12.348 8.99979 11.0049 10.3429 11.0049 11.9998C11.0049 13.6566 12.348 14.9998 14.0049 14.9998H21.0049ZM14.0049 10.9998H17.0049V12.9998H14.0049V10.9998Z"></path></svg>
                            </button>
                          </a>
                        @else

                        <?php
                        if (isset($value->fabric_image)) {
                            $image = $value->fabric_image;
                        } else {
                            $image = 'no_image';
                        } ?>


                        <a onclick="return confirm('Are you sure !')" href="{{ route('deleterownew', ['table' => 'cusotmers', 'id' => $value->id, 'image' => $image]) }}">
                          <button
                            class="btn btn-danger primary-icon-notika waves-effect"
                          >
                            <i class="notika-icon notika-trash"></i>
                          </button>
                        </a>
                        @endif
                        <a href="/crm/customer/invoice/{{ $value->id }}">
                          <button
                            class="btn btn-warning primary-icon-notika waves-effect"
                          >
                            <i class="notika-icon notika-paperclip"></i>
                          </button>
                        </a>
                      </td>
                    </tr>

                    @endforeach
                  </tbody>
                </table>


                @if ($customers instanceof \Illuminate\Pagination\LengthAwarePaginator)
    <div class="pagination-container">
        {{-- Custom Pagination Links --}}
        {{ $customers->links('vendor.pagination.custom') }}  {{-- Reference to the custom pagination view --}}
    </div>
@endif


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
