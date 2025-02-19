<div class="table-responsive">
    <table class="table table-bordered">
        <tbody>
            <tr>
                <th class="table-dark">Aadhar Number</th>
                <td>{{ $row->aadhar_card_number ?? 'N/A' }}</td>
            </tr>
            <tr>
                <th class="table-dark">Aadhar Front</th>
                <td>
                    @if(isset($row->aadhar_card))
                        <img src="{{ url('') }}/{{ $row->aadhar_card }}" class="img-thumbnail" width="100px" height="80px">
                    @else
                        N/A
                    @endif
                </td>
            </tr>
            <tr>
                <th class="table-dark">Aadhar Back</th>
                <td>
                    @if(isset($row->aadhar_card_back))
                        <img src="{{ url('') }}/{{ $row->aadhar_card_back }}" class="img-thumbnail" width="100px" height="80px">
                    @else
                        N/A
                    @endif
                </td>
            </tr>
            <tr>
                <th class="table-dark">Bank Passbook</th>
                <td>
                    @if(isset($row->cancel_chaque))
                        <img src="{{ url('') }}/{{ $row->cancel_chaque }}" class="img-thumbnail" width="100px" height="80px">
                    @else
                        N/A
                    @endif
                </td>
            </tr>
            <tr>
                <th class="table-dark">PAN Number</th>
                <td>{{ $row->pan_number ?? 'N/A' }}</td>
            </tr>
            <tr>
                <th class="table-dark">PAN Card</th>
                <td>
                    @if(isset($row->pan_card))
                        <img src="{{ url('') }}/{{ $row->pan_card }}" class="img-thumbnail" width="100px" height="80px">
                    @else
                        N/A
                    @endif
                </td>
            </tr>

            <tr>
                <th class="table-dark">Change Status</th>
                <td>
                    <form method="post" action="{{ url('admin/viewkyc/' . $row->id) }}">
                        @csrf
                        <div class="d-flex align-items-center">
                            <select name="kyc_status" class="form-select w-50 me-3">
                                <option value="apply" {{ $row->kyc_status == 'apply' ? 'selected' : '' }}>Pending</option>
                                <option value="reject" {{ $row->kyc_status == 'reject' ? 'selected' : '' }}>Reject</option>
                                <option value="complete" {{ $row->kyc_status == 'complete' ? 'selected' : '' }}>Complete</option>
                            </select>
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                    </form>
                </td>
            </tr>

        </tbody>
    </table>
</div>
