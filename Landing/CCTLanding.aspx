<%@ Page Title="" Language="C#" MasterPageFile="~/LandingPageEpic.Master" AutoEventWireup="true" CodeBehind="CCTLanding.aspx.cs" Inherits="RheinBrucke.Landing.CCTLanding" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headerPlaceHolder" runat="server">
    <meta name="keywords" content="global erp strategy, global erp rollout, hassle free erp configuration migration tool, erp implementation plan, erp implementation agile methodology, successful erp implementation and rollout, erp system configuration migration, erp deployment strategy, erp deployment plan, big bang erp implementation, phased erp rollouts, erp implementation approaches, economical global erp rollout strategy" />
    <meta name="Description" content="CCT moves configuration settings from the parent company to its subsidiaries in no time and improves audit compliance by generating accurate reports" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <title>CCT</title>
    <link href="../Assets/css/bootstrap-min.css" rel="stylesheet" />
    <link href="../Assets/css/LandingStyleSheet.css" rel="stylesheet" />
    <link href="../Assets/css/media-q.css" rel="stylesheet" />
    <link href="../Assets/css/hover.css" rel="stylesheet" />
    <script src="../Assets/js/jquery-2.1.1.min.js"></script>
    <script src="../Assets/js/bootstrap.min.js"></script>
   

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
   .banner-w-cct {
    width: 100%;
    background: #fff;
    height: 270px;
    position: relative;
    background-image: url(/Landing/Images/cct-banner.jpg) !important;
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
        
  

    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <input type="hidden" id="hdfRootUrl" value="<%=rootpath %>" /><div class="visible-xs" style="height: 74px; width: 100%;"></div>
    <div class="container" style="padding: 0px;">
        <div class="banner-w-cct">
            <%--<div class="row visible-xs visible-sm">
                <div class="col-md-12">
                    <img class="img-responsive" src="/Landing/Images/cct-banner.jpg" />
                </div>
            </div>--%>
            <div class="row">
                <div class="col-md-7" style="position: relative;">
                   
                </div>
                <div class="col-md-5 epicpay-video hidden-sm hidden-xs">
                    <iframe width="460" height="300" src="https://www.youtube.com/embed/Lg5vILx87g4?autoplay=1" frameborder="0" allowfullscreen></iframe>
                  
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
                    <h4 style="font-weight: 300;"><strong>Kopiert Konfigurationseinstellungen mit einem Mausklick von der Muttergesellschaft zu deren Tochtergesellschaften.</strong></h4>
                    <br />
                    <p class="para">
                        Basierend auf Epicor ERP, kopiert das RheinBrücke CCT, ohne manuelle Eingriffe, betriebliche Konfigurationseinstellungen von einem Unternehmen zu einem anderen. Es beschleunigt den Konfigurationskopierprozess, verringert die Fehleranzahl und verbessert die Konformität durch Erstellung präziser Berichte.
                    </p>
                    <p class="para">Das Epicor–CCT (Copy Company Tool) erledigt die gesamte Umsetzung der Konfigurationsmigration in einer automatisierten (und somit fehlerfreien) Umgebung innerhalb weniger Minuten. Dieses einzigartige Tool ist die einzige derartige Lösung, die für die Epicor ERP-Plattform erhältlich ist.</p>

                    
                     <img class="img-responsive" src="/Landing/Images/cct-img.jpg" />
                    <h5 style="font-weight: 500; max-width: 300px; text-align: center; line-height: 22px;">
                        <strong>Konfigurationseinstellungen aus der Muttergesellschaft werden mit einem Mausklick von der Muttergesellschaft zu deren Tochtergesellschaften transferiert.
                            <br />
                            <br />
                            <br />
                        </strong>
                    </h5>
                        
                    <h4 style="font-weight: 300;"><strong>Vorzüge des RheinBrücke Copy Company Tool (CCT)</strong></h4>
                    <p class="para">Die Replizierung einer Unternehmenskonfiguration in einer neuen Instanz ist mühsam, da es eine Menge Zeit und Ressourcen in Anspruch nimmt und manuelle Prozesse fehlerträchtig sind. Die Konfiguration der gleichen Einrichtung für unterschiedliche Unternehmen oder die Implementierung der gleichen Konfiguration für verschiedene Mandanten kann daher eine gewaltige Aufgabe sein.</p>
                    <p class="para">RheinBrücke CCT löst dieses Problem durch Erstellung eines Funktionsdokuments, in dem die in der Muttergesellschaft vorgenommenen Konfigurationen aufgeführt sind. Auf der Grundlage dieses Funktionsdokuments automatisiert RheinBrücke den Migrationsprozess der Konfiguration. Im Ergebnis erhalten die Tochtergesellschaften in kürzester Zeit die gleichen Konfigurationseinstellungen wie die Muttergesellschaft.</p>
                    <br />
                    <br />
                </div>
                
            </div>
            <div class="row">
                <div class="col-md-7" style="text-align: left; margin-top: 8px;">
                    <div style="padding-left: 15px; padding-top: 10px;" class="hidden-xs hidden-sm">
                    </div>
                </div>

                <div class="social-float-parent">
                    <div>
                <div class="col-md-5" style="position: relative;">
                    <div class="form-div-epicor hidden-sm hidden-xs" id="social-float">
                        <table class="frm-tbl">
                            <tr>
                                <td align="center">
                                    <img style="margin-top: -35px;" src="/Landing/Images/pdf-circle.png" />
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
            <!--Separator-->
            <div class="row">
                <div class="col-md-12">
                    <div style="width: 100%; height: 1px; background: #e8e8e8;"></div>
                </div>
            </div>
            <!--Separator-->


            <div class="row">
                <div class="col-md-7">
                    <br />
                    <br />

                    <table align="center" class="inftbl" cellpadding="0" cellspacing="0">
                        <tr>
                            <td style="width: 210px;">
                                <div class="head-bx-w">
                                    <p>
                                        Manuelle Unternehmenskonfiguration Migration 
                                    </p>
                                </div>
                            </td>
                            <td style="width: 25px;"></td>
                            <td style="width: 210px;">
                                <div class="head-bx-r">
                                    <p>
                                        Epicor-CCT<br />
                                        ( Copy Company Tool )
                                    </p>
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <td align="right" valign="middle">
                                <span>Zeitaufwendig</span><img style="" src="/Landing/Images/arrow.png" />
                            </td>
                            <td style="width: 25px;"></td>
                            <td valign="middle" style="border-left: 2px #651a1a solid; padding: 20px 0px;">
                                <img style="margin-left: -25px;" src="/Landing/Images/cct-1.png" />
                                <span>Schnell</span>
                            </td>
                        </tr>

                        <tr>
                            <td align="right" valign="middle">
                                <span>Fehleranfällig</span>
                                <img style="" src="/Landing/Images/arrow.png" />
                            </td>
                            <td style="width: 25px;"></td>
                            <td valign="middle" style="border-left: 2px #651a1a solid; padding: 20px 0px;">
                                <img style="margin-left: -25px;" src="/Landing/Images/cct-2.png" />
                                <span>Fehlerfrei</span>
                            </td>
                        </tr>

                        <tr>
                            <td align="right" valign="middle">
                                <span>Kostenintensiv</span>
                                <img style="" src="/Landing/Images/arrow.png" />
                            </td>
                            <td style="width: 25px;"></td>
                            <td valign="middle" style="border-left: 2px #651a1a solid; padding: 20px 0px;">
                                <img style="margin-left: -25px;" src="/Landing/Images/cct-3.png" />
                                <span>Kosteneffizient</span>
                            </td>
                        </tr>

                        <tr>
                            <td align="right" valign="middle">
                                <span>Ineffizient </span>
                                <img style="" src="/Landing/Images/arrow.png" />
                            </td>
                            <td style="width: 25px;"></td>
                            <td valign="middle" style="border-left: 2px #651a1a solid; padding: 20px 0px;">
                                <img style="margin-left: -25px;" src="/Landing/Images/cct-4.png" />
                                <span>Effizient</span>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle">
                                <span style="text-align: right; display: -webkit-inline-box; margin-right: 15px;">Konfigurationsgenerierung ist nicht möglich
                                </span>
                                <img style="" src="/Landing/Images/arrow.png" />
                            </td>
                            <td style="width: 25px;"></td>
                            <td valign="middle" style="border-left: 2px #651a1a solid; padding: 20px 0px;">
                                <img style="margin-left: -25px;" src="/Landing/Images/cct-6.png" />
                                <span style="text-align: left; display: -webkit-inline-box;">Konfigurationsgenerierung
                                    <br />
                                    ermöglichte
                                </span>
                            </td>
                        </tr>
                    </table>
                </div>


                <div class="col-md-7">
                    <br />
                    <br />
                    <h4 class="icons-heading">Wer sollte die Verwendung dieses Tools in Erwägung ziehen? </h4>


                    <ul class="listul">
                        <li>Epicor Implementierungspartner oder Unternehmenskunden von Epicor ERP</li>
                        <li>Neue Mehrmandaten-Kunden, die eine Epicor ERP-Lösung für mehrere Unternehmen implementieren</li>
                        <li>Bestehende und neue Kunden von Epicor ERP, die ihre Konfigurationseinstellungen verändern möchten</li>
                    </ul>

                    <br />

                    <h4 class="icons-heading">Leistungsmerkmale des RheinBrücke Copy Company Tool (CCT)</h4>


                    <ul class="listul">
                        <li>Problemlose ERP-Implementierung und Rollout</li>
                        <li>Automatisierter Prozess und somit Beseitigung von Dateninkonsistenzen</li>
                        <li>Enorme Zeit- und Aufwandseinsparungen bei globalem ERP-Rollout</li>
                        <li>Zusätzliche Konfigurationen können in Modulen ohne Schreibfunktionen vorgenommen werden.</li>
                        <li>Integrierter Prüfpfad,der alle an den Konfigurationen durchgeführten Änderungen erfasst</li>
                        <li>Installationen von Big-Bang-ERP-Rollouts bis hin zu  ERP-Rollouts in mehreren Phasen</li>
                        <li>Die Daten sind nach XML exportierbar.</li>
                        <li>Anwendbar in mehreren Branchen</li>
                        <li>Ökonomische und agile Implementierungslösung</li>
                    </ul>

                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
            </div>

        </div>
    </div>


    <div class="modal fade" id="myModal-cct" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content mymodal-download">
                <div class="modal-header modal-header-bgcolor">
                    <button type="button" class="close closev2" data-dismiss="modal" aria-label="Close" data-backdrop="false"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title redColor">Download RheinBrücke’s CCT brochure</h4>
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
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="FooterScript" runat="server">
     <script type="text/javascript">
        function IsEmailValid(a) {
            if ("" == a) return !0; var e = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            return e.test(a)
        }
        $(document).ready(function () {
            var _rootUrl = $("#hdfRootUrl").val();
            $('#btnsubmit').click(function () {
                debugger;
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
                    if (!IsEmailValid($('#txtEmail').val())) {
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
                    ServiceType: "CCT"
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
                    ServiceType: "CCT"
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
                            $('.showErrorMsg1').text('Mail has been sent successfully!');
                            $('.txtName1,.txtEmail1,.txtPhone1').val('');
                            setTimeout(function () {
                                $('.showErrorMsg1').text('');
                            }, 5000);
                        }
                    }
                });
            });
        });
    </script>
      <script type="text/javascript">

          function checkOffset() {
              if ($('#social-float').offset().top + $('#social-float').height() >= $('#footer').offset().top - 10)
                  $('#social-float').css('position', 'absolute');
              if ($(document).scrollTop() + window.innerHeight < $('#footer').offset().top)
                  $('#social-float').css('position', 'fixed'); // restore when you scroll up
              var currentScroll = $(window).scrollTop();
              if (currentScroll > 100) {
                  //$('#social-float').css('position', 'absolute');
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