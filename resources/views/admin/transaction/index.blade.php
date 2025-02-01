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
                    <h4 class="fs-18 fw-semibold m-0">Transaction</h4>
                </div>
                <div class="text-end">
                    <ol class="breadcrumb m-0 py-0">
                        <li class="breadcrumb-item"><a href="/admin/dashboard">Dashboard</a></li>
                        <li class="breadcrumb-item active">Transaction</li>
                    </ol>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header d-flex justify-content-between align-items-center">
                            <h5 class="card-title mb-0">@if (isset($_GET['type']) && !empty($_GET['type']))
                                @if ($_GET['type'] == 'pending')
                                    Deposit Request
                                    @elseif($_GET['type'] == 'reject')
                                    Rejected Requests
                                    @else 
                                    Accepted Requests
                                @endif
                            @endif</h5>
                        </div>

                        <div class="card-body">
                            <table id="example"
                                class="table table-striped dt-responsive nowrap table-striped w-100">
                                <thead>
                                    <tr>
                                        <th>S.N</th>
                                        <th>Amount</th>
                                        <th>Utr / Transaction Id</th>
                                        <th>Screenshot</th>
                                        <th>Created At</th>
                                        <th>Status</th>
                                        <th>Action</th>
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


    <script>
        $(document).ready(function() {
            // Initialize the DataTable
            $('#example').DataTable({
                processing: true,
                serverSide: true,
                ajax: {
                    url: '{{ route('transactions') }}',  // Update with your route
                    data: function (d) {
                        d.start_date = $('#start_date').val();
                        d.end_date = $('#end_date').val();
                        d.status = '<?= $_GET['type'] ?>';
                    }
                },
                order: [], // Disable ordering
                columns: [
                    { 
                        data: 'DT_RowIndex',  // Automatically generated serial number
                        name: 'DT_RowIndex',  // Use DT_RowIndex for serial number
                        orderable: false,      // Disable ordering for this column
                        searchable: false      // Disable search for this column
                    },
                    { data: 'amount', name: 'amount' },
                    { data: 'utr', name: 'utr' },
                    { data: 'screenshot', name: 'screenshot' },  // Column for screenshot link
                    { data: 'created_at', name: 'created_at' },
                    { data: 'status', name: 'status' },
                    { data: 'action', name: 'action', orderable: false, searchable: false }  // Optional: For actions column
                ]
            });
        });
    </script>
    


    
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="/admin/updatetransaction" method="post">
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
        url: '/admin/gettransaction/' + modelid, // Update with your Laravel route
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
