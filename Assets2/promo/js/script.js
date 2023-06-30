$(document).ready(function (e) {
    $('.fancybox').fancybox();

    var owl1 = $("#home_banner");
    owl1.owlCarousel({
        loop: true,
        autoPlay: 15000,
        items: 1, //10 items above 1000px browser width
        itemsDesktop: [1100, 1], //5 items between 1000px and 901px
        itemsDesktopSmall: [900, 1], // betweem 900px and 601px
        itemsTablet: [800, 1], //2 items between 600 and 0
        itemsMobile: [599, 1], // itemsMobile disabled - inherit from itemsTablet option
    });
    // Custom Navigation Events
    $("#next1").click(function () {
        owl1.trigger('owl.next');
    })
    $("#prev1").click(function () {
        owl1.trigger('owl.prev');
    });
    // Banner 1 ends 
    // Banner 2 starts 
    //var owl1 = $("#home_banner1");
    //owl1.owlCarousel({
    //    loop: true,
    //    autoPlay: 7000,
    //    items: 1, //10 items above 1000px browser width
    //    itemsDesktop: [1100, 1], //5 items between 1000px and 901px
    //    itemsDesktopSmall: [900, 1], // betweem 900px and 601px
    //    itemsTablet: [800, 1], //2 items between 600 and 0
    //    itemsMobile: [599, 1], // itemsMobile disabled - inherit from itemsTablet option
    //});
    //// Custom Navigation Events
  
    var owl2 = $("#amenites");
    owl2.owlCarousel({
        loop: true,
        autoPlay: 7000,
        items: 1, //10 items above 1000px browser width
        itemsDesktop: [1100, 1], //5 items between 1000px and 901px
        itemsDesktopSmall: [900, 1], // betweem 900px and 601px
        itemsTablet: [800, 1], //2 items between 600 and 0
        itemsMobile: [599, 1], // itemsMobile disabled - inherit from itemsTablet option
    });
    // Custom Navigation Events
    $("#next2").click(function () {
        owl2.trigger('owl.next');
    })
    $("#prev2").click(function () {
        owl2.trigger('owl.prev');
    });

    //$("#cname").attr("placeholder", "Name*");
    //$("#cemail").attr("placeholder", "Email*");
    //$("#cphone").attr("placeholder", "Phone.*");

    //$("textarea").attr("placeholder", "Message");
    //$(".block2, .block3, .block4").wrapAll("<div class='left_form'></div>");
    //$(".block5, .submitclass").wrapAll("<div class='right_form'></div>");
    //$("input[type='submit']").val("Submit");

    $(".tabs_btn li a").click(function () {
        $(".tabs_btn li a").removeClass("active");

        $(".tabs_details .tabs").addClass("hide");
        var rel = $(this).attr("rel");
        $("#" + rel).removeClass("hide");
        $(this).addClass("active");
        if ($(this).data("banner") == "1") {
            $("#home_banner").html($("#home_banner1").html());
        }
        else if ($(this).data("banner") == "2") {
            $("#home_banner").html($("#home_banner2").html());
        }
        else if ($(this).data("banner") == "3") {
            $("#home_banner").html($("#home_banner3").html());
        }
        else if ($(this).data("banner") == "4") {
            $("#home_banner").html($("#home_banner4").html());
        }
        initMyBanner();
    });

        $(".tabbing_box .mob_acc").click(function () {
            if ($(this).next().is(":visible")) {
                $(this).next().slideUp();
                $(this).removeClass("active");
                
            }

            else {
                $(".tabbing_box .tabs").slideUp();
                $(".tabbing_box .mob_acc").removeClass("active");
                $(this).next().slideDown();
                $(this).addClass("active");
                 
                $(".tabbing_box .tabs").removeClass("hide");
            }
        });

    function initMyBanner() {
        
        // get owl element
        var owl = $('.owl-carousel');

        // get owl instance from element
        var owlInstance = owl.data('owlCarousel');

        // if instance is existing
        if (owlInstance != null)
            owlInstance.reinit();
    }


    if (window.location.hash == '#features') {

        $("#Features").click();
    }
    else if (window.location.hash == '#benefits') {
        $("#Benefits").click();
    }
    else if (window.location.hash == '#modules') {
        $("#Modules").trigger("click");
    }
    else if (window.location.hash == '#testimonials') {
        $("#Testimonials").trigger("click");
    }
    else {
        $("#Overview").trigger("click");
    }
});