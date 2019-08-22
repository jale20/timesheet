@extends ('layouts.app')

@section ('content')


<div class="container">
    <div class="workerTable">
        <form action="" method="POST">
            <input name="_token" type="hidden" value="{{ csrf_token() }}"/>
            <div class="row">
                <div class="col-12 col-md-9">
                    <table class="table-bordered ">
                        <thead>
                            <tr>
                                <th scope="col">Days</th>
                                <th scope="col">Participation</th>
                                <th scope="col">Comments</th>
                                <th scope="col">Hours</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($timesheet as $t) 
                                <tr>
                                    <th scope="row">
                                        <input name="day_{{ $loop->index }}" class="text-center" type="text" readonly placeholder="{{ $t->day }}">
                                    </th>
                                    <td>
                                        <select name="participation_{{ $loop->index }}" id="statusComboId" class="w-100">
                                            @foreach($participations as $participation)
                                                <option class="participation"
                                                 {{ ($participation->participation == $t->participation) ? 'selected' : '' }}
                                                 value="{{ $participation->participation }}">{{ $participation->participation }}</option>
                                            @endforeach
                                        </select>
                                    </td>
                                    <td> <input name="comment_{{ $loop->index }}" type="text" placeholder="{{ $t->comment }}" value="{{ $t->comment }}"></td>
                                    <td class="hours_div"> <input class="hours_{{ $loop->index }}" name="hours_{{ $loop->index }}" type="number" placeholder="{{ $t->hours }}" value="{{ $t->hours }}"></td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <p>Working hours for this month : <p class="working_hours"></p>hours</p>
                    <button type="submit" class="btn btn-success mt-5 float-right" id = "submitBtnId">Submit</button>
                </div>
                <div class="col-12 col-md-3">
                    <input style="border:1px dashed green;color:green; text-align:center; padding: .7rem 0; width: 100%" type="text" readonly name="{{ $month -> month }}" value="{{ $month -> month }}">

                    @if(Auth::user()->status == 1)
                        <div class="btn-toolbar mb-3 mt-3" role="toolbar" aria-label="Toolbar with button groups">
                            <div class="btn-group-vertical mr-2 w-100" role="group" aria-label="First group">
                                @foreach($names as $name)
                                    @if($name->parent_id == Auth::user()->id || $name->id == Auth::user()->id)
                                        <button onclick="Cookies.set('userName', '{{ $name->id }}'); location.reload();" name="userName" type="button" class="username btn btn-warning btn-lg btn-block">{{ $name->name }}</button> <hr>
                                    @endif
                                @endforeach
                            </div>
                        </div>
                    @endif
                </div>
            </div>            
        </form>
    </div>
</div>

@endsection
@section("scripts")
<script>


</script>