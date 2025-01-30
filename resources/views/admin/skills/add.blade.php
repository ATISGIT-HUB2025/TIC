@section('title', 'Skills Management - Yug Parivartan Samiti')
@extends('layout.admin')
@section('content')

    <div class="content-page">
        <div class="content">

            <!-- Start Content-->
            <div class="container-fluid">

                <div class="py-3 d-flex align-items-sm-center flex-sm-row flex-column">
                    <div class="flex-grow-1">
                        <h4 class="fs-18 fw-semibold m-0">Skills Management</h4>
                    </div>

                    <div class="text-end">
                        <ol class="breadcrumb m-0 py-0">
                            <li class="breadcrumb-item"><a href="/admin/dashboard">Dashboard</a></li>
                            <li class="breadcrumb-item active">Skills Management</li>
                        </ol>
                    </div>
                </div>

                <!-- Skills Form -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="card-title mb-0">Skills Details</h5>
                            </div><!-- end card header -->
                            
                           <div class="my-3 px-4">
                                <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">Skills</button>
                           </div>
                           
                           
                           
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Skills</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
            
            <button class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#add_skills">
                New Skill
            </button>

        <table class="table">
            <tr>
                <th>Skill Name</th>
                <th>Percentage</th>
                <th>Action</th>
            </tr>
            <tr>
                <td>HTML</td>
                <td>100%</td>
                <td>
                    
                      <a onclick="return confirm('Are you sure !')" href="" class="text-danger">
                                                <svg width="20" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"><path d="M17 6H22V8H20V21C20 21.5523 19.5523 22 19 22H5C4.44772 22 4 21.5523 4 21V8H2V6H7V3C7 2.44772 7.44772 2 8 2H16C16.5523 2 17 2.44772 17 3V6ZM18 8H6V20H18V8ZM9 11H11V17H9V11ZM13 11H15V17H13V11ZM9 4V6H15V4H9Z"></path></svg>
                                            </a>

                                            <a href="" class="text-primary">
                                                <svg width="20" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"><path d="M15.7279 9.57627L14.3137 8.16206L5 17.4758V18.89H6.41421L15.7279 9.57627ZM17.1421 8.16206L18.5563 6.74785L17.1421 5.33363L15.7279 6.74785L17.1421 8.16206ZM7.24264 20.89H3V16.6473L16.435 3.21231C16.8256 2.82179 17.4587 2.82179 17.8492 3.21231L20.6777 6.04074C21.0682 6.43126 21.0682 7.06443 20.6777 7.45495L7.24264 20.89Z"></path></svg>

                                            </a>
                                            
                                            
                </td>
            </tr>
            
              <tr>
                <td>HTML</td>
                <td>100%</td>
                <td>
                    
                      <a onclick="return confirm('Are you sure !')" href="" class="text-danger">
                                                <svg width="20" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"><path d="M17 6H22V8H20V21C20 21.5523 19.5523 22 19 22H5C4.44772 22 4 21.5523 4 21V8H2V6H7V3C7 2.44772 7.44772 2 8 2H16C16.5523 2 17 2.44772 17 3V6ZM18 8H6V20H18V8ZM9 11H11V17H9V11ZM13 11H15V17H13V11ZM9 4V6H15V4H9Z"></path></svg>
                                            </a>

                                            <a href="" class="text-primary">
                                                <svg width="20" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"><path d="M15.7279 9.57627L14.3137 8.16206L5 17.4758V18.89H6.41421L15.7279 9.57627ZM17.1421 8.16206L18.5563 6.74785L17.1421 5.33363L15.7279 6.74785L17.1421 8.16206ZM7.24264 20.89H3V16.6473L16.435 3.21231C16.8256 2.82179 17.4587 2.82179 17.8492 3.21231L20.6777 6.04074C21.0682 6.43126 21.0682 7.06443 20.6777 7.45495L7.24264 20.89Z"></path></svg>

                                            </a>
                                            
                                            
                </td>
            </tr>
            
            
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
                           
                <!-----add-skills -->
                
                
                                           
<!-- Modal -->
<div class="modal fade" id="add_skills" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <form><div class="modal-content">
        
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">New Skill</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
          
          <div class="row">
               <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="title_1" class="form-label">Skill Name</label>
                                                <input type="text" id="skill_name" name="skill_name" value="" class="form-control">
                                            </div>
                                        </div>
                                        
                                         <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="title_1" class="form-label">Skill Percentage</label>
                                                <input type="number" id="skill_name" name="skill_percentage" value="" class="form-control">
                                            </div>
                                        </div>
          </div>
       
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Create Skill</button>
      </div>
    </div>
    </form>
  </div>
</div>
                
                
                

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
                                    
                                    <div class="row">
                                        <!-- Skill 1 -->
                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="title_1" class="form-label">Title </label>
                                                <input type="text" id="title_1" name="title_1" value="{{ $row1->title}} " class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="desc_1" class="form-label">Description </label>
                                                <input type="text" id="desc_1" name="desc_1" value="{{ old('desc_1', $row1->desc ?? '') }}" class="form-control">
                                            </div>
                                        </div>

                                        {{-- <div class="col-lg-4">
                                            <div class="mb-3">
                                                <label for="btn_1" class="form-label">Button Text 1</label>
                                                <input type="text" id="btn_1" name="btn_1" value="{{ old('btn_1', $row1->btn ?? '') }}" class="form-control">
                                            </div>
                                        </div> --}}

                                        <div class="col-lg-12">
                                            <div class="mb-3">
                                                <label for="image" class="form-label">Image </label>
                                                <input type="file" id="image" name="image" class="form-control">
                                                @if(!empty($row1->image))
                                                    <div class="mt-2">
                                                        <img src="{{ asset($row1->image) }}" alt="Image 1" class="img-thumbnail" style="max-width: 150px; max-height: 150px; object-fit: cover;">
                                                    </div>
                                                @endif
                                            </div>
                                        </div>

                                        <!-- Skill 2 -->
                                        <div class="col-12">
                                            <h5>Box 1</h5>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="title_2" class="form-label">Title</label>
                                                <input type="text" id="title_2" name="title_2" value="{{ old('title_2', $row2->title ?? '') }}" class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="desc_2" class="form-label">Description</label>
                                                <input type="text" id="desc_2" name="desc_2" value="{{ old('desc_2', $row2->desc ?? '') }}" class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="btn_2" class="form-label">Button Name</label>
                                                <input type="text" id="btn_2" name="btn_2" value="{{ old('btn_2', $row2->btn ?? '') }}" class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="btnurl_2" class="form-label">Button URL</label>
                                                <input type="url" id="btnurl_2" name="btnurl_2" value="{{ old('btnurl_2', $row2->btnurl ?? '') }}" class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-12">
                                            <h5>Box 2</h5>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="title_3" class="form-label">Title </label>
                                                <input type="text" id="title_3" name="title_3" value="{{ old('title_3', $row3->title ?? '') }}" class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="desc_3" class="form-label">Description </label>
                                                <input type="text" id="desc_3" name="desc_3" value="{{ old('desc_3', $row3->desc ?? '') }}" class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="btn_3" class="form-label">Button Name</label>
                                                <input type="text" id="btn_3" name="btn_3" value="{{ old('btn_3', $row3->btn ?? '') }}" class="form-control">
                                            </div>
                                        </div>

                                        <div class="col-lg-6">
                                            <div class="mb-3">
                                                <label for="btnurl_3" class="form-label">Button URL</label>
                                                <input type="url" id="btnurl_3" name="btnurl_3" value="{{ old('btnurl_3', $row3->btnurl ?? '') }}" class="form-control">
                                            </div>
                                        </div>

                                    </div>

                                    <div class="col-12">
                                        <div class="mb-3">
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                        </div>
                                    </div>
                                  
                                </form>
                            </div><!-- end card body -->

                        </div><!-- end card -->
                    </div>
                </div><!-- end row -->

            </div> <!-- container-fluid -->

        </div> <!-- content -->
    </div> <!-- content-page -->

@endsection
