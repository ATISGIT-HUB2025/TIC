@section('title', 'Dashboard - Yug Parivartan Samiti')
@extends('layout.admin')
@section('content')

    <div class="content-page">
        <div class="content">
            <style>
                .uploaded_image img {
                    width: 200px;
                    height: 200px;
                    margin-bottom: 20px;
                    box-shadow: var(--bs-box-shadow) !important;
                    padding: 10px;
                    border-radius: 20px;
                    object-fit: cover;
                }
            </style>
            <!-- Start Content-->
            <div class="container-fluid">

                <div class="py-3 d-flex align-items-sm-center flex-sm-row flex-column">
                    <div class="flex-grow-1">
                        <h4 class="fs-18 fw-semibold m-0">Edit Event</h4>
                    </div>

                    <div class="text-end">
                        <ol class="breadcrumb m-0 py-0">
                            <li class="breadcrumb-item"><a href="/admin/dashboard">Dashboard</a></li>
                            <li class="breadcrumb-item active">Events</li>
                        </ol>
                    </div>
                </div>

                <!-- General Form -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">

                            <div class="card-header">
                                <h5 class="card-title mb-0">Fill Event Details</h5>
                            </div><!-- end card header -->

                            <div class="card-body">
                                <form method="post" enctype="multipart/form-data">
                                    @csrf
                                    <div class="row">
                                        <div class="col-lg-12 ">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Title</label>
                                                <input type="text" id="simpleinput" name="title"
                                                    value="{{ $events->title }}" class="form-control">
                                                @error('title')
                                                    <div class="text-danger mt-2">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>


                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Post Image</label>
                                                <input type="file" accept="image/*" id="simpleinput" name="image"
                                                    value="{{ $events->image }}" class="form-control">
                                                @error('image')
                                                    <div class="text-danger mt-2">{{ $message }}</div>
                                                @enderror


                                                @if (isset($events->image))
                                                    <div class="uploaded_image mt-3">
                                                        <img src="{{ url('uploads') }}/{{ $events->image }}" alt=""
                                                            loading="lazy">
                                                    </div>
                                                @endif



                                            </div>
                                        </div>


                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Location</label>
                                                <input type="text" id="simpleinput" name="location"
                                                    value="{{ $events->location }}" class="form-control">
                                                @error('location')
                                                    <div class="text-danger mt-2">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>


                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Event Date</label>
                                                <input type="date" id="simpleinput" name="date"
                                                    value="{{ $events->date }}" class="form-control">
                                                @error('date')
                                                    <div class="text-danger mt-2">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>


                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Event Start Time</label>
                                                <input type="time" id="simpleinput" name="start_time"
                                                    value="{{ $events->start_time }}" class="form-control">
                                                @error('start_time')
                                                    <div class="text-danger mt-2">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Event End Time</label>
                                                <input type="time" id="simpleinput" name="end_time"
                                                    value="{{ $events->end_time }}" class="form-control">
                                                @error('end_time')
                                                    <div class="text-danger mt-2">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>



                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="l_desc" class="form-label">Short Description</label>
                                                <textarea name="short_description" class="form-control" cols="30" rows="3">{{ $events->short_description }}</textarea>

                                                @error('short_description')
                                                    <div class="text-danger mt-2">{{ $message }}</div>
                                                @enderror

                                            </div>
                                        </div>


                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="l_desc" class="form-label">Description</label>
                                                <textarea name="description" id="summernote" class="form-control" cols="30" rows="3">{{ $events->description }}</textarea>
                                            </div>
                                        </div>

                                        <div class="col-12">
                                            <h4 class="bg-light p-3">Seo Details</h4>
                                        </div>

                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Meta Title</label>
                                                <input type="text" id="simpleinput" name="meta_title"
                                                    value="{{ $events->meta_title }}" class="form-control">
                                                @error('meta_title')
                                                    <div class="text-danger mt-2">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Meta Tags</label>
                                                <input type="text" id="simpleinput" name="meta_tags"
                                                    value="{{ $events->meta_tags }}" class="form-control">
                                                @error('meta_tags')
                                                    <div class="text-danger mt-2">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>


                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="l_desc" class="form-label">Meta Description</label>
                                                <textarea name="meta_description" class="form-control" cols="30" rows="3">{{ $events->meta_description }}</textarea>
                                                @error('meta_description')
                                                    <div class="text-danger mt-2">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>


                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Status</label>
                                                <div class="d-flex">
                                                    <div class="form-check">
                                                        <input class="form-check-input" value="Y" name="status"
                                                            type="radio" name="gridRadios" id="gridRadios1"
                                                            @if ($events->status == 'Y') checked="" @endif>
                                                        <label class="form-check-label" for="gridRadios1">
                                                            Active
                                                        </label>
                                                    </div>
                                                    <div class="form-check ms-3">
                                                        <input class="form-check-input" value="N" name="status"
                                                            type="radio" name="gridRadios" id="gridRadios2"
                                                            @if ($events->status == 'N') checked="" @endif>
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
