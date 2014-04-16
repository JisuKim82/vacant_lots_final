$(document).ready(function(){
  $(".warning").hide().show(800);

  var $overlay = $('<div id = "overlay"></div>');
  var $image = $("<img>");
  var $caption = $("<p></p>");
  
  $overlay.append($image);
  $overlay.append($caption);
  $("body").append($overlay);

  $("#vacant_lots img").click(function(event){
    event.stopPropagation();
    event.preventDefault();
    var imageLocation = $(this).attr("src");

    $caption.text($(this).attr("alt"));

    $image.attr("src", imageLocation);
    $overlay.show();
    
  });

  $("#overlay").click(function(event){
    $overlay.hide();
  });

});