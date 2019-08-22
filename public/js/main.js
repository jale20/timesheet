$(document).ready(function(){
    
    $( "#statusComboId" ).change(function() {
      var str = "";
      $( "#statusComboId option.participation:selected" ).each(function() {
        str += $( this ).text() + " ";
      });
      $( "this" ).val( str );
    });

    var totalPoints = 0;
    var elem = $('.hours_div input');

    for($i = 0; $i<elem.length; $i++){
      totalPoints += parseInt($('.hours_'+$i).val());
      $('.working_hours').text(totalPoints);
    }

    Cookies.get('userName');
})