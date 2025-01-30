@section('title', 'Dashboard - Bhagodhan Foundation')
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
                        <h4 class="fs-18 fw-semibold m-0">Edit Banner</h4>
                    </div>

                    <div class="text-end">
                        <ol class="breadcrumb m-0 py-0">
                            <li class="breadcrumb-item"><a href="/admin/dashboard">Dashboard</a></li>
                            <li class="breadcrumb-item active">Banners</li>
                        </ol>
                    </div>
                </div>

                <!-- General Form -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">

                            <div class="card-header">
                                <h5 class="card-title mb-0">Banner Details</h5>
                            </div><!-- end card header -->

                            <div class="card-body">
                                <form method="post" enctype="multipart/form-data">
                                    @csrf
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Title</label>
                                                <input type="text" id="simpleinput" name="title"
                                                    value="{{ $row->title }}" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Image</label>
                                                <input type="file" id="simpleinput" name="image" accept="image/*"
                                                    class="form-control">
                                            </div>
                                            <div class="col-12">
                                                <div class="uploaded_image">
                                                    <img src="{{ url('uploads') }}/{{ $row->image }}" alt=""
                                                        loading="lazy">
                                                </div>
                                            </div>
                                        </div>

                                       

                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Description</label>
                                                <textarea class="form-control" id="example-textarea" name="description" rows="5" spellcheck="false">{{ $row->description }}</textarea>
                                            </div>
                                        </div>

                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Link</label>
                                                <input type="text" id="simpleinput" name="link"
                                                    value="{{ $row->link }}" accept="image/*" class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Status</label>
                                                <div class="d-flex">
                                                    <div class="form-check">
                                                        <input class="form-check-input" value="Y" name="status"
                                                            type="radio" name="gridRadios" id="gridRadios1"
                                                            @if ($row->status == 'Y') checked="" @endif>
                                                        <label class="form-check-label" for="gridRadios1">
                                                            Active
                                                        </label>
                                                    </div>
                                                    <div class="form-check ms-3">
                                                        <input class="form-check-input" value="N" name="status"
                                                            type="radio" name="gridRadios" id="gridRadios2"
                                                            @if ($row->status == 'N') checked="" @endif>
                                                        <label class="form-check-label" for="gridRadios2">
                                                            Inactive
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="col-lg-6">
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


            </div> <!-- container-fluid -->

        </div> <!-- content -->


    </div>

@endsection
