@section('title', 'Dashboard - Yug Parivartan Samiti')
@extends('layout.admin')
@section('content')

    <div class="content-page">
        <div class="content">

            <!-- Start Content-->
            <div class="container-fluid">

                <div class="py-3 d-flex align-items-sm-center flex-sm-row flex-column">
                    <div class="flex-grow-1">
                        <h4 class="fs-18 fw-semibold m-0">Create Project</h4>
                    </div>

                    <div class="text-end">
                        <ol class="breadcrumb m-0 py-0">
                            <li class="breadcrumb-item"><a href="/admin/dashboard">Dashboard</a></li>
                            <li class="breadcrumb-item active">Project</li>
                        </ol>
                    </div>
                </div>

                <!-- General Form -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">

                            <div class="card-header">
                                <h5 class="card-title mb-0">Project Details</h5>
                            </div><!-- end card header -->

                            <div class="card-body">
                                <form method="post" enctype="multipart/form-data">
                                    @csrf
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Project Name </label>
                                                <input type="text" id="simpleinput" name="project_name"
                                                    value="{{ old('project_name') }}" class="form-control">
                                                @error('project_name')
                                                    <div class="text-danger mt-2">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>


                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Date</label>
                                                <input type="date"  id="simpleinput" name="date"
                                                    value="{{ old('date') }}" class="form-control">
                                                @error('date')
                                                    <div class="text-danger mt-2">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Client</label>
                                                <input type="client"  id="simpleinput" name="client"
                                                    value="{{ old('client') }}" class="form-control">
                                                @error('client')
                                                    <div class="text-danger mt-2">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>


                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">loction</label>
                                                <input type="loction"  id="simpleinput" name="loction"
                                                    value="{{ old('loction') }}" class="form-control">
                                                @error('loction')
                                                    <div class="text-danger mt-2">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>


                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Duration</label>
                                                <input type="duration"  id="simpleinput" name="duration"
                                                    value="{{ old('duration') }}" class="form-control">
                                                @error('duration')
                                                    <div class="text-danger mt-2">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>

                                      

                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="example-select" class="form-label">Select Category</label>
                                                <select class="form-select" name="category" id="example-select">
                                                    <?php
                                                    $categories = DB::table('category')
                                                        ->where('status', 'Y')
                                                        ->where('type', 'project')
                                                        ->get(['id', 'title']);
                                                    foreach ($categories as $key => $value) {
                                                    ?>


                                                    <option value="{{ $value->id }}">{{ $value->title }}</option>
                                                    <?php } ?>
                                                </select> @error('category')
                                                    <div class="text-danger mt-2">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Project Image</label>
                                                <input type="file" accept="image/*" id="simpleinput" name="image"
                                                    value="{{ old('image') }}" class="form-control">
                                                @error('image')
                                                    <div class="text-danger mt-2">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>
<div class="col-12">
    <h4 class="bg-light p-3">Project Summery</h4>
</div>

                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="l_desc" class="form-label">Short Description</label>
                                                <textarea name="s_description" class="form-control" cols="30" rows="3"></textarea>

                                                @error('s_description')
                                                    <div class="text-danger mt-2">{{ $message }}</div>
                                                @enderror

                                            </div>
                                        </div>


                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="l_desc" class="form-label">Description</label>
                                                <textarea name="l_description" id="summernote" class="form-control" cols="30" rows="3"></textarea>
                                            </div>
                                        </div>

                                        <div class="col-12">
                                            <h4 class="bg-light p-3">Project Challenges</h4>
                                        </div>

                                      
                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="l_desc" class="form-label">Short Description</label>
                                                <textarea name="s_description1" class="form-control" cols="30" rows="3"></textarea>

                                                @error('s_description1')
                                                    <div class="text-danger mt-2">{{ $message }}</div>
                                                @enderror

                                            </div>
                                        </div>


                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="l_desc" class="form-label">Description</label>
                                                <textarea name="l_description1" id="summernote" class="form-control" cols="30" rows="3"></textarea>
                                            </div>
                                        </div>

                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label"> Image</label>
                                                <input type="file" accept="image/*" id="simpleinput" name="image1"
                                                    value="{{ old('image1') }}" class="form-control">
                                                @error('image1')
                                                    <div class="text-danger mt-2">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <h4 class="bg-light p-3">Project Mission</h4>
                                        </div>


                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="l_desc" class="form-label">Short Description</label>
                                                <textarea name="s_description2" class="form-control" cols="30" rows="3"></textarea>

                                                @error('s_description2')
                                                    <div class="text-danger mt-2">{{ $message }}</div>
                                                @enderror

                                            </div>
                                        </div>


                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="l_desc" class="form-label">Description</label>
                                                <textarea name="l_description2" id="summernote" class="form-control" cols="30" rows="3"></textarea>
                                            </div>
                                        </div>
                                       

                                      

                                        <div class="col-12">
                                            <h4 class="bg-light p-3">Seo Details</h4>
                                        </div>

                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Meta Title</label>
                                                <input type="text" id="simpleinput" name="meta_title"
                                                    value="{{ old('meta_title') }}" class="form-control">
                                                @error('meta_title')
                                                    <div class="text-danger mt-2">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Meta Tags</label>
                                                <input type="text" id="simpleinput" name="meta_tags"
                                                    value="{{ old('meta_tags') }}" class="form-control">
                                                @error('meta_tags')
                                                    <div class="text-danger mt-2">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>


                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="l_desc" class="form-label">Meta Description</label>
                                                <textarea name="meta_description" class="form-control" cols="30" rows="3"></textarea>
                                                @error('meta_description')
                                                    <div class="text-danger mt-2">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>


                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Status</label>
                                                <div class="d-flex">
                                                    <div class="form-check">
                                                        <input class="form-check-input" value="Y" name="status"
                                                            type="radio" name="gridRadios" id="gridRadios1"
                                                            value="option1" checked="">
                                                        <label class="form-check-label" for="gridRadios1">
                                                            Active
                                                        </label>
                                                    </div>
                                                    <div class="form-check ms-3">
                                                        <input class="form-check-input" value="N" name="status"
                                                            type="radio" name="gridRadios" id="gridRadios2"
                                                            value="option2">
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
