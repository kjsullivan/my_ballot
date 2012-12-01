$(document).ready(function(){

  $(".slideContent").hide();
  $(".slideBtn").click(function(){
    $(this).prev(".slideContent").slideToggle("slow");
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

