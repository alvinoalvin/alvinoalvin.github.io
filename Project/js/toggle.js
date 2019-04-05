$(document).ready(function () {
    $(".catDrop").hide();
    // notification
    $(".notification").fadeIn("slow").prepend("Click dots to toggle menu");
    $(".dismiss").click(function(){$(".notification").fadeOut("slow");});
    
    // toggle menu
    $("img").click(function(){
        $(".menuitem").slideToggle("slow");
    });
    
    $("#nav2").hover(
        function(){
            $(".catDrop").show("slow");
        },
        function(){
            $(".catDrop").hide("slow");
        }
    );
    

	$( "#tbAnimated" ).animate({
		left: "65%",
	}, 10000    , function(){$( "#tbAnimated" ).removeClass("flipped");}).addClass("flipped");
	
	$( "#tbAnimated" ).animate({
	    left:"0%",
	}, 4000);
	
	
    // scroll
    $(window).scroll(function(){
        if ($(window).scrollTop() > 1) {
            $('.menu').addClass('fix');
            $('.bTT').show();
        }
        else {
            $('.menu').removeClass('fix');
            $('.bTT').hide();
        }
    });
});