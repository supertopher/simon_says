$(document).ready(function(){
  $('.button_form').click(function(){
     $.getJSON('/colors', function(data){
      console.log(data);
      $(data.space).css('background-color', data.color);;
     })
  });
});
