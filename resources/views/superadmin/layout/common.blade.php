@if(Auth::user()->role_type == "admin")
    @include('superadmin.layout.inside.admin')


    @elseif(Auth::user()->role_type == "billing")
    @include('superadmin.layout.inside.billing')

    @elseif(Auth::user()->role_type == "receptionist")
    @include('superadmin.layout.inside.receptionist')
    @endif
