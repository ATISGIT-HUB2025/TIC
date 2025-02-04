

@if($row->status == "pending")
<input type="number" value="{{ $row->id }}" name="transaction_id" hidden>
<label for="">Select Status</label>
<select name="status" id="" class="form-select">
    <option value="pending" <?= $row->status == "pending" ? "selected" : "" ?>>Pending</option>
    <option value="reject" <?= $row->status == "reject" ? "selected" : "" ?>>Reject</option>
    <option value="complete" <?= $row->status == "complete" ? "selected" : "" ?>>Accept</option>
</select>
@else

<h3>Now can not update</h3>

@endif