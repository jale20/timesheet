<?php

namespace App\Http\Controllers;
use Session;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\TimeSheet;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Http\Controllers\Auth;

use Symfony\Component\HttpFoundation\Cookie;

class InsertController extends Controller
{        

    public function index($date_id){
        $month = DB::table("dates")->where('date_id', $date_id)->first();
        $names = DB::table("users")->get()->toArray();
        $participations = DB::table("participation")->get()->toArray();

        $selectedUser = '';
        if(\Auth::user()->status == 0){
            $selectedUser = \Auth::user()->id;
        }
        else{
            $selectedUser = $_COOKIE['userName'];
        }
        
        $timesheet = DB::table('use')->where('user_id', $selectedUser)->get();

        return view('grid', compact('month', 'names', 'timesheet', 'participations'));
    }

    public function update(Request $request, $date_id){
        $selectedUser = '';
        if(\Auth::user()->status == 0){
            $selectedUser = \Auth::user()->id;
        }
        else{
            $selectedUser = $_COOKIE['userName'];
        }

        $selectedMonth = $_COOKIE['monthName'];


        $inputdata = $request->input();

        
        $month = DB::table("dates")->where('date_id', $date_id)->first();

        for($i = 0; $i<$month->day_counts; $i++){
            if(isset($inputdata['comment_'.$i.''])){
                DB::table('use')->where([['user_id','=', $selectedUser],['month_id','=', $selectedMonth],['day','=',$i+1]])->update(['comment'=>$inputdata['comment_'.$i.'']]);
            }
            else{
                DB::table('use')->where([['user_id','=', $selectedUser],['month_id','=', $selectedMonth],['day','=',$i+1]])->update(['comment'=>'']);
            }
            if(isset($inputdata['participation_'.$i.''])){

                DB::table('use')->where([['user_id','=', $selectedUser],['month_id','=', $selectedMonth],['day','=',$i+1]])->update(['participation'=>$inputdata['participation_'.$i.'']]);
            }

            if(isset($inputdata['hours_'.$i.''])){

                DB::table('use')->where([['user_id','=', $selectedUser],['month_id','=', $selectedMonth],['day','=',$i+1]])->update(['hours'=>$inputdata['hours_'.$i.'']]);
            }
            
        }

        return redirect()->back();
    }

}