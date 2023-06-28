<%@ Page Title="" Language="C#" MasterPageFile="~/LandingPageEpic.Master" AutoEventWireup="true" CodeBehind="LandingPageEpicor.aspx.cs" Inherits="RheinBrucke.Landing.LandingPageEpicor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headerPlaceHolder" runat="server">
    <meta name="keywords" content="Epicor erp 10 support, Epicor erp 10 solutions, Epicor erp 10 tech support, upgrade to Epicor erp 10, benefits of Epicor erp 10, Epicor erp 10 specialists in dubai uae me netherlands germany Europe, epicor version 10, epicor erp demo, Epicor erp 10 upgrades and development, payroll specialists in dubai uae me netherlands germany europe" />
    <meta name="Description" content="Go global with Epicor ERP 10 and leverage EpicPay payroll that takes your business to new heights." />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <title>Epicor</title>
    <link href="../Assets/css/bootstrap-min.css" rel="stylesheet" />
    <link href="../Assets/css/LandingStyleSheet.css" rel="stylesheet" />
    <link href="../Assets/css/media-q.css" rel="stylesheet" />
    <link href="../Assets/css/hover.css" rel="stylesheet" />
    <script src="../Assets/js/jquery-2.1.1.min.js"></script>
    <script src="../Assets/js/bootstrap.min.js"></script>
<!-- Facebook Pixel Code -->
<script>
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
document,'script','https://connect.facebook.net/en_US/fbevents.js');

fbq('init', '1067340079979764');
fbq('track', "PageView");</script>
<noscript>
    <img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=1067340079979764&ev=PageView&noscript=1" /></noscript>
<!-- End Facebook Pixel Code -->

    <script type="text/javascript">



        <!-- Twitter universal website tag code -->

    !function (e, n, u, a) {
        e.twq || (a = e.twq = function () {
            a.exe ? a.exe.apply(a, arguments) :
            a.queue.push(arguments);
        }, a.version = '1', a.queue = [], t = n.createElement(u),
        t.async = !0, t.src = '//static.ads-twitter.com/uwt.js', s = n.getElementsByTagName(u)[0],
        s.parentNode.insertBefore(t, s))
    }(window, document, 'script');
    // Insert Twitter Pixel ID and Standard Event data below
    twq('init', 'nvcmu');
    twq('track', 'PageView');

    function IsEmailValid(a) {
        if ("" == a) return !0; var e = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        return e.test(a)
    }
    $(document).ready(function () {
        var _rootUrl = $("#hdfRootUrl").val();
        $('#btndownlaodBrochure').click(function () {
            if ($('#txtFirstName').val() == '') {
                $('#showErrorMsg').text("Ensure name!."); $('#txtFirstName').focus(); return false;
            }
            if ($('#txtPhone').val() != '' && $('#txtPhone').val().length < 10) {
                $('#showErrorMsg').text("Ensure phone number!."); $('#txtPhone').focus(); return false;
            }
            if ($('#txtEmail').val() == '') {
                $('#showErrorMsg').text("Ensure work email!."); $('#txtEmail').focus(); return false;
            }
            if ($('#txtEmail').val() != '') {
                if (!IsEmailValid($('#txtEmail').val())) {
                    $('#showErrorMsg').text("Ensure work email!."); $('#txtEmail').focus(); return false;
                }
            }
            var email = $('#txtEmail').val();
            var a = email.split('@');
            if (a[1].toLowerCase() == 'gmail.com' || a[1].toLowerCase() == 'live.com' || a[1].toLowerCase() == 'live.in' || a[1].toLowerCase() == 'outlook.com' || a[1].toLowerCase() == 'yahoo.com' || a[1].toLowerCase() == 'zoho.com' || a[1].toLowerCase() == 'yandex.com' || a[1].toLowerCase() == 'aol.com' || a[1].toLowerCase() == 'mail.com' || a[1].toLowerCase() == 'inbox.com') {
                $('#showErrorMsg').text("Please provide us with your work e-mail and not your personal e-mail!."); $('#txtEmail').focus(); return false;
            }
            var Data = {
                firstname: $('#txtFirstName').val(),
                email: $('#txtEmail').val(),
                phone: $('#txtPhone').val(),
                ServiceType: "Epicor"
            };
            $.ajax({
                type: 'POST',
                url: _rootUrl + "api/Landing/LandingPage",
                data: Data,
                cache: false,
                //contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    if (response == "success") {
                        $('#txtFirstName,#txtEmail,#txtPhone').val('');
                        $('#showErrorMsg').text('Mail has been sent successfully!');
                        setTimeout(function () {
                            $('#showErrorMsg').text('');
                        }, 5000);
                    }
                }
            });
        })
    })
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <input type="hidden" id="hdfRootUrl" value="<%=rootpath %>" />


    <div class="visible-xs" style="height: 74px; width: 100%;"></div>

    <div class="container" style="padding: 0px;">
        <div class="banner-w-epicor">
            <div class="visible-sm" style="height: 60px;"></div>
            <div class="row visible-xs visible-sm">

                <div class="col-md-12">
                    <img class="img-responsive" src="/Landing/Images/Epicor-2 banner.jpg" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-7" style="text-align: left; margin-top: 8px;">
                    <div style="padding-left: 15px; padding-top: 10px;" class="hidden-xs hidden-sm">
                        <div class="row">
                            <div class="col-md-3">
                                <img class="img-responsive" src="/Landing/Images/upgrade-hand.png" />
                            </div>
                            <div class="col-md-9">
                                <h2 style="color: #fff; line-height: 37px !important;">Leverage the Benefits of Epicor 10
                                </h2>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <img class="img-responsive" src="/Landing/Images/epicorbanner-icon.png" />
                            </div>
                        </div>
                        <%--<table cellpadding="0" cellspacing="0">
                            <tr>
                                <td>
                                    <img class="img-responsive" src="/Landing/Images/upgrade-hand.png" /></td>
                                <td style="display: list-item !important;flex:inherit;">
                                    <h1>Streamline and<br />
                                        Manage Payroll (EPIC PAY)
                                    </h1>
                                    <p>RheinBrücke Payroll Solution Based on Epicor</p>
                                </td>
                            </tr>
                        </table>--%>
                        <%--<img class="img-responsive ban-img-inner" src="/Landing/Images/Epicor-2-inner.jpg" />--%>
                    </div>
                    <%-- <div class="visible-xs visible-sm">
                        <br />
                        <br />
                        <br />
                    </div>--%>
                </div>
                <div class="col-md-5" style="position: relative;">
                    <div class="form-div-epicor">
                        <table class="frm-tbl-epicor">
                            <tr>
                                <td align="center">
                                    <img style="margin-top: -35px;" src="/Landing/Images/pdf-circle.png" />
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 50px;">
                                    <p style="color: #6d6d6d; margin-left: 0px;">
                                        For more information,
                                        Please complete this form.
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
                                            <input type="text" class="form-control" id="txtFirstName" placeholder="Full name" />
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <img src="/Landing/Images/phone.png" />
                                            </div>
                                            <input type="text" class="form-control" id="txtPhone" placeholder="Phone" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <img src="/Landing/Images/mail.png" />
                                            </div>
                                            <input type="text" class="form-control" id="txtEmail" placeholder="Work E-mail" />
                                        </div>
                                    </div>


                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <a href="/Assets/pdf/EpicPay.pdf" target="_blank" id="btndownlaodBrochure" style="margin-left: 0px; background: #595353; width: 100%; display: block; color: #fff; line-height: 20px;" class="info-a" href="#">Submit</a>
                                </td>
                            </tr>
                            <tr>
                                <td style="padding: 6px;"><span id="showErrorMsg" style="color: red"></span></td>
                            </tr>
                            <tr>
                                <td>
                                    <p style="margin-top: 4px; margin-bottom: 18px; color: #676767; font-size: 11px !important;">
                                        Your privacy is important to us.
                                        We'll never share your information.
                                    </p>
                                </td>
                            </tr>

                        </table>
                    </div>

                </div>
            </div>
        </div>
        <div class="row visible-xs visible-sm">
            <div class="col-md-12">
                <div style="height: 400px;"></div>
            </div>
            <%--   <div align="center" style="padding: 25px 15px;" class="col-md-12">
                <h1>Interested in moving to the
                    <br />
                    latest version of Epicor
                </h1>
                <p>RheinBrücke Payroll Solution Based on Epicor</p>
                <br />
                <br />
                <br />
            </div>--%>
        </div>
        <div class="conetnt-div">
            <div class="row">
                <div class="col-md-7">
                    <br />
                    <h2 style="font-weight: 300;">About <strong>Epicor</strong> </h2>
                    
                    <p class="para">Business today is dynamic, competitive, and much more demanding. In order to stay ahead in the game, your business users need an ERP system that is intuitive and productive. Epicor with its latest version Epicor ERP 10 responds to this business need and helps fast-moving businesses by adopting global best practices that help you serve your customers better.</p>
                    <br />
                    <br />
                </div>
                <div align="center" class="col-md-5">
                    <!--<br /><br /><br /><br /><br /><br />
                    <img class="img-responsive" src="img/grow-biz-epicor.png" />-->
                </div>
            </div>
            <!--Separator-->
            <div class="row">
                <div class="col-md-12">
                    <div style="width: 100%; height: 1px; background: #e8e8e8;"></div>
                </div>
            </div>
            <!--Separator-->
            <!--Infographics start here-->
            <div class="row">
                <div class="col-md-12">
                    <br />
                    <br />
                    <br />
                    <!--large and small device infographics-->
                    <div align="center" class="info-outer hidden-xs">
                        <table class="info-tbl" style="align-items: center !important;" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                                <td align="center" style="">
                                    <img class="hvr-grow-rotate" src="/Landing/Images/why-upgrade-circle.png" />
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 23px;"></td>
                            </tr>
                            <tr>
                                <td style="width: 100%;">
                                    <p>Advantages Epicor ERP 10</p>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 75px;"></td>
                            </tr>
                            <tr>
                                <td style="">
                                    <table class="frm-tbl-epicor" align="center" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="width: 195px;">
                                                <div align="center" class="box-div hvr-round-corners">
                                                    <a href="#PrepackageComp">
                                                        <table class="inf-icon-tbl" cellpadding="0" cellspacing="0">
                                                            <tr>
                                                                <td>
                                                                    <img src="/Landing/Images/ic-1.png" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <p>
                                                                        Pre-packaged
                                                                        <br />
                                                                        components
                                                                    </p>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </a>
                                                </div>
                                            </td>
                                            <td class="hidden-sm" align="center" style="width: 80px;">
                                                <img src="/Landing/Images/black-line.png" />
                                            </td>
                                            <td class="visible-sm" align="center" style="width: 80px;">
                                                <img src="/Landing/Images/black-line-small.png" />
                                            </td>
                                            <td align="center" valign="middle" style="width: 195px;">

                                                <img src="/Landing/Images/icons-top.png" />

                                            </td>
                                            <td class="hidden-sm" align="center" style="width: 80px;">
                                                <img src="/Landing/Images/black-line.png" />
                                            </td>
                                            <td class="visible-sm" align="center" style="width: 80px;">
                                                <img src="/Landing/Images/black-line-small.png" />
                                            </td>
                                            <td style="width: 195px;">
                                                <div align="center" class="box-div hvr-round-corners">
                                                    <a href="#Embedded">
                                                        <table class="inf-icon-tbl" cellpadding="0" cellspacing="0">
                                                            <tr>
                                                                <td>
                                                                    <img src="/Landing/Images/ic-2.png" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <p>
                                                                        Embedded Training
                                                                        <br />
                                                                        Programs
                                                                    </p>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </a>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 15px;"></td>
                            </tr>
                            <tr>
                                <td style="">
                                    <table class="frm-tbl-epicor" align="center" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="width: 195px;">
                                                <div align="center" class="box-div hvr-round-corners">
                                                    <a href="#Extended">
                                                        <table class="inf-icon-tbl" cellpadding="0" cellspacing="0">
                                                            <tr>
                                                                <td>
                                                                    <img src="Landing/Images/ic-3.png" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <p>
                                                                        Extended
                                                                        <br />
                                                                        Support
                                                                    </p>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </a>
                                                </div>
                                            </td>
                                            <td class="hidden-sm" align="center" style="width: 80px;">
                                                <img src="/Landing/Images/black-line.png" />
                                            </td>
                                            <td class="visible-sm" align="center" style="width: 80px;">
                                                <img src="/Landing/Images/black-line-small.png" />
                                            </td>

                                            <td align="center" valign="middle" style="width: 195px;">
                                                <img src="/Landing/Images/icons-bottom.png" />
                                            </td>
                                            <td class="hidden-sm" align="center" style="width: 80px;">
                                                <img src="/Landing/Images/black-line.png" />
                                            </td>
                                            <td class="visible-sm" align="center" style="width: 80px;">
                                                <img src="/Landing/Images/black-line-small.png" />
                                            </td>

                                            <td style="width: 195px;">
                                                <div align="center" class="box-div hvr-round-corners">
                                                    <a href="#Mobility">
                                                        <table class="inf-icon-tbl" cellpadding="0" cellspacing="0">
                                                            <tr>
                                                                <td>
                                                                    <img src="/Landing/Images/ic-4.png" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <p>
                                                                        Mobility
                                                                        <br />
                                                                        Components
                                                                    </p>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </a>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>

                            <tr>
                                <td style="height: 58px;"></td>
                            </tr>

                            <tr>
                                <td align="center" style="">
                                    <a style="background: #363636;" class="info-a" href="#">User-friendly</a>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 75px;"></td>
                            </tr>

                            <tr>
                                <td align="center" style="">
                                    <a style="background: #363636;" id="back_to_topBtn" class="info-b" href="">Read more about Epicor ERP  10</a>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 30px;"></td>
                            </tr>

                        </table>
                    </div>
                    <div class="col-md-12 visible-xs">
                        <div aling="center" class="xs-div-info">
                            <img src="/Landing/Images/why-upgrade-circle.png" />
                        </div>
                        <div aling="center" class="xs-div-info">
                            <div align="center" class="box-div-s">
                                <br />
                                <img src="/Landing/Images/ic-1.png" /><br />
                                <a href="#PrepackageComp">Pre-packaged components
                                </a>
                            </div>
                        </div>
                        <div aling="center" class="xs-div-info">
                            <div align="center" class="box-div-s">
                                <br />
                                <img src="/Landing/Images/ic-2.png" />
                                <a href="#Embedded">Embedded Training Programs
                                </a>
                            </div>
                        </div>
                        <div aling="center" class="xs-div-info">
                            <div align="center" class="box-div-s">
                                <br />
                                <img src="/Landing/Images/ic-3.png" />
                                <a href="#Extended">Extended Support
                                </a>
                            </div>
                        </div>
                        <div aling="center" class="xs-div-info">
                            <div align="center" class="box-div-s">
                                <br />
                                <img src="/Landing/Images/ic-4.png" />
                                <a href="#Mobility">Mobility Components
                                </a>
                            </div>
                        </div>
                    </div>
                    <!--Extra small device-->
                </div>
            </div>
            <!--Infographics end here-->
            <!--Separator-->
            <div class="row">
                <div class="col-md-12">
                    <div style="width: 100%; height: 1px; background: #e8e8e8;"></div>
                </div>
            </div>
            <!--Separator-->
            <div class="row">
                <div align="center" class="col-md-12">
                    <!--<img class="img-responsive" src="img/epicpay-circle.jpg" />-->
                </div>
            </div>
            <%--  <div class="row">
                <div class="col-md-12">
                    <br />
                </div>
            </div>--%>
            <div class="row">
                <div class="col-md-12">
                    <h2 style="font-weight: 300;"><strong>The RheinBrücke advantage</strong> </h2>
                    <br />
                    <p class="para">Along with the Epicor ERP 10 upgrade, RheinBrücke will significantly empower business users like you with our smart payroll solution EpicPay’s license in concessional rates.</p>
                    <p>
                        EpicPay is our payroll solution for Epicor ERP 10. Built on the Epicor ICE platform, our solution works seamlessly as an intrinsic part of your ERP.
                    </p>
                    <p>
                        EpicPay maintains payroll employee information that can be mapped with existing Epicor ERP users. It has the ability to manage multiple payroll classes such as salaried employees, contract employees, consultants, etc., and map them to the payroll employee module.
                    </p>
                    <p>
                        Our RheinBrücke Epicor certified consultants will help you through every step of the process that will build a solid foundation for your business to yield maximum benefits from your ERP investments. You can choose services ranging from a full upgrade package, ad-hoc services and technical consulting, or early-stage project planning.
                    </p>
                    <br />
                    <br />
                </div>
            </div>
            <div id="PrepackageComp" class="row">
                <div class="col-md-6">
                    <h4 class="icons-heading" style="color: #651a1a">
                        <img src="/Landing/Images/ic-1.png" />Pre-packaged components</h4>
                    <p>
                        From the rich experience of more than 200 person years in Epicor ERP, our consultants have derived pre-canned reports, dashboards and fully automated workflow engines. These components are exceptional fit for business akin with discrete manufacturing.
                    </p>
                </div>
                <div id="Embedded" class="col-md-6">
                    <h4 class="icons-heading" style="color: #651a1a">
                        <img src="/Landing/Images/ic-2.png" />Embedded Training Programs</h4>
                    <p>
                        RheinBrücke has well-structured partner enablement and client enablement training programs. We have been providing several partner enablement program across Europe and GCC countries for various Epicor partners and customers successfully. These training programs will provide self-sufficiency to end users and system administrators
                    </p>
                </div>
            </div>
            <div id="Extended" class="row">
                <div class="col-md-6">
                    <h4 class="icons-heading" style="color: #651a1a">
                        <img src="Landing/Images/ic-3.png" />Extended Support</h4>
                    <p>
                        RheinBrücke provides a comprehensive help desk support that covers L1 and L1 for Epicor ERP Version10. This help desk enable customers to reach out to our competent support professional.  We provide multi-channel approach and integrated tools & systems such as tele-phone, email, portal, chat, social media etc.. to  reach our support team.
We have a very clear SLA and OLA driven systems in place to provide world-class support to end customers.,
                    </p>
                </div>
                <div id="Mobility" class="col-md-6">
                    <h4 class="icons-heading" style="color: #651a1a">
                        <img src="/Landing/Images/ic-4.png" />Mobility Components</h4>
                    <p>
                        We at RheinBrücke, believe innovation using intersection of cutting edge technology and business. As result, our product development team has evolved specialized mobile based tools for oil field services extension, time & expense management systems etc..  
                    </p>
                    <p>These extended systems & tools would provide a clear integration with back end ERP and seamless enterprise integration leading to measurable business outcome.</p>
                </div>
            </div>

        </div>
    </div>
    <script type="text/javascript">
        $('a[href^="#"]').on('click', function (e) {
            var target = this.hash;
            var $target = $(target);
            $('html, body').stop().animate({
                'scrollTop': $target.offset().top - 100
            }, 800, 'swing', function () {
                window.location.hash = target;
            });
        });
        $('#back_to_topBtn').click(function () {
            $('html, body').animate({
                scrollTop: 0
            }, 1000);
            $('#txtFirstName').focus();
            return false;
        });
    </script>
    <script type="text/javascript">



        <!-- Twitter universal website tag code -->

    !function (e, n, u, a) {
        e.twq || (a = e.twq = function () {
            a.exe ? a.exe.apply(a, arguments) :
            a.queue.push(arguments);
        }, a.version = '1', a.queue = [], t = n.createElement(u),
        t.async = !0, t.src = '//static.ads-twitter.com/uwt.js', s = n.getElementsByTagName(u)[0],
        s.parentNode.insertBefore(t, s))
    }(window, document, 'script');
    // Insert Twitter Pixel ID and Standard Event data below
    twq('init', 'nvcmu');
    twq('track', 'PageView');

    function IsEmailValid(a) {
        if ("" == a) return !0; var e = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        return e.test(a)
    }
    $(document).ready(function () {
        var _rootUrl = $("#hdfRootUrl").val();
        $('#btndownlaodBrochure').click(function () {
            if ($('#txtFirstName').val() == '') {
                $('#showErrorMsg').text("Ensure name!."); $('#txtFirstName').focus(); return false;
            }
            if ($('#txtPhone').val() != '' && $('#txtPhone').val().length < 10) {
                $('#showErrorMsg').text("Ensure phone number!."); $('#txtPhone').focus(); return false;
            }
            if ($('#txtEmail').val() == '') {
                $('#showErrorMsg').text("Ensure work email!."); $('#txtEmail').focus(); return false;
            }
            if ($('#txtEmail').val() != '') {
                if (!IsEmailValid($('#txtEmail').val())) {
                    $('#showErrorMsg').text("Ensure work email!."); $('#txtEmail').focus(); return false;
                }
            }
            var email = $('#txtEmail').val();
            var a = email.split('@');
            if (a[1].toLowerCase() == 'gmail.com' || a[1].toLowerCase() == 'live.com' || a[1].toLowerCase() == 'live.in' || a[1].toLowerCase() == 'outlook.com' || a[1].toLowerCase() == 'yahoo.com' || a[1].toLowerCase() == 'zoho.com' || a[1].toLowerCase() == 'yandex.com' || a[1].toLowerCase() == 'aol.com' || a[1].toLowerCase() == 'mail.com' || a[1].toLowerCase() == 'inbox.com') {
                $('#showErrorMsg').text("Please provide us with your work e-mail and not your personal e-mail!."); $('#txtEmail').focus(); return false;
            }
            var Data = {
                firstname: $('#txtFirstName').val(),
                email: $('#txtEmail').val(),
                phone: $('#txtPhone').val(),
                ServiceType: "Epicor"
            };
            $.ajax({
                type: 'POST',
                url: _rootUrl + "api/Landing/LandingPage",
                data: Data,
                cache: false,
                //contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    if (response == "success") {
                        $('#txtFirstName,#txtEmail,#txtPhone').val('');
                        $('#showErrorMsg').text('Mail has been sent successfully!');
                        setTimeout(function () {
                            $('#showErrorMsg').text('');
                        }, 5000);
                    }
                }
            });
        })
    })
    </script>
</asp:Content>