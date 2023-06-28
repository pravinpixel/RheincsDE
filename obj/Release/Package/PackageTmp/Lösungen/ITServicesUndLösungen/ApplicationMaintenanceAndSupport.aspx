<%@ Page Title="Application Maintenance & Support Services | RIC" Language="C#" MasterPageFile="~/Rheincs.Master" AutoEventWireup="true" CodeBehind="ApplicationMaintenanceAndSupport.aspx.cs" Inherits="RheinBrucke.Lösungen.ITServicesUndLösungen.ApplicationMaintenanceAndSupport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headerPlaceHolder" runat="server">
    <meta name="keywords" content="AMS Application Maintenance support Application support Production support Application portfolio management" />
    <meta name="Description" content="RheinBrücke offers Application Maintenance services on a global delivery model, and our structured, SLA driven process ensures that you get a 100% hassle free Application Maintenance & Support experience." />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <input type="hidden" id="hdfRootUrl" value="<%=rootpath %>" />
    <div class="container" id="container-top">
        <div class="row">
             <ul class="breadcrumb bread hidden-xs hidden-sm">
                 <li><a href="#" class="redColor">Home <span> » </span> </a></li>
                  <li ><a href="#" class="redColor">Lösungen<span> » </span></a></li>
                 <li ><a href="#" class="redColor">IT-Services Und -Lösungen<span> » </span></a></li>
                 <li><a href="#" class="redColor">Application Maintenance & Support</a></li>
             </ul>
         </div>
        <div class="row">
      <div class="bg-img-ms-application img-responsive ">
            <h2 class="rhein-banner-heading-h2 inner-banner-text1 img-bottom">RheinBrücke</h2>
                <p class="rhein-banner-heading-p inner-banner-text1 ">Unsere strukturierte , SLA angetrieben Prozess stellt sicher, dass Sie ein 100% stressfrei Application Maintenance & Support Erfahrung.</p>
              </div>
 </div>
      <div class="row wrappernew main-container">
                    <h1 class="redColor heading-sharepoint">AMS–Application Maintenance & Support</h1>
        
       
    <div class="row padd-bottom-10 padd-left-17 mainContent-normal">
          <p>RheinBrücke bietet Wartungsservices für Ihre Applikationen weltweit, zum Beispiel:</p>
        </div>
          
                     <div class="col-md-12">
                        <ul>
                            <li>
                                <div class="redBullets-pre"></div>


                                <p class="bulletContent-pre"><b>Support für Applikationen</b>–SLA-basierter Support und Wartung von Applikationen als Managed Service</p>
                            </li>
                        </ul>

                    </div>
     <div class="col-md-12">
                        <ul>
                            <li>
                                <div class="redBullets-pre"></div>


                                <p class="bulletContent-pre"><b>Support für die Produktion </b>–SLA-basierter Support und Wartung für Ihren Produktionsbetrieb als Managed Service; und</p>
                            </li>
                        </ul>

                    </div>
         <div class="col-md-12">
                        <ul>
                            <li>
                                <div class="redBullets-pre"></div>


                                <p class="bulletContent-pre"><b>Application Portfolio Management</b>-Application Portfolio Rationalization (APR), Software License Management (SLM) and Application Life Cycle Management (ALCM)</p>
                            </li>
                        </ul>

                    </div>
           </div>
<div class="row main-container mainContent-normal">
<p class="padd-bottom-10">Wir wissen, wie man Applikationsportfolios rationalisiert, indem man die Applikationsumgebungen der Kunden einer Heatmap für Geschäftsprozesse gegenüberstellt. Wir legen Ihnen Empfehlungen hinsichtlich Konsolidierung und Applikationsoptimierung vor, damit Sie redundante Applikationen stilllegen können. Unsere Empfehlungen basieren auf Analysen der zugrundeliegenden Software- und Hardware-Infrastruktur, die ein schlankeres Management von Softwarelizenzen ermöglicht.</p>
<p class="padd-bottom-10">Unsere Kunden erhalten Hilfestellung bei der Umsetzung eines transparenten Governance- Prozesses, um Applikationen, die nahtlos in Applikations- und Produktions-Support umgesiedelt werden sollen, zu löschen. Dadurch kommt die zugrundeliegende Infrastruktur von Software (Lizenz) und Hardware (Server) zum Vorschein.</p>
<p class="padd-bottom-10">RheinBrücke bietet SLA-basierte Supportservices für Applikationen auf ITIL-Basis. Unser Support-Team und unsere stabilen Prozesse gestalten die Übersiedlung des Applikations-Supports innerhalb optimaler Zeitfenster einfach und helfen bei der Stabilisierung von Services in der Anfangsphase des Sollzustands. Die rechtzeitige Intervention und ein klarer Fokus auf stetige Verbesserung in Kombination mit präventiver Wartung gewährleisten uneingeschränktes Nutzervergnügen.</p>

          
<p class="padd-top-20 redColor"><a data-toggle="modal" data-target="#myModal-contact" class="redColor ETAMS"><b><span class="bulcolor">Weitere Informationen zu unseren Wartungs- und Supportservices für Applikationen </span>finden Sie hier.</b></a></p>
     <div class="modal fade" id="myModal-contact" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content mymodal-download">
                            <div class="modal-header modal-header-bgcolor">
                                                <button type="button" class="close closev2" data-dismiss="modal" aria-label="Close" data-backdrop="false"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title redColor app-title-modal">Rheinbrücke Application Maintenance & Support Services -Dokument</h4>
                                            </div>
                            <div class="col-md-12 padd-top">
                            <div class="form-group">
                                <label class="success" id="divsuccessmessage"  hidden="hidden">Vielen Dank für die Übermittlung Ihrer Angaben . Sie werden in Kürze eine E-Mail mit einem Link zu Rheinbrücke Application Maintenance & Support Services -Dokument herunterladen können.</label>
                            </div>
                        </div>
                        <div class="modal-body">
                            <p class="formhead">Bitte füllen Sie Ihre Daten an Rheinbrücke Application Maintenance & Support Services -Dokument herunterzuladen.</p>
                            <p>
                                <input type="text" placeholder="*lhr Name" id="txtAMSName" class="write-to-us-input" /></p>
                            <span class="validator" id="reqAMSName" hidden="hidden">Überprüfen Sie Ihren Namen</span>
                        </div>
                        <div class="modal-body">
                            <p>
                                <input type="text" placeholder="*Ihre E-Mail-Addresse" id="txtAMSEmail" class="write-to-us-input" /></p>
                            <span class="validator" id="reqAMSemail" hidden="hidden">Überprüfen Sie Ihre E-Mail-Adresse</span>
                            <span class="validator" id="valAMSemail" hidden="hidden">Ungültige E-Mail-Adresse</span>
                        </div>
                             <div class="modal-body">
                            <p>
                                <input type="text" placeholder="Ihre Mobile Number" id="txtAMSMobNo" class="write-to-us-input" />
                            </p>
                            <span style="margin-top: 5px;" class="validator" id="reqAMSMobno" hidden="hidden">Überprüfen Sie Ihre Mobile Number</span>
                            <span style="margin-top: 5px;" class="validator" id="valAMSMobNo" hidden="hidden">Ungültige Mobile Number</span>
                        </div>
                            <div class="clearfix">&nbsp;</div>
                        <div class="modal-body">
                           <input type="button" id="btnAMS" class="submit-button" data-loading-text="Einreichen.." value="Senden" />
                        </div>
                        </div>
                    </div>
                </div>
</div>
        </div>
        
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterScript" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('#btnAMS').click(function () {
                var r = AMSContactUsValidation();
                if (r == 1) {
                    $(this).button('loading');
                    save();
                }
            });
        });
        function clear() {
            $("#reqAMSName,#reqAMSMobno").hide();
            $("#reqAMSemail").hide();
            $("#valAMSemail,#valAMSMobNo").hide();
            $("#txtAMSName").val('');
            $("#txtAMSEmail,#txtAMSMobNo").val('');
        }
        function AMSContactUsValidation() {
            var name = $('#txtAMSName').val();
            var email = $('#txtAMSEmail').val();
            var mobno = $('#txtAMSMobNo').val();
            var response = 1;

            $("#reqAMSName").hide();
            $("#reqAMSemail,#reqAMSMobno").hide();
            $("#valAMSemail,#valAMSMobNo").hide();

            if ($.trim(name) == '') {
                $("#reqAMSName").show();
                response = 0;
            }
            if (email == '') {
                $("#reqAMSemail").show();
                response = 0;
            }
            if (!IsEmail(email)) {
                $("#valAMSemail").show();
                response = 0;
            }
            //if (mobno == '') {
            //    $("#reqAMSMobno").show();
            //    response = 0;
            //}
            if (mobno != "" && mobno.length < 10) {
                $("#valAMSMobNo").show();
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
            var _rootUrl = $('#hdfRootUrl').val();
            var user = {
                name: $('#txtAMSName').val(),
                email: $('#txtAMSEmail').val(),
                phone: $('#txtAMSMobNo').val()
            }
            $.ajax({
                type: "POST",
                url: _rootUrl + "api/ContactUs/UpdateAMS",
                data: user,
                cache: false,
                //contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: success,
                failure: function (response) {
                    alert(response.d);
                }
            });
        }
        function success(response) {
            $("#divsuccessmessage").show();
            $('#btnAMS').button('reset');
            clear();
        }
    </script>
</asp:Content>
