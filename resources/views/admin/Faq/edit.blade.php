@section('title', 'Dashboard - Stock-Markect')
@extends('layout.admin')
@section('content')

    <div class="content-page">
        <div class="content">

            <!-- Start Content-->
            <div class="container-fluid">

                <div class="py-3 d-flex align-items-sm-center flex-sm-row flex-column">
                    <div class="flex-grow-1">
                        <h4 class="fs-18 fw-semibold m-0">Edit Faqs</h4>
                    </div>

                    <div class="text-end">
                        <ol class="breadcrumb m-0 py-0">
                            <li class="breadcrumb-item"><a href="/admin/dashboard">Dashboard</a></li>
                            <li class="breadcrumb-item active">Faqs</li>
                        </ol>
                    </div>
                </div>

                <!-- General Form -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">

                            <div class="card-header">
                                <h5 class="card-title mb-0">Faqs Details</h5>
                            </div><!-- end card header -->

                            <div class="card-body">
                                <form method="post" enctype="multipart/form-data">
                                    @csrf
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Title</label>
                                                <input type="text" id="simpleinput" name="title"
                                                    value="{{$row->title}}" class="form-control">
                                                @error('title')
                                                    <div class="text-danger mt-2">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="l_desc" class="form-label">Description</label>
                                                <textarea name="description" id="" class="form-control" cols="30" rows="3">{{$row->description}}</textarea>
                                            </div>
                                        </div>

                                        

 <div class="col-lg-12">
    <div class="mb-3">
        <label for="simpleinput" class="form-label">Status</label>
        <div class="d-flex">
            <!-- Active Option -->
            <div class="form-check">
                <input 
                    class="form-check-input" 
                    type="radio" 
                    value="Y" 
                    name="status" 
                    id="gridRadios1" 
                    {{ old('status', $row->status) == 'Y' ? 'checked' : '' }}>
                <label class="form-check-label" for="gridRadios1">
                    Active
                </label>
            </div>

            <!-- Inactive Option -->
            <div class="form-check ms-3">
                <input 
                    class="form-check-input" 
                    type="radio" 
                    value="N" 
                    name="status" 
                    id="gridRadios2" 
                    {{ old('status', $row->status) == 'N' ? 'checked' : '' }}>
                <label class="form-check-label" for="gridRadios2">
                    Inactive
                </label>
            </div>
        </div>
    </div>
</div>

                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <button type="submit" class="btn btn-primary">Submit</button>
                                            </div>
                                        </div>

                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>

            @section('header')
                <link href="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote-lite.min.css" rel="stylesheet">
            @endsection
            @section('footer')


                <script src="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote-lite.min.js"></script>


                {{-- <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script> --}}

                <script>
                    $('#summernote').summernote({
                        placeholder: '',
                        tabsize: 2,
                        height: 300,
                        toolbar: [
                            ['style', ['style']],
                            ['font', ['bold', 'underline', 'clear']],
                            ['color', ['color']],
                            ['fontsize', ['fontsize']],
                            ['para', ['ul', 'ol', 'paragraph']],
                            ['table', ['table']],
                            ['insert', ['link', 'picture', 'video']],
                            ['view', ['fullscreen', 'codeview', 'help']]
                        ],
                        fontSizes: ['8', '10', '12', '14', '16', '18', '20', '24', '28', '36', '48', '64', '82',
                            '150'
                        ], // Custom font sizes
                    });
                </script>
            @endsection


        </div> <!-- container-fluid -->

    </div> <!-- content -->


</div>

@endsection
