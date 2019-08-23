@extends('layouts.app')

@section("styles") 
 <style></style>
@endsection


@section('content')

<div class="container">
        <div class="months">

            @foreach($month as $dates)
                <div class="month">
                    <a onclick="Cookies.set('monthName', '{{ $dates->date_id }}');" href="../public/grid/{{ $dates->date_id }}">{{ $dates -> month }}</a>
                </div>
            @endforeach

           
        </div>
    </div>
@endsection