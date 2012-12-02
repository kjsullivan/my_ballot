$(document).ready(function(){

  $(".slideContent").hide();
  //toggle the componenet with class msg_body
  $(".slideBtn").click(function()
  {
    $(this).prev(".slideContent").slideToggle("slow", function(){
      if($(this).is(":visible")){
       $(this).next(".slideBtn").html("▲");
      } else {
       $(this).next(".slideBtn").html("▼");
      }
    });
  });

  $(".candidates li").on("click", function(){
    $(this).siblings().removeClass('selected');
    $(this).toggleClass("selected");
  });

  // enquire.register("screen and (max-width: 500px)", function() {
  //   $(".calendar ul").hide();
  //   $(".calendar h3").click(function(){
  //     $(".calendar ul").slideToggle("slow");
  //   });
  // }).listen();

  // enquire.register("screen and (max-width: 500px)", function() {
  //   $(".person ul").hide();
  //   $(".person h3").click(function(){
  //     $(".person ul").slideToggle("slow");
  //   });
  // }).listen();

	 
});

