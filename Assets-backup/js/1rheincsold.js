$(window).scroll(function () {
 if ($(window).scrollTop() > 100 && !($('#navhead').hasClass('mpcth-sticky-header'))) {
        $('#navhead').addClass('mpcth-sticky-header');
    } else if ($(window).scrollTop() == 0) {
        $('#navhead').removeClass('mpcth-sticky-header');
    }
    if ($(this).scrollTop()) {
        $('#back_to_top').addClass('active');
    } else {
        $('#back_to_top').removeClass('active');
    }
});
$(document).ready(function () {
    $('#btnContactUs').click(function () {
        alert("new");
        var r = ContactUsValidation();
        if (r == 1) {
            $(this).button('loading');
            save();
        }

    });
    $('#BtnCallout').click(function () {
        debugger;
        var r = PEPValidation();
        if (r == 1) {
            $(this).button('loading');
            savePEP();
        }

    });
});
function PEPValidation() {
    var name = $('#txtCalloutName').val();
    var email = $('#txtCalloutEmail').val();
    var response = 1;

    $("#reqCalloutName").hide();
    $("#reqCalloutemail").hide();
    $("#valCalloutemail").hide();

    if (name == '') {
        $("#reqCalloutName").show();
        response = 0;
    }
    if (email == '') {
        $("#reqCalloutemail").show();
        response = 0;
    }
    else {
        if (!IsEmail(email)) {
            $("#valCalloutemail").show();
            response = 0;
        }
    }
    return response;
}
function clearPEP() {
    $("#reqCalloutName").hide();
    $("#reqCalloutemail").hide();
    $("#valCalloutemail").hide();
    $("#txtCalloutName").val('');
    $("#txtCalloutEmail").val('');
}
function savePEP() {
    var name = $('#txtCalloutName').val();
    var email = $('#txtCalloutEmail').val();
    $.ajax({
        type: "POST",
        url: "Kontakt.aspx/UpdatePEP",

        data: '{name:"' + name + '", email: "' + email + '" }',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            $("#PEPsuccessmessage").show();
            $('#BtnCallout').button('reset');
            clearPEP();
        },
        failure: function (response) {

            alert(response.d);
        }
    });
}
function clear() {
    $("#reqName").hide();
    $("#reqemail").hide();
    $("#reqphone").hide();
    $("#reqMessage").hide();
    $("#valemail").hide();
    $("#valphone").hide();
    $("#txtName").val('');
    $("#txtEmail").val('');
    $("#txtPhone").val('');
    $("#txtMessage").val('');
}
function ContactUsValidation() {
    var name = $('#txtName').val();
    var email = $('#txtEmail').val();
    var phone = $('#txtPhone').val();
    var message = $('#txtMessage').val();
    var response = 1;

    $("#reqName").hide();
    $("#reqemail").hide();
    $("#reqphone").hide();
    $("#reqMessage").hide();
    $("#valemail").hide();

    if (name == '') {
        $("#reqName").show();
        response = 0;
    }
    if (email == '') {
        $("#reqemail").show();
        response = 0;
    }
    else {
        if (!IsEmail(email)) {
            $("#valemail").show();
            response = 0;
        }
    }
    if (phone == '') {
        $("#reqphone").show();
        response = 0;
    }
    else {
        if (isNaN(phone)) {
            $("#valphone").show();
            response = 0;
        }
    }
    if (message == '') {
        $("#reqMessage").show();
        response = 0;
    }
    return response;
}
function IsEmail(email) {
    if (email == '') {
        return true;
    }
    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return regex.test(email);
}
function save() {
    var name = $('#txtName').val();
    var email = $('#txtEmail').val();
    var phone = $('#txtPhone').val();
    var message = $('#txtMessage').val();
    $.ajax({
        type: "POST",
        url: "Kontakt.aspx/UpdateCallout",

        data: '{name:"' + name + '", email: "' + email + '", phone: "' + phone + '", message: "' + message + '" }',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: success,
        failure: function (response) {

            alert(response.d);
        }
    });
}
function success(response) {

    $("#successmessage").show();
    $('#btnContactUs').button('reset');
    clear();

}