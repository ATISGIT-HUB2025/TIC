@section('title', 'Dashboard - Yug Parivartan Samiti')
@extends('layout.admin')
@section('content')

<div class="content-page">
    <div class="content">

        <!-- Start Content-->
        <div class="container-fluid">

            <div class="py-3 d-flex align-items-sm-center flex-sm-row flex-column">
                <div class="flex-grow-1">
                    <h4 class="fs-18 fw-semibold m-0">Eagle-Constructions</h4>
                </div>

                <div class="text-end">
                    <ol class="breadcrumb m-0 py-0">
                        <li class="breadcrumb-item"><a href="/admin/dashboard">Dashboard</a></li>
                        <li class="breadcrumb-item active">Eagle-Constructions</li>
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

                        <div class="card-body bg-light ">
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

                                <div class="row">
                                    <div class="col-12">
                                        <h5>Eagle-Construction</h5>
                                    </div>

                                    <!-- Title Field -->
                                    <div class="col-lg-6">
                                        <div class="mb-3">
                                            <label for="title" class="form-label">Title</label>
                                            <input type="text" id="title" name="title" value="{{ old('title', $row12->title ?? '') }}" class="form-control">
                                            @error('title')
                                                <div class="text-danger">{{ $message }}</div>
                                            @enderror
                                        </div>
                                    </div>

                                    <!-- Subtitle Field -->
                                    <div class="col-lg-6">
                                        <div class="mb-3">
                                            <label for="subtitle" class="form-label">Subtitle</label>
                                            <input type="text" id="subtitle" name="subtitle" value="{{ old('subtitle', $row12->subtitle ?? '') }}" class="form-control">
                                            @error('subtitle')
                                                <div class="text-danger">{{ $message }}</div>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="mb-3">
                                            <label for="image" class="form-label">Image</label>
                                            <input type="file" id="image" name="image" class="form-control">
                                            
                                            @if($EagleConstruction && $EagleConstruction->image)
                                                <div class="mt-2">
                                                    <img src="{{ asset('uploads/'.$EagleConstruction->image) }}" alt="Current Image" style="max-width: 150px; max-height: 150px; object-fit: cover;">
                                                </div>
                                            @endif
                                            
                                            @error('image')
                                                <div class="text-danger">{{ $message }}</div>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="mb-3">
                                            <label for="image" class="form-label">Favicon Image</label>
                                            <input type="file" id="Favicon" name="Favicon" class="form-control">
                                            
                                            @if($EagleConstruction && $EagleConstruction->Favicon)
                                                <div class="mt-2">
                                                    <img src="{{ asset('uploads/'.$EagleConstruction->Favicon) }}" alt="Current Favicon" style="max-width: 150px; max-height: 150px; object-fit: cover;">
                                                </div>
                                            @endif
                                            
                                            @error('Favicon')
                                                <div class="text-danger">{{ $message }}</div>
                                            @enderror
                                        </div>
                                    </div>
                                    <!-- Description Field -->
                                    <div class="col-lg-12">
                                        <div class="mb-3">
                                            <label for="desc" class="form-label">Description</label>
                                            <textarea name="desc" class="form-control" id="desc" cols="30" rows="5">{{ old('desc', $row12->desc ?? '') }}</textarea>
                                            @error('desc')
                                                <div class="text-danger">{{ $message }}</div>
                                            @enderror
                                        </div>
                                    </div>

                                    <!-- Image Field -->
                                   

                                   
                                    <div class="col-12">
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
