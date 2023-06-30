<%@ Page Title="" Language="C#" MasterPageFile="~/LandingPageEpic.Master" AutoEventWireup="true" CodeBehind="MeRLIN.aspx.cs" Inherits="RheinBrucke.Landing.MeRLIN" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headerPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
   <title>MeRLIN</title>
    <link href="../Assets/css/bootstrap-min.css" rel="stylesheet" />
    <link href="../Assets/css/LandingStyleSheet.css" rel="stylesheet" />
    <link href="../Assets/css/media-q.css" rel="stylesheet" />
    <link href="../Assets/css/hover.css" rel="stylesheet" />
    <script src="../Assets/js/jquery-2.1.1.min.js"></script>
    <script src="../Assets/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function IsEmailValid(a) {
            if ("" == a) return !0; var e = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            return e.test(a)
        }
        $(document).ready(function () {
            var _rootUrl = $("#hdfRootUrl").val();
            $('#btnsubmit').click(function () {
                if ($('#txtName2').val() == '') {
                    $('#showErrorMsg').text("Ensure first name!."); $('#txtName2').focus(); return false;
                }
                //if ($('#txtPhone2').val() == '') {
                //    $('#showErrorMsg').text("Ensure phone number!."); $('#txtPhone2').focus(); return false;
                //}
                if ($('#txtPhone2').val() != '' && $('#txtPhone2').val().length < 10) {
                    $('#showErrorMsg').text("Ensure phone number!."); $('#txtPhone2').focus(); return false;
                }
                if ($('#txtEmail2').val() == '') {
                    $('#showErrorMsg').text("Ensure work email!."); $('#txtEmail2').focus(); return false;
                }
                if ($('#txtEmail2').val() != '') {
                    if (!IsEmailValid($('#txtEmail2').val())) {
                        $('#showErrorMsg').text("Ensure work email!."); $('#txtEmail2').focus(); return false;
                    }
                }
                var email = $('#txtEmail2').val();
                var a = email.split('@');
                if (a[1].toLowerCase() == 'gmail.com' || a[1].toLowerCase() == 'live.com' || a[1].toLowerCase() == 'live.in' || a[1].toLowerCase() == 'outlook.com' || a[1].toLowerCase() == 'yahoo.com' || a[1].toLowerCase() == 'zoho.com' || a[1].toLowerCase() == 'yandex.com' || a[1].toLowerCase() == 'aol.com' || a[1].toLowerCase() == 'mail.com' || a[1].toLowerCase() == 'inbox.com') {
                    $('#showErrorMsg').text("Please provide us with your work e-mail and not your personal e-mail!."); $('#txtEmail2').focus(); return false;
                }
                var Data = {
                    firstname: $('#txtName2').val(),
                    email: $('#txtEmail2').val(),
                    phone: $('#txtPhone2').val(),
                    ServiceType: "MeRLINFactsheet"
                };
                $.ajax({
                    type: 'POST',
                    url: _rootUrl + "api/Landing/LandingPage",
                    data: Data,
                    //contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        if (response == "success") {
                            $('#showErrorMsg').text('Mail has been sent successfully!');
                            $('#txtName2,#txtEmail2,#txtPhone2').val('');
                            setTimeout(function () {
                                $('#showErrorMsg').text('');
                            }, 5000);
                        }
                    }
                });
            });

            $('.btnsubmit1').click(function () {
                if ($('.txtName1').val() == '') {
                    $('.showErrorMsg1').text("Ensure first name!."); $('txtName1').focus(); return false;
                }
                //if ($('.txtPhone1').val() == '') {
                //    $('.showErrorMsg1').text("Ensure phone number!."); $('.txtPhone1').focus(); return false;
                //}
                if ($('.txtPhone1').val() != '' && $('.txtPhone1').val().length < 10) {
                    $('.showErrorMsg1').text("Ensure phone number!."); $('.txtPhone1').focus(); return false;
                }
                if ($('.txtEmail1').val() == '') {
                    $('.showErrorMsg1').text("Ensure work email!."); $('.txtEmail1').focus(); return false;
                }
                if ($('.txtEmail1').val() != '') {
                    if (!IsEmailValid($('.txtEmail1').val())) {
                        $('.showErrorMsg1').text("Ensure work email!."); $('.txtEmail1').focus(); return false;
                    }
                }
                var email = $('.txtEmail1').val();
                var a = email.split('@');
                if (a[1].toLowerCase() == 'gmail.com' || a[1].toLowerCase() == 'live.com' || a[1].toLowerCase() == 'live.in' || a[1].toLowerCase() == 'outlook.com' || a[1].toLowerCase() == 'yahoo.com' || a[1].toLowerCase() == 'zoho.com' || a[1].toLowerCase() == 'yandex.com' || a[1].toLowerCase() == 'aol.com' || a[1].toLowerCase() == 'mail.com' || a[1].toLowerCase() == 'inbox.com') {
                    $('.showErrorMsg1').text("Please provide us with your work e-mail and not your personal e-mail!."); $('.txtEmail1').focus(); return false;
                }
                var Data = {
                    firstname: $('.txtName1').val(),
                    email: $('.txtEmail1').val(),
                    phone: $('.txtPhone1').val(),
                    ServiceType: "MeRLINFactsheet"
                };
                $.ajax({
                    type: 'POST',
                    url: _rootUrl + "api/Landing/LandingPage",
                    data: Data,
                    //contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        if (response == "success") {
                            $('.showErrorMsg1').text('Mail has been sent successfully!');
                            $('.txtName1,.txtEmail1,.txtPhone1').val('');
                            setTimeout(function () {
                                $('.showErrorMsg1').text('');
                            }, 5000);
                        }
                    }
                });
            });

            //Epicor Implementation Email
            $('#BtnCalloutcct').click(function () {
                if ($('#txtCalloutNameCCT').val() == '') {
                    $('.showErrorMsgcct').text("Ensure first name!."); $('#txtCalloutNameCCT').focus(); return false;
                }
                //if ($('#txtCalloutMobNoCCT').val() == '') {
                //    $('.showErrorMsgcct').text("Ensure phone number!."); $('#txtCalloutMobNoCCT').focus(); return false;
                //}
                if ($('#txtCalloutMobNoCCT').val() != '' && $('#txtCalloutMobNoCCT').val().length < 10) {
                    $('.showErrorMsgcct').text("Ensure phone number!."); $('#txtCalloutMobNoCCT').focus(); return false;
                }
                if ($('#txtCalloutEmailCCT').val() == '') {
                    $('.showErrorMsgcct').text("Ensure work email!."); $('#txtCalloutEmailCCT').focus(); return false;
                }
                if ($('#txtCalloutEmailCCT').val() != '') {
                    if (!IsEmailValid($('#txtCalloutEmailCCT').val())) {
                        $('.showErrorMsgcct').text("Ensure work email!."); $('#txtCalloutEmailCCT').focus(); return false;
                    }
                }
                var email = $('#txtCalloutEmailCCT').val();
                var a = email.split('@');
                if (a[1].toLowerCase() == 'gmail.com' || a[1].toLowerCase() == 'live.com' || a[1].toLowerCase() == 'live.in' || a[1].toLowerCase() == 'outlook.com' || a[1].toLowerCase() == 'yahoo.com' || a[1].toLowerCase() == 'zoho.com' || a[1].toLowerCase() == 'yandex.com' || a[1].toLowerCase() == 'aol.com' || a[1].toLowerCase() == 'mail.com' || a[1].toLowerCase() == 'inbox.com') {
                    $('.showErrorMsgcct').text("Please provide us with your work e-mail and not your personal e-mail!."); $('.txtEmail1').focus(); return false;
                }
                var Data = {
                    firstname: $('#txtCalloutNameCCT').val(),
                    email: $('#txtCalloutEmailCCT').val(),
                    phone: $('#txtCalloutMobNoCCT').val(),
                    ServiceType: "MeRLIN"
                };
                $.ajax({
                    type: 'POST',
                    url: _rootUrl + "api/Landing/LandingPageCCT",
                    data: Data,
                    //contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        if (response == "success") {
                            $('.showErrorMsgcct').text('Mail has been sent successfully!');
                            $('#txtCalloutNameCCT,#txtCalloutEmailCCT,#txtCalloutMobNoCCT').val('');
                            setTimeout(function () {
                                $('.showErrorMsgcct').text('');
                            }, 5000);
                        }
                    }
                });
            });
        });
    </script>

    <style>
      
         div#myModal-cct {
            z-index: 9999;
        }

    .modal-content {
            position: relative;
            border: 5px solid #632424;
            background-color: #fff;
            -webkit-background-clip: padding-box;
            background-clip: padding-box;
            border-radius: 6px;
            outline: 0;
            -webkit-box-shadow: 0 3px 9px rgba(0,0,0,.5);
            box-shadow: 0 3px 9px rgba(0,0,0,.5);
        }
         div.social-float-parent {
            width: 100%;
            position: relative;
        }
          div#social-float {
            position: fixed;
            top: 80%;
        }
          .socials {
            position: fixed;
            top: 42% !important;
        }

          .epicpay-video {
            margin-top: 14px;
            right: -3px;
            float: right;
        }
           .mob-pdf-btn {
            position: fixed;
            top: 18%;
            right: -18px;
            z-index: 999;
        }
        @media (min-width:981px) {
            .form-div-epicor {
                min-height: 53px;
                width: 370px;
                position: fixed;
                left: 65.3%;
                top: 259px;
                padding: 0px 22px;
            }
        }

        @media (max-width: 640px)
        {
   .banner-w-mer {
    width: 100%;
    background: #fff;
    height: 270px;
    position: relative;
    background-image: url(/Landing/Images/merlin-banner.jpg) !important;
    background-repeat: no-repeat;
    background-size: cover;
    margin-top: 10px;
}
   .submit-button,.submit-button:hover {
    width: 102px;
    font-size: 16px;
    text-align: center;
    padding: 10px 12px;
    border: 0;
    border-radius: 2px;
    background: #7b1315;
    color: #fff;
    text-transform: Capitalize;
    margin: 0;
}
.input-group {
                border: 1px solid #888;
            }
   }
        .marglt-20
        {
            margin-left:20px;
        }
        .icons-heading1 {
    font-size: 13px;
    color: #414141;
    font-weight: 600;
}
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <input type="hidden" id="hdfRootUrl" value="<%=rootpath %>" /><div class="visible-xs" style="height: 74px; width: 100%;"></div>
    <div class="container" style="padding: 0px;">
        <div class="banner-w-mer">
            <%--<div class="row visible-xs visible-sm">
                <div class="col-md-12">
                    <img class="img-responsive" src="/Landing/Images/cct-banner.jpg" />
                </div>
            </div>--%>
            <div class="row">
                <div class="col-md-7" style="position: relative;">
                   
                </div>
                <div class="col-md-5 epicpay-video hidden-sm hidden-xs">
                    <iframe width="460" height="300" src="https://www.youtube.com/embed/oYXzJmGZMLg?autoplay=1" frameborder="0" allowfullscreen></iframe>
                  
                </div>
            </div>
            
        </div>
        
        <div class="conetnt-div">
            <div class="row hidden-lg hidden-md">
                <div class="col-md-7">
                      <iframe width="100%" height="300" src="https://www.youtube.com/embed/Lg5vILx87g4" frameborder="0" allowfullscreen></iframe>
                      
                </div>

                 
            </div>
            <div class="row">
                <div class="col-md-7">
                     <a data-toggle="modal" data-target="#myModal-cct" class="hidden-md hidden-lg mob-pdf-btn">
                        <img src="../landing/images/pdf-circle.png" class="img-responsive img-display" height="70px" width="70px" alt="Download CCT" /></a>
                    <br />
                    <h4 style="font-weight: 300;"><strong>Select the Right Strategic Sourcing Environment for Your Organization with MeRLIN</strong></h4>
                    <br />
                    <p class="para">
                         MeRLIN is our Strategic Sourcing Solution that oﬀers a seamlessly integrated sourcing process automation with supplier relationship management and planning functions augmented by advanced analytics functions, hosted either on premise or on cloud, delivered through Web and Mobile platform.
                    </p>

                   
                    <h4 style="font-weight: 300;"><strong>HOW MeRLIN CAN HELP YOU?</strong></h4>
                    <p class="para">MeRLIN enables you to gain a broad-spectrum and granular visibility into the organisation's sourcing data.</p>
                    
                </div>
                
            </div>
            <div class="row">
                <div class="col-md-7" style="text-align: left; margin-top: 8px;">
                    <div style="padding-left: 15px; padding-top: 10px;" class="hidden-xs hidden-sm">
                    </div>
                </div>

                <div class="social-float-parent">
                    <div>
                <div class="col-md-5" style="position:relative">
                    <div class="form-div-epicor hidden-sm hidden-xs" id="social-float">
                        <table class="frm-tbl">
                            <tr>
                                <td align="center">
                                    <img style="margin-top:-35px" src="/Landing/Images/pdf-circle.png" />
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 50px;">
                                    <p style="color: #6d6d6d; margin-left: 0px;">
                                         Understand its key features and find the perfect fit for your organisation
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td>

                                    <div class="form-group">
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <img src="/Landing/Images/name.png" />
                                            </div>
                                            <input type="text" class="form-control" id="txtName2" placeholder="Full name" />
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <img src="/Landing/Images/phone.png" />
                                            </div>
                                            <input type="text" class="form-control" id="txtPhone2" placeholder="Phone" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <img src="/Landing/Images/mail.png" />
                                            </div>
                                            <input type="text" class="form-control" id="txtEmail2" placeholder="Work E-mail" />
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <a id="btnsubmit" style="margin-left: 0px; background: #595353; width: 100%; display: block; color: #fff; line-height: 20px;"
                                        class="info-a" href="#">Submit</a>
                                </td>
                            </tr>
                            <tr>
                                <td style="padding: 6px;"><span id="showErrorMsg" style="color: red"></span></td>
                            </tr>
                            <tr>
                                <td>
                                    <p style="margin-top: 4px; margin-bottom: 18px; color: #676767; font-size: 11px !important;">
                                        Your privacy is important to us.
                                        <br />
                                        We'll never share your information.
                                    </p>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                        </div>
                    </div>
            </div>
         
            <div class="row">
                <div class="col-md-7">
                   
                     <ul class="listul">
                    <li class="icons-heading1">SEAMLESS DATA INTEGRATION  </li>
                    </ul>
                    <p class="marglt-20">Consolidate all your RFxs, BOM, Parts, Locations, Supplier, PO data.</p>
                     
                    
                     <ul class="listul">
                    <li class="icons-heading1">COMPLETE AND AUDITABLE PROCESS AUTOMATION</li>
                    </ul>

                    <p class="marglt-20">Automates all your downstream processes and approvals reducing the processing time and paperwork, thus minimizing errors making every change identiﬁable and auditable</p>
                
                     <ul class="listul">
                    <li class="icons-heading1">SUPPLIER ASSESSMENT</li>
                    </ul>

                    <p class="marglt-20">Assess and monitor supplier performance against qualitative and quantitative benchmarks in real time.</p>
                    <img class="img-responsive" src="/Landing/Images/merlin-infographic.jpg" />
                     <ul class="listul">
                    <li class="icons-heading1">ADVANCED ANALYTICS AT YOUR FINGERTIPS</li>
                    </ul>

                    <p class="marglt-20">MeRLIN provides granular visibility of all your buying and sourcing activities, spend analytics, future pricing, supplier analytics with item level visibility</p>
                    <ul class="listul">
                    <li class="icons-heading1">FLEXIBLE REPORTING AND DASHBOARDS</li>
                    </ul>

                    <p class="marglt-20">Create highly customized, multi-dimensional reports and dashboards with detailed drilldowns for supplier analysis, categories, regions, price variance and spend volume.</p>
                     <ul class="listul">
                    <li class="icons-heading1">EMBEDDED ERP </li>
                    </ul>
                    
                        <p class="marglt-20">The entire solution has been built ground up on top of EPICOR ERP ensuring all information, analytics and work ﬂows are available on a single platform.</p>
                </div>
            </div>
          <br /><br />
          
            <div class="row">
                <div class="col-md-8">
                    <a id="btnclear" data-toggle="modal" class="submit-button white-color" onclick="cctclear();" style="padding: 10px" title="Implementation Expert" data-target="#myModal-implexpert">Talk to our experts now </a>
                </div>
            </div>
       
        </div>
    </div>
     

    <div class="modal fade" id="myModal-cct" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content mymodal-download">
                <div class="modal-header modal-header-bgcolor">
                    <button type="button" class="close closev2" data-dismiss="modal" aria-label="Close" data-backdrop="false"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title redColor">Download MeRLIN Factsheet</h4>
                </div>
                <div class="col-md-12 padd-top">
                    <div class="form-group">
                        <label class="success" id="successmessage1" hidden="hidden">Thank you for submitting your details. You will receive an email shortly with a link to download RheinBrücke's CCT document.</label>
                    </div>
                </div>
                <div class="modal-body">
                    <p class="formhead" style="text-align:center;">Understand its key features and find the perfect fit for the oragnisation</p>
                    <div class="form-group">
                        <input type="hidden" id="hdfRootUrl1" value="<%=rootpath %>" />
                        <div class="input-group">
                            <div class="input-group-addon">
                                <%-- <img src="/Landing/Images/name.png" />--%>
                            </div>
                             <input type="text" class="form-control txtName1" id="" placeholder="Full name" />
                        </div>
                    </div>


                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                <%-- <img src="/Landing/Images/phone.png" />--%>
                            </div>
                             <input type="text" class="form-control txtPhone1" id="" placeholder="Phone" />
                        </div>
                    </div>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon">
                                <%-- <img src="/Landing/Images/mail.png" />--%>
                            </div>
                            <input type="text" class="form-control txtEmail1" id="" placeholder="Work E-mail" />
                        </div>
                    </div>
                    <p style="margin-top: 4px; margin-bottom: 4px; color: #676767; font-size: 11px !important; text-align: center;">
                        Your privacy is important to us.
                                        We'll never share your information.
                    </p>
                    <span class="showErrorMsg1" style="color: red"></span>
                </div>

                <div class="clearfix">&nbsp;</div>
                <div class="modal-body">

                    <a href="#" class="submit-button btnsubmit1">Submit</a>
                </div>
            </div>
        </div>
    </div>
     <div class="modal fade" id="myModal-implexpert" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content mymodal-download">
                                                <div class="modal-header modal-header-bgcolor">
                                                    <button type="button" class="close closev2" data-dismiss="modal" aria-label="Close" data-backdrop="false"><span aria-hidden="true">&times;</span></button>
                                                    <h4 class="modal-title redColor">MeRLIN</h4>
                                                </div>
                                                <div class="col-md-12 padd-top">
                                                    <div class="form-group">
                                                        <label class="success" id="PEPsuccessmessage" hidden="hidden">Thank you for submitting your details. You will receive an email shortly with a link to download RheinBrücke's EPICOR Partner Enablement Program document.</label>
                                                    </div>
                                                </div>
                                                <div class="modal-body">
                                                    <p class="formhead">Please fill in your details</p>
                                                    <p>&nbsp;</p>
                                                    <p>
                                                        <input type="text" placeholder="*Your Name" id="txtCalloutNameCCT" class="write-to-us-input" />
                                                    </p>
                                                    
                                                </div>
                                                 <div class="modal-body">
                                                    <p>
                                                        <input type="number" placeholder="Your Mobile Number" id="txtCalloutMobNoCCT" class="write-to-us-input" />
                                                    </p>
                                                   
                                                </div>
                                                <div class="modal-body">
                                                    <p>
                                                        <input type="text" placeholder="*Your Email Address" id="txtCalloutEmailCCT" class="write-to-us-input" />
                                                    </p>
                                                    
                                                </div>
                                               
                                                <div class="modal-body">
                                                     <span class="showErrorMsgcct" style="color: red"></span>
                                                </div>
                                                <div class="clearfix">&nbsp;</div>
                                                <div class="modal-body">
                                                    <input type="button" id="BtnCalloutcct" class="submit-button" data-loading-text="Submitting.." value="Submit" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="FooterScript" runat="server">

      <script type="text/javascript">

          function checkOffset() {
              if ($('#social-float').offset().top + $('#social-float').height() >= $('#footer').offset().top - 10)
                  $('#social-float').css('position', 'absolute');
              if ($(document).scrollTop() + window.innerHeight < $('#footer').offset().top)
                  $('#social-float').css('position', 'fixed'); // restore when you scroll up
              var currentScroll = $(window).scrollTop();
             
              if (currentScroll > 100) {
                  //$('#social-float').css('position', 'fixed');
                  $('#social-float').addClass('socials');

              }
              
              else {
                  $('#social-float').removeClass('socials');
              }



              //$('#social-float').text($(document).scrollTop() + window.innerHeight);
          }
          $(document).scroll(function () {
              checkOffset();
          });


        </script>

</asp:Content>

