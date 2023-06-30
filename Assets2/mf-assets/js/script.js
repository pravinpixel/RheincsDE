$(document).ready(function (e) {
    $('.fancybox').fancybox();
    var width = $(window).width();
    if ((width <= 1020)) {
        var owl1 = $("#MainBanner");
        owl1.owlCarousel({
            loop: true,
            autoPlay: 5000,
            items: 10, //10 items above 1000px browser width
            itemsDesktop: [1100, 1], //5 items between 1000px and 901px
            itemsDesktopSmall: [900, 1], // betweem 900px and 601px
            itemsTablet: [800, 1], //2 items between 600 and 0
            itemsMobile: [599, 1], // itemsMobile disabled - inherit from itemsTablet option
        });
    } else {
        var owl1 = $("#home_banner");
        owl1.owlCarousel({
            loop: true,
            autoPlay: 5000,
            items: 1, //10 items above 1000px browser width
            itemsDesktop: [1100, 1], //5 items between 1000px and 901px
            itemsDesktopSmall: [900, 1], // betweem 900px and 601px
            itemsTablet: [800, 1], //2 items between 600 and 0
            itemsMobile: [599, 1], // itemsMobile disabled - inherit from itemsTablet option
        });
    }
    // Custom Navigation Events
    $("#next1").click(function () {
        owl1.trigger('owl.next');
    })
    $("#prev1").click(function () {
        owl1.trigger('owl.prev');
    });
    // Custom Navigation Events
    $("#next2").click(function () {
        owl2.trigger('owl.next');
    })
    $("#prev2").click(function () {
        owl2.trigger('owl.prev');
    });
    var interval = "";
    var a = ['tab1', 'tab2', 'tab3', 'tab4', 'tab5'];
    var i = 0;
    function changePage(index) {

        $(".tabs_btn li a").removeClass("active");
        $(".tabs_details .tabs").addClass("hide");
        $("#" + a[index]).removeClass("hide");
        $('a[rel="' + a[index] + '"]').addClass("active");
        indexb = index + 1;
        //alert(indexb);
        $("#home_banner").html($("#home_banner" + indexb).html());
    }
    interval = setInterval(function () {
        changePage(i);

        if (i < 4) {
            i++;
        } else {
            i = 0;
        }
        initMyBanner();
    }, 3000);

    $(".tabs_btn li a").click(function (e) {
        console.log(e.currentTarget.id)
        clearInterval(interval);
        switch (e.currentTarget.id) {
            case "Overview":
                changePage(0);
                $("#home_banner").html($("#home_banner1").html());
                break;
            case "Features":
                changePage(1);
                $("#home_banner").html($("#home_banner2").html());
                break;
            case "Modules":
                changePage(2);
                $("#home_banner").html($("#home_banner3").html());
                break;
            case "Testimonials":
                changePage(3);
                $("#home_banner").html($("#home_banner4").html());
                break;
            case "Contact Us":
                changePage(4);
                $("#home_banner").html($("#home_banner5").html());
                break;
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
});

