$(document).ready(function(){

 // slider js

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

  // select js

  var voteCount = parseInt($('.number').text());

  $(".dot").on("click", function(){
    voteCount--;
    $('.number').text(voteCount);
  });

  // $(".multidot").on("click", function(){
  //   voteCount--;
  //   $('.number').text(voteCount);
  // });

  // $(".choice.script").on("click", function(){
  //   voteCount--;
  //   $('.number').text(voteCount);
  // });

 $(".multi li").on("click", function(){
    $(this).toggleClass("selected");
  });
  
  // $(".candidates li .dot").on("click", function(){
  //   $(this).siblings().removeClass('dotSelected');
  //   $(this).toggleClass("dotSelected");
  // });

  $(".dot").on("click", function(){
    $(this).parent().siblings().removeClass("selected");
    $(this).parent().toggleClass("selected");
  });

    $(".multi li.dot").on("click", function(){
    $(this).parent().toggleClass("selected");
  });

   $(".choice li").on("click", function(){
    $(this).siblings().removeClass('YNselected');
    $(this).toggleClass("YNselected");
  });


  // enable media queries js
enquire.register("screen and (min-width:500px)", {
      match: function() {
        $(".calendar ul").show();
      }
  }).listen();

  enquire.register("screen and (min-width:500px)", {
      match: function() {
        $(".person ul").show();
      }
  }).listen();

  enquire.register("screen and (max-width:500px)", {
      match: function() {
        $(".calendar ul").hide();
        $(".calendar h3").on("click", function(){
          $(".calendar ul").slideToggle("slow");
        });
      },

      unmatch: function () {
        $(".calendar h3").off("click");
      }
  }).listen();

    enquire.register("screen and (max-width:500px)", {
      match: function() {
        $(".person ul").hide();
        $(".person h3").on("click", function(){
          $(".person ul").slideToggle("slow");
        });
      },

      unmatch: function () {
        $(".person h3").off("click");
      }
  }).listen();
	 
});

