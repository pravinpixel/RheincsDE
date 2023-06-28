

$(document).ready(function () {

    $('#slider1').tinycarousel();

    $.get("/api/Testimonial",function(d){$('#slider3').html(d),$('#slider3').tinycarousel();});
    


    $('#slider1').tinycarousel();

    $(".Search-text-box").keypress(function (e) {
        var key = e.which;
        if (key == 13 && $(this).val().trim().length > 0)  // the enter key code
        {
            window.location = "/search.aspx?q=" + $(this).val().trim();
        }
    });
    $(".dropdown").hover(
        function () {
            $('.dropdown-menu', this).stop(true, true).slideDown("fast");
            $(this).toggleClass('open');
        },
        function () {
            $('.dropdown-menu', this).stop(true, true).slideUp("fast");
            $(this).toggleClass('open');
        }
    );

    //closing youtube video script
    $('#myModal1').on('hidden.bs.modal', function () {
        //alert("hi");
        $("#myModal1 iframe").attr("src", $("#myModal1 iframe").attr("src"));
    });
    $('#myModal2').on('hidden.bs.modal', function () {

        $("#myModal2 iframe").attr("src", $("#myModal2 iframe").attr("src"));
    });
    $('#myModal3').on('hidden.bs.modal', function () {

        $("#myModal3 iframe").attr("src", $("#myModal3 iframe").attr("src"));
    });
    $('#myModal4').on('hidden.bs.modal', function () {

        $("#myModal4 iframe").attr("src", $("#myModal4 iframe").attr("src"));
    });
    $('#myModal5').on('hidden.bs.modal', function () {

        $("#myModal5 iframe").attr("src", $("#myModal5 iframe").attr("src"));
    });
    $('#myModal6').on('hidden.bs.modal', function () {

        $("#myModal6 iframe").attr("src", $("#myModal6 iframe").attr("src"));
    });
    $('#myModal7').on('hidden.bs.modal', function () {
        //alert("hi");
        $("#myModal7 iframe").attr("src", $("#myModal7 iframe").attr("src"));
    });
    $('#myModal8').on('hidden.bs.modal', function () {

        $("#myModal8 iframe").attr("src", $("#myModal8 iframe").attr("src"));
    });
    $('#myModal9').on('hidden.bs.modal', function () {

        $("#myModal9 iframe").attr("src", $("#myModal9 iframe").attr("src"));
    });
    $('#myModal10').on('hidden.bs.modal', function () {

        $("#myModal10 iframe").attr("src", $("#myModal10 iframe").attr("src"));
    });
    $('#myModal11').on('hidden.bs.modal', function () {

        $("#myModal11 iframe").attr("src", $("#myModal11 iframe").attr("src"));
    });
    $('#myModal12').on('hidden.bs.modal', function () {

        $("#myModal12 iframe").attr("src", $("#myModal12 iframe").attr("src"));
    });

    //Slider mobile menu
    $("#showLeft1").on("click", function () {

        $("#cbp-spmenu-s2").toggleClass('active');
        $("#cbp-spmenu-s2").toggleClass('cbp-spmenu-open');
    });
    $("#HideLeft1").on("click", function () {

        $("#cbp-spmenu-s2").toggleClass('active');
        $("#cbp-spmenu-s2").toggleClass('cbp-spmenu-open');
    });
});