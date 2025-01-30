
<style>
    /* Custom styles for pagination */
.pagination li.active span {
    background-color: #0275d8;
    border-color: #0275d8;
    color: #fff;
}

.pagination li.disabled span {
    background-color: #f9f9f9;
    color: #ccc;
}

.pagination li a {
    color: #0275d8;
}

</style>
<!-- resources/views/vendor/pagination/bootstrap-3.blade.php -->

@if ($paginator->hasPages())
    <ul class="pagination">
        <!-- Previous Page Link -->
        @if ($paginator->onFirstPage())
            <li class="disabled"><span>&laquo;</span></li>
        @else
            <li><a href="{{ $paginator->previousPageUrl() }}" rel="prev">&laquo;</a></li>
        @endif

        <!-- Pagination Elements -->
        @foreach ($elements as $element)
            @if (is_string($element))
                <li class="disabled"><span>{{ $element }}</span></li>
            @endif

            @if (is_array($element))
                @foreach ($element as $page => $url)
                    @if ($page == $paginator->currentPage())
                        <li class="active"><span>{{ $page }}</span></li>
                    @else
                        <li><a href="{{ $url }}">{{ $page }}</a></li>
                    @endif
                @endforeach
            @endif
        @endforeach

        <!-- Next Page Link -->
        @if ($paginator->hasMorePages())
            <li><a href="{{ $paginator->nextPageUrl() }}" rel="next">&raquo;</a></li>
        @else
            <li class="disabled"><span>&raquo;</span></li>
        @endif
    </ul>
@endif
