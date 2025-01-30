
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
                <table class="table table-bordered">
                  <thead>
                    <tr>
                      <th style="text-wrap: nowrap">#</th>
                      <th style="text-wrap: nowrap">Bill No.</th>
                      <th style="text-wrap: nowrap">Name</th>
                      <th style="text-wrap: nowrap">Mobile Number</th>
                      <th style="text-wrap: nowrap">DOB</th>
                      <th style="text-wrap: nowrap">Action</th>
                    </tr>
                  </thead>
                  <tbody>

                    @foreach($data as $key => $value)
                    <tr>
                      <td style="text-wrap: nowrap">{{ $key+1 }}</td>
                      <td style="text-wrap: nowrap">{{ $value->bill_number }}</td>
                      <td style="text-wrap: nowrap">{{ $value->name }}</td>
                      <td style="text-wrap: nowrap">+91 {{ $value->mobile }}</td>
                      <td style="text-wrap: nowrap">{{ $value->dob }}</td>
                      <td style="text-wrap: nowrap">
                        <span class="label label-primary opp">
                            <a class="text-white" href="/crm/asign-cutting-workshop/{{ $value->id }}" >Assign TO..</a>
                        </span>
                      </td>
                    </tr>
                    @endforeach

                    </tr>
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
        <div class="row">
          <div class="col-12"></div>
        </div>
      </div>
    </div>
    <!-- customer list area End-->
    <!-- view modal -->

    @endsection
