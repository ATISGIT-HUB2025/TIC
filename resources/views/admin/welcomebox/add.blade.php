@section('title', 'Dashboard - Yug Parivartan Samiti')
@extends('layout.admin')

@section('content')

    <div class="content-page">
        <div class="content">
            <!-- Start Content-->
            <div class="container-fluid">
                <div class="py-3 d-flex align-items-sm-center flex-sm-row flex-column">
                    <div class="flex-grow-1">
                        <h4 class="fs-18 fw-semibold m-0">Welcome Home</h4>
                    </div>
                    <div class="text-end">
                        <ol class="breadcrumb m-0 py-0">
                            <li class="breadcrumb-item"><a href="/admin/dashboard">Dashboard</a></li>
                            <li class="breadcrumb-item active">Welcome Home</li>
                        </ol>
                    </div>
                </div>

                <!-- General Form -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="card-title mb-0">All Details</h5>
                            </div><!-- end card header -->
                            <div class="card-body bg-light">
                                <form method="post" enctype="multipart/form-data">
                                    @csrf

                                    @if ($errors->any())
                                    <div class="alert alert-danger">
                                        <ul>
                                            @foreach ($errors->all() as $error)
                                                <li>{{ $error }}</li>
                                            @endforeach
                                        </ul>
                                    </div>
                                    @endif
                                    
                                        @if(session()->has('success'))
            <div class="alert alert-primary alert-dismissible fade show" style="margin-top: 20px;" role="alert">
                {{ session()->get('success') }}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
                </button>
            </div>
            @endif


                                    <!-- Welcome Box 1 -->
                                    <div class="row">
                                        <div class="col-12">
                                            <h5>Welcome Box 1</h5>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Title</label>
                                                <input type="text" name="title_1" value="{{ old('title_1', $row1->title ?? '') }}" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Button</label>
                                                <input type="text" name="btn_1" value="{{ old('btn_1', $row1->btn ?? '') }}" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Button URL</label>
                                                <input type="text" name="btnurl_1" value="{{ old('btnurl_1', $row1->btnurl ?? '') }}" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Description</label>
                                                <textarea name="desc_1" class="form-control" cols="30" rows="5">{{ old('desc_1', $row1->desc ?? '') }}</textarea>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Welcome Box 2 -->
                                    <div class="row">
                                        <div class="col-12">
                                            <h5>Welcome Box 2</h5>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Title</label>
                                                <input type="text" name="title_2" value="{{ old('title_2', $row2->title ?? '') }}" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Button</label>
                                                <input type="text" name="btn_2" value="{{ old('btn_2', $row2->btn ?? '') }}" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Button URL</label>
                                                <input type="text" name="btnurl_2" value="{{ old('btnurl_2', $row2->btnurl ?? '') }}" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Description</label>
                                                <textarea name="desc_2" class="form-control" cols="30" rows="5">{{ old('desc_2', $row2->desc ?? '') }}</textarea>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Welcome Box 3 -->
                                    <div class="row">
                                        <div class="col-12">
                                            <h5>Welcome Box 3</h5>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Title</label>
                                                <input type="text" name="title_3" value="{{ old('title_3', $row3->title ?? '') }}" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Button</label>
                                                <input type="text" name="btn_3" value="{{ old('btn_3', $row3->btn ?? '') }}" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Button URL</label>
                                                <input type="text" name="btnurl_3" value="{{ old('btnurl_3', $row3->btnurl ?? '') }}" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="simpleinput" class="form-label">Description</label>
                                                <textarea name="desc_3" class="form-control" cols="30" rows="5">{{ old('desc_3', $row3->desc ?? '') }}</textarea>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-12">
                                        <div class="mb-3">
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                        </div>
                                    </div>
                                </form>
                            </div><!-- end card body -->
                        </div>
                    </div>
                </div><!-- end row -->
            </div><!-- container-fluid -->
        </div><!-- content -->
    </div><!-- content-page -->
@endsection
