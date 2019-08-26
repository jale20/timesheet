$(document).ready(function(){

  for(i = 0; i<($(".statusCombo").length); i++){
    $("#statusComboId_" + i).on('change', function(){
      
      if($(this).val() == 'Overtime'){
        $(this).parent().siblings(".hours_div").children().attr("readonly", false);
      }

      if($(this).val() == 'Regular Day'){
        $(this).parent().siblings(".hours_div").children().attr("placeholder", 8);
      }

      if($(this).val() == 'Weekend'){
        $(this).parent().siblings(".hours_div").children().attr("placeholder", 0);
      }

      if($(this).val() == 'Sick Leave'){
        $(this).parent().siblings(".hours_div").children().attr("placeholder", 0);
      }

      if($(this).val() == 'Vacation'){
        $(this).parent().siblings(".hours_div").children().attr("placeholder", 0);
      }
      if($(this).val() == 'Holiday'){
        $(this).parent().siblings(".hours_div").children().attr("placeholder", 0);
      }

      if($(this).val() == 'Short day'){
        $(this).parent().siblings(".hours_div").children().attr("placeholder", 7);
      }
    });
  }

    var totalPoints = 0;
    var elem = $('.hours_div input');
    var counter_w_day = 0;
    var counter_s_leave = 0;
    var counter_vacation = 0;
    var counter_o_time = 0;
    var counter_h_n_work= 0;
    var working_days = $('.working_days');
    var sick_leave = $('.sick_leave');
    var vacation = $('.vacation');
    var over_time = $('.over_time');
    var holidays_non_working_days = $('.holidays_non-working-days');


    for($i = 0; $i<elem.length; $i++){
      totalPoints += parseInt($('.hours_'+$i).attr('placeholder'));
      $('.working_hours').text(totalPoints);

      if($('#statusComboId_' + $i + ' option:selected').val() == "Regular Day" ||
      $('#statusComboId_' + $i + ' option:selected').val() == "Short day"){
        counter_w_day+=1;
        working_days.text(counter_w_day);
      }
      else if($('#statusComboId_' + $i + ' option:selected').val() == "Sick Leave"){
        counter_s_leave+=1;
        sick_leave.text(counter_s_leave);
      }
      else if($('#statusComboId_' + $i + ' option:selected').val() == "Vacation"){
        counter_vacation+=1;
        vacation.text(counter_vacation);
      }
      else if($('#statusComboId_' + $i + ' option:selected').val() == "Overtime"){
        counter_o_time += parseInt($('.hours_'+$i).attr('placeholder'));
        over_time.text(counter_o_time);
      }
      else if($('#statusComboId_' + $i + ' option:selected').val() == "Holiday" ||
      $('#statusComboId_' + $i + ' option:selected').val() == "Weekend"){
        counter_h_n_work+=1;
        holidays_non_working_days.text(counter_h_n_work);
      }
    }


    Cookies.get('userName');
    Cookies.get('monthName');
})