$(document).ready(function(){

  $(".warning").hide().show(800);

  var $overlay = $('<div id = "overlay"></div>');
  var $image = $("<img>");
  
  $overlay.append($image);
  $("body").append($overlay);

  $("#vacant_lots a").click(function(event){
    event.stopPropagation();
    event.preventDefault();
    var imageLocation = $(this).attr("href");
    $image.attr("src", imageLocation);
    $overlay.show();
    
  });

  $("#overlay").click(function(event){
    $overlay.hide();
  });

});