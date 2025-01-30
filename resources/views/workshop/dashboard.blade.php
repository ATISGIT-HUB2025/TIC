@extends('workshop.layout.layout')
@section('content')

<style>
     .uploaded_images{
        width: 60px;
    height: 60px;
    border: 1px solid #eee;
    padding: 2px;
    }
</style>

    <!-- steep form start -->
    <section class="signup-step-container">
      <div class="container">
        <div class="row d-flex justify-content-center">
          <div class="col-md-12">

              <div class="row mg-t-20">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mg-b-15">
                    <form method="post" action="/workshop/update-workshop-cutting">
                        @csrf
                    <div class="form-element-list">
                    <div class="row">

                        @if(session()->has('success'))
                        <div class="col-12">
                        <div class="alert alert-success">
                            {{ session()->get('success') }}
                        </div>


                    </div>
                    @endif



                    @if(session()->has('error'))
                        <div class="col-12">
                        <div class="alert alert-danger" style="padding: 12px;">
                            {{ session()->get('error') }}
                        </div>
                    </div>
                    @endif
                      <div class="col-lg-3 col-md-3 col-sm-3 col-xs-4 mb-4">
                        <div class="form-group">
                          <label style="font-size: 12px">Bill No</label>
                          <div class="nk-int-st">
                            <input
                              type="text"
                              class="form-control input-sm"
                              name="bill"
                              placeholder="Bill No"
                            />
                          </div>
                          @error('bill')
                          <div class="alert text-danger">{{ $message }}</div>
                      @enderror
                        </div>
                      </div>
                      <div class="col-lg-3 col-md-3 col-sm-3 col-xs-4 mb-4">
                        <div class="form-group">
                          <label style="font-size: 12px">Select Category</label>
                          <div class="nk-int-st">
                           <select name="category_type" id="" style="height:43px" class="form-control input-sm">
                            <option value="shirt">Shirt</option>
                            <option value="kurta">Kurta</option>
                            <option value="jacket">jacket</option>
                            <option value="trouser">Trouser</option>
                            <option value="pant">Pant</option>
                            <option value="pajama">Pajama</option>
                           </select>
                          </div>
                          @error('category_type')
                          <div class="alert text-danger">{{ $message }}</div>
                      @enderror
                        </div>
                      </div>
                      <div class="col-lg-3 col-md-3 col-sm-3 col-xs-4 mb-4">
                        <div class="form-group">
                          <label style="font-size: 12px">Qty</label>
                          <div class="nk-int-st">
                            <input
                              type="text"
                              class="form-control input-sm"
                              placeholder="qty"
                              name="qty"
                            />
                          </div>
                          @error('qty')
    <div class="alert text-danger">{{ $message }}</div>
@enderror
                        </div>
                      </div>

                      <div class="col-lg-2 col-md-2 col-sm-2 col-xs-4 mb-4">
                        <ul class="list-inline pull-right">
                          <li>
                            <button type="submit" class="default-btn next-step">
                              Save
                            </button>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </form>
                </div>
                <div
                  class="col-lg-12 col-md-12 col-sm-12 col-xs-12"
                  style="background: #fff; padding: 20px"
                >
                  <div class="row">
                    <div class="col-lg-4 col-xs-6">
                      <div class="form-group">
                        <div class="nk-int-st">
                            <form>
                          <input
                            type="search"
                            name="search"
                            value="<?php if(isset($_GET['search']) && !empty($_GET['search'])){echo $_GET['search'];} ?>"
                            class="form-control input-sm"
                            placeholder="Search ..."
                          />
                            </form>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="normal-table-list">
                    <div class="bsc-tbl-bdr">
                        <h4>Today Enquiry</h4>
                      <table class="table table-bordered">
                        <thead>
                          <tr>
                            <th>#</th>
                            <th>Bill No.</th>
                            <th>Category Type</th>
                            <th>Cutting Qty</th>
                            <th>Total Qty</th>
                            <th>Voice Recording</th>
                            <th>Fabric Images</th>
                            <th>Date & Time</th>
                            <th>View Customer Info</th>
                          </tr>
                        </thead>
                        <tbody>
                        @foreach ($all_cutting as $key => $value)
                          <tr>
                            <td>{{ $key+1 }}</td>
                            <td>
                              @if(isset($value->customer->bill_number))
                              {{ $value->customer->bill_number }}
                              @endif
                            </td>
                            <td>{{$value->category_type}}</td>
                            <td>{{$value->qty}}</td>
                            <td>@if(isset($value->customer->quantity))

                            {{$value->customer->quantity}}
                            @endif
                        </td>


                            <td>
                                <audio controls>
                                    <source src="{{ $value->customer->audioPlayer_input }}" type="audio/ogg">
                                  </audio>
                            </td>
                            <td>
                                @if(isset($value->customer->fabric_image))

                                <a href="{{ url('uploads') }}/{{ $value->customer->fabric_image }}">
                                    <img src="{{ url('uploads') }}/{{ $value->customer->fabric_image }}" class="uploaded_images" alt="">
                                </a>

                                @endif
                              </td>



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


                      @if ($all_cutting instanceof \Illuminate\Pagination\LengthAwarePaginator)
                      <div class="pagination-container">
                          {{-- Custom Pagination Links --}}
                          {{ $all_cutting->links('vendor.pagination.custom') }}  {{-- Reference to the custom pagination view --}}
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
