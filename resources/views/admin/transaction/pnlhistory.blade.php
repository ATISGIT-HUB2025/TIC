@section('title', 'Dashboard - Stock-Markect')
@extends('layout.admin')
@section('content')

    <style>
        .dyanamic_image {
            width: 50px;
            height: 50px;
            border-radius: 10px;
            object-fit: cover;
        }

        /* span.select2-dropdown.select2-dropdown--below {
    z-index: 111111111111111111111;
    position: relative;
} */

</style>

    

@section('header')
    <!-- Datatables css -->
    <link href="{{ url('admin') }}/assets/libs/datatables.net-bs5/css/dataTables.bootstrap5.min.css" rel="stylesheet"
        type="text/css" />
    <link href="{{ url('admin') }}/assets/libs/datatables.net-buttons-bs5/css/buttons.bootstrap5.min.css" rel="stylesheet"
        type="text/css" />
    <link href="{{ url('admin') }}/assets/libs/datatables.net-keytable-bs5/css/keyTable.bootstrap5.min.css" rel="stylesheet"
        type="text/css" />
    <link href="{{ url('admin') }}/assets/libs/datatables.net-responsive-bs5/css/responsive.bootstrap5.min.css"
        rel="stylesheet" type="text/css" />
    <link href="{{ url('admin') }}/assets/libs/datatables.net-select-bs5/css/select.bootstrap5.min.css" rel="stylesheet"
        type="text/css" />
        <link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" rel="stylesheet" />

@endsection

<div class="content-page">
    <div class="content">

        <!-- Start Content-->
        <div class="container-fluid">
            @if (session()->has('success'))
                <div class="alert alert-primary alert-dismissible fade show" style="margin-top: 20px;" role="alert">
                    {{ session()->get('success') }}
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
                    </button>
                </div>
            @endif
            <div class="py-3 d-flex align-items-sm-center flex-sm-row flex-column">
                <div class="flex-grow-1">
                    <h4 class="fs-18 fw-semibold m-0">PNL History</h4>
                </div>
                <div class="text-end">
                    <ol class="breadcrumb m-0 py-0">
                        <li class="breadcrumb-item"><a href="/admin/dashboard">Dashboard</a></li>
                        <li class="breadcrumb-item active">PNL History</li>
                    </ol>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header d-flex justify-content-between align-items-center">
                            <h5 class="card-title mb-0">PNL History</h5>
                        </div>

                        <div class="card-body">

                            <div class="">
                                <div class="filter-card bg-light p-3">
                                    <h4 class="text-center mb-3">Search Filter</h4>
                                    <form id="filterForm" class="row">
                                        <!-- Request No -->
                                        <div class="mb-3 col-6 col-sm-3 col-lg-2">
                                            <label for="requestNo" class="form-label">Order No.</label>
                                            <input type="text" class="form-control" id="requestNo" name="order_no" placeholder="Enter Order No.">
                                        </div>
                            
                                        <div class="mb-3 col-sm-4 col-md-5">
                                            <div class="row">
                                                <div class="col">
                                                    <label class="form-label">From</label>
                                                    <input type="date" class="form-control" id="fromDate" name="from_date">
                                                </div>
                                                <div class="col">
                                                    <label class="form-label">To</label>
                                                    <input type="date" class="form-control" id="toDate" name="to_date">
                                                </div>
                                            </div>
                                        </div>
                            
                                        <!-- Submit Buttons -->
                                        <div class="col-12">
                                            <button type="submit" class="btn btn-success">Search</button>
                                            <button type="reset" class="btn btn-danger" id="resetFilter">Reset</button>
                                        </div>
                                    </form>
                                </div>
                            </div>

                            <div class="d-flex justify-content-end">
                                <a href="/admin/new-pnl" class="btn btn-primary my-3" >New PNL</a>
                            </div>
                            <div class="d-flex align-items-center mb-4">
                                <p class="mb-0">Total Records : {{ $totalrecords }}</p>
                                <p class="mb-0 ms-3">Total Profit : Rs.{{ $total_profit }}</p>
                            </div>
                            
                            <table id="example"
                                class="table table-striped dt-responsive nowrap table-striped w-100">
                                <thead>
                                    <tr>
                                        <th>S.N</th>
                                        <th>Order Id</th>
                                        <th>Username</th>
                                        <th>Amount</th>
                                        <th>Trade Balance</th>
                                        <th>Profit Update</th>
                                        <th>Percentage</th>
                                        <th>Created At</th>
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- container-fluid -->

    </div>
    <!-- content -->



</div>


   
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="/admin/newpnl" method="post">
        <input type="hidden" name="_token" value="Om4jBtyaJtR1Worb8hFlj7wWi4ArO8GCQUjFsvyn" autocomplete="off">      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">New PNL</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body" id="bodycontent">
            <div class="row">

                <div class="col-lg-6">
                    <div class="mb-3">
                        <label for="simpleinput" class="form-label">Select User</label>
                        <select name="user" id="user-select" class="form-control">
                            @foreach (App\Models\User::where('role','user')->where('status','approved')->latest()->get() as $key => $value )
                            <option value="{{ $value->id }}">{{ $value->name }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
    
    
                <div class="col-lg-6">
                    <div class="mb-3">
                        <label for="simpleinput" class="form-label">Amount</label>
                       <input type="number" name="amount" class="form-control" value="0">
                    </div>
                </div>


            </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Save changes</button>
        </div>
      </div>
    </form>
    </div>
  </div>

  
@section('footer')

    <!-- Datatables js -->
    <script src="{{ url('admin') }}/assets/libs/datatables.net/js/jquery.dataTables.min.js"></script>

    <!-- dataTables.bootstrap5 -->
    <script src="{{ url('admin') }}/assets/libs/datatables.net-bs5/js/dataTables.bootstrap5.min.js"></script>
    <script src="{{ url('admin') }}/assets/libs/datatables.net-buttons/js/dataTables.buttons.min.js"></script>

    <!-- buttons.colVis -->
    <script src="{{ url('admin') }}/assets/libs/datatables.net-buttons/js/buttons.colVis.min.js"></script>
    <script src="{{ url('admin') }}/assets/libs/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="{{ url('admin') }}/assets/libs/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="{{ url('admin') }}/assets/libs/datatables.net-buttons/js/buttons.print.min.js"></script>

    <!-- buttons.bootstrap5 -->
    <script src="{{ url('admin') }}/assets/libs/datatables.net-buttons-bs5/js/buttons.bootstrap5.min.js"></script>

    <!-- dataTables.keyTable -->
    <script src="{{ url('admin') }}/assets/libs/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="{{ url('admin') }}/assets/libs/datatables.net-keytable-bs5/js/keyTable.bootstrap5.min.js"></script>

    <!-- dataTable.responsive -->
    <script src="{{ url('admin') }}/assets/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="{{ url('admin') }}/assets/libs/datatables.net-responsive-bs5/js/responsive.bootstrap5.min.js"></script>

    <!-- dataTables.select -->
    <script src="{{ url('admin') }}/assets/libs/datatables.net-select/js/dataTables.select.min.js"></script>
    <script src="{{ url('admin') }}/assets/libs/datatables.net-select-bs5/js/select.bootstrap5.min.js"></script>

    <!-- Datatable Demo App Js -->
    <script src="{{ url('admin') }}/assets/js/pages/datatable.init.js"></script>


    <script src="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#user-select').select2({
                placeholder: "Search and select a user",
                allowClear: true
            });
        });
    </script>
    <script>
        $(document).ready(function () {
    var table = $('#example').DataTable({
        processing: true,
        serverSide: true,
        ajax: {
            url: '{{ route('pnlhistory') }}',
            data: function (d) {
                d.request_no = $('#requestNo').val();
                d.date_filter = $('input[name="dateFilter"]:checked').val(); // Radio button value
                d.from_date = $('#fromDate').val();
                d.to_date = $('#toDate').val();
            }
        },
        order: [],
        columns: [
            { data: 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false },
            { data: 'id', name: 'id' },
            { data: 'user_name', name: 'user_name' },
            { data: 'amount', name: 'amount' },
            { data: 'trade_balance', name: 'trade_balance' },
            { data: 'profit_amount', name: 'profit_amount' },
            { data: 'percantage', name: 'percantage' },
            { data: 'created_at', name: 'created_at' },
            // { data: 'action', name: 'action', orderable: false, searchable: false }
        ]
    });

    // Filter Form Submission
    $('#filterForm').on('submit', function (e) {
        e.preventDefault();
        table.ajax.reload();
    });

    // Reset Filter Form
    $('#resetFilter').on('click', function () {
        $('#filterForm')[0].reset();
        table.ajax.reload();
    });
});

    </script>
    


    
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="/admin/updatewithdraw" method="post">
        @csrf
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Update Withdrow Status</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body" id="bodycontent">
        
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Save changes</button>
        </div>
      </div>
    </form>
    </div>
  </div>



  <script>
   function openmodel(modelid) {
    console.log(modelid);
    $.ajax({
        url: '/admin/getwithdraw/' + modelid, // Update with your Laravel route
        method: 'get',
        success: function(response) {
            // Update the modal body content with the response
            $('#bodycontent').html(response);  // Correct syntax
            // $('#myModal').modal('show');  // Open the modal (you may need to adjust based on your modal structure)
        },
        error: function(xhr) {
            // Handle error response
            var errors = xhr.responseJSON.errors;
            if (errors) {
                $.each(errors, function(key, value) {
                    alert(value[0]); // Show validation error
                });
            }
        }
    });
}

  </script>



@endsection

@endsection
