$(document).ready(function(){

  $('body').on('change', '#statusComboId', function(){
      $( "#statusComboId option.participation:selected" ).each(function() {
        // alert("lacfj;sa");
        // console.log($(this).val());
      });
    // if(("#statusComboId option:selected").val() == "Overtime"){
    //     alert("changed");
    //     $(".disable").prop('disabled', false);
    //   }
  });
    
    // $( "#statusComboId" ).change(function() {
    //   alert("smfnvksjvs");
    //   var str = "";
    //   $( "#statusComboId option.participation:selected" ).each(function() {
    //     str += $( this ).text() + " ";
    //   });
    //   $( "this" ).val( str );
    //   // if(("#statusComboId option:selected").val() == "Overtime"){
    //   //   $(".disable").prop('disabled', false);
    //   // }
    // });

    var totalPoints = 0;
    var elem = $('.hours_div input');

    for($i = 0; $i<elem.length; $i++){
      totalPoints += parseInt($('.hours_'+$i).attr('placeholder'));
      $('.working_hours').text(totalPoints);
    }

    Cookies.get('userName');
    Cookies.get('monthName');
})