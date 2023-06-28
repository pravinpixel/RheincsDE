<%@ Page Title="EpicPay | RheinBrücke IT Consulting" Language="C#" MasterPageFile="~/Rheincs.Master" AutoEventWireup="true" CodeBehind="EpicPay.aspx.cs" Inherits="RheinBrucke.Lösungen.EnterpriseSolutionsUndServices.EPICOR.PreconfiguredSolutions.EpicPay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headerPlaceHolder" runat="server">
    <meta name="keywords" content="ERP, Human resources, ERP Software, ERP System, Epicor, Consulting, HR Software, HR solutions, Payroll processing, Payroll, Payroll processing Software" />
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <input type="hidden" id="hdfRootUrl" value="<%=rootpath %>" />
    <div class="container" id="container-top">
        <div class="row">

             <ul class="breadcrumb bread hidden-xs hidden-sm">
                <li><a href="../../../../Home" class="redColor">Home <span> » </span></a></li>
                 <li><a href="#" class="redColor">Lösungen<span> » </span></a></li>
                <li><a href="#" class="redColor">Enterprise Solutions (ERP) & Services<span> » </span></a></li>
                <li><a href="/Lösungen/erp-enterprise-solutions-und-services/epicor" class="redColor">EPICOR</a><span> » </span></li>
                  <li><a href="Lösungen/erp-Enterprise-Solutions-Und-Services/epicor/Epicor-Vorkonfigurierte-Lösungen" class="redColor"> EPICOR – Vorkonfigurierte-Lösungen</a><span> » </span></li>
                <li><a href="#" class="redColor">EpicPay</a></li>
            </ul>
        </div>
        <!--banner-->
        <div class="row">

            <div class="bg-img-epicpay img-responsive">
                <h2 class="rhein-banner-heading-h2 inner-banner-text1 img-bottom"></h2>
                <p class="rhein-banner-heading-p inner-banner-text1 "></p>
            </div>
        </div>
        <!--efo banner-->
        <!-- Content-->
        <div class="wrappernew main-container">
            <div class="col-md-12 nopadding">
                <div class="col-md-9 nopadding"><h1 class="redColor">EpicPay – Payroll solution for Epicor</h1></div>
            
            <div class="col-md-3 download-epicpay"><a data-toggle="modal" data-target="#myModal-download">Download EpicPay Brochure</a></div>
                </div>
            <div class="clearfix"></div>
            <div class="modal fade" id="myModal-download" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content mymodal-download">
                        <div class="modal-header modal-header-bgcolor">
                                                <button type="button" class="close closev2" data-dismiss="modal" aria-label="Close" data-backdrop="false"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title redColor">EpicPay Broschüre</h4>
                                            </div>
                        <div class="col-md-12 padd-top">
                            <div class="form-group">
                                <label class="success" id="successmessage" hidden="hidden">Vielen Dank für die Übermittlung Ihrer Angaben . Sie werden in Kürze eine E-Mail mit einem Link zu EpicPay Broschüre herunterladen können.</label>
                            </div>
                        </div>
                        <div class="modal-body">
                            <p class="formhead">Bitte füllen Sie Ihre Daten an EpicPay Broschüre downloaden</p>
                            <p>
                                <input type="text" placeholder="*lhr Name" id="txtEpicName" class="write-to-us-input" /></p>
                            <span class="validator" id="reqEpicName" hidden="hidden">Überprüfen Sie Ihren Namen</span>
                        </div>
                        <div class="modal-body">
                            <p>
                                <input type="text" placeholder="*Ihre E-Mail-Addresse" id="txtEpicemail" class="write-to-us-input" /></p>
                            <span class="validator" id="reqEpicemail" hidden="hidden">Überprüfen Sie Ihre E-Mail-Adresse</span>
                            <span class="validator" id="valEpicemail" hidden="hidden">Ungültige E-Mail-Adresse</span>
                        </div>
                        <div class="modal-body">
                            <p>
                                <input type="text" placeholder="*Ihre Mobile Number" id="txtEpicMobileNo" class="write-to-us-input" /></p>
                            <span class="validator" id="reqEpicmobno" hidden="hidden">Überprüfen Sie Ihre Mobile Number</span>
                            <span class="validator" id="valEpicmobnol" hidden="hidden">Ungültige Mobile Number</span>
                        </div>
                        <div class="clearfix"></div>
                        <div class="modal-body">
                            <input type="button" id="btnEpicContactUs" class="submit-button" data-loading-text="Einreichen.." value="Senden" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix">&nbsp;</div>
            <p><b>What is EpicPay?</b></p>

            <p>EpicPay ist eine intelligente Lösung für Gehaltsabrechnung konzipiert von RheinBrücke . Unsere Lösungen sind auf der Epicor ICE platform  aufgebaut. Sie erhalten Mitarbeiterinformationen, die mit existierenden Epicor ERP Benutzern verknüpft werden können. </p>

            <p>Die Lösung  hat die Fähigkeit mehrere Gehaltsabrechnungsklassen wie Gehaltsempfänger, Leiharbeiter, Berater usw. zu verwalten und diese im Mitarbeitermodul abzubilden.</p>

            <p>Eine der Hauptvorteile unserer Lösung ist das Zeiterfassungs-Modul, das länderübergreifende Stundennachweise ermöglicht, um verschiedene Arbeitszeitstandards in unterschiedlichen Länderzentralen zu reflektieren.</p>

            <p>Die Lösung bezieht Abrechnungsstunden von Zeit- und Speseneintragungen aus dem Auftragsmanagement und beinhaltet mehrere Abzüge wie Unterstützungskasse, Ruhegeld usw.</p>

            <p>EpicPay has the ability to classify worked hours on the basis of regular hours, overtime (OT) hours and holiday OT hours for automatic computation of regular pay, Normal OT and Holiday OT.</p>

            <p>Die Lösung kommt mit der Fähigkeit neue Elemente der Vergütungsstruktur wie Grundlohn, Mietzulage, Zulage für Betriebskostsen usw. zu erstellen und der Möglichkeit eine neue Vergütungsstruktur für jeden Arbeitnehmer zu definieren.</p>
            
            </div>
         <div class="wrappernewbullet main-container">
             <p><b>Hauptmerkmale der Lösung:</b></p>
             <br />
            <div class="col-md-12 epicorlist">
                <ul class="epicor-ul">
                    <li>
                        <div class="redBullets-pre"></div>
                        <p class="bulletContent-pre">Flexibel und reaktionsschnell</p>
                    </li>
                </ul>
            </div>
            <div class="col-md-12 epicorlist">
                <ul class="epicor-ul">
                    <li>
                        <div class="redBullets-pre"></div>
                        <p class="bulletContent-pre">Erstellt Gehaltsabrechnung  für mehrere Unternehmen und Standorte.</p>
                    </li>
                </ul>
            </div>
            <div class="col-md-12 epicorlist">
                <ul class="epicor-ul">
                    <li>
                        <div class="redBullets-pre"></div>
                        <p class="bulletContent-pre">Hohes Sicherheitsniveau</p>
                    </li>
                </ul>
            </div>
            <div class="col-md-12 epicorlist">
                <ul class="epicor-ul">
                    <li>
                        <div class="redBullets-pre"></div>
                        <p class="bulletContent-pre">Erfüllt lokale Gesetze</p>
                    </li>
                </ul>
            </div>
            <div class="col-md-12 epicorlist">
                <ul class="epicor-ul">
                    <li>
                        <div class="redBullets-pre"></div>
                        <p class="bulletContent-pre">Integration mit dem Hauptbuch</p>
                    </li>
                </ul>
            </div>
            <div class="col-md-12 epicorlist">
                <ul class="epicor-ul">
                    <li>
                        <div class="redBullets-pre"></div>
                        <p class="bulletContent-pre">Berechnet Gehalt, Abzüge, Steuern, Erhöhungen usw.</p>
                    </li>
                </ul>
            </div>
             </div>
            <div class="clearfix"></div>
          <div class="wrappernew main-container">

            <p><b>Wer soll Epic Pay einsetzen?</b></p>
            <p>Wir empfehlen EpicPay für bereits bestehenden Epicor Kunden und Anwendern. Das Software-Modul von EpicPay ist ein einfaches Gehaltsabrechnungssystem, das den Anforderungen der Personalabteilung gerecht wird. Und dies unabhängig davon, ob Sie einen Einzelbetrieb oder einen Betrieb mit mehreren Standorten und in verschiedenen Ländern führen. EpicPay Gehaltsabrechnungs-Software kann Ihre Anforderung im Tagesgeschäft und im Berichtswesen erfüllen.</p>
            <div class="col-md-3 download-epicpay pull-right"><a data-toggle="modal" data-target="#myModal-download">Download EpicPay Brochure</a></div>
            <div class="clearfix">&nbsp;</div>
            <div class="clearfix">&nbsp;</div>
        </div>
            
        <!--content-->
    </div>
    <!--container-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterScript" runat="server">
 <script>
        $(document).ready(function () {
            $('#btnEpicContactUs').click(function () {
                var r = EpicContactUsValidation();
                if (r == 1) {
                    $(this).button('loading');
                    save();
                }

            });
        });
        function clear() {
            $("#reqEpicName").hide();
            $("#reqEpicemail,#reqEpicmobno").hide();
            $("#valEpicemail,#valEpicmobnol").hide();
            $("#txtEpicName").val('');
            $("#txtEpicemail").val('');
            $("#txtEpicMobileNo").val('');
        }
        function EpicContactUsValidation() {
            var name = $('#txtEpicName').val();
            var email = $('#txtEpicemail').val();
            var mobnno = $('#txtEpicMobileNo').val();
            var response = 1;

            $("#reqEpicName,#reqEpicmobno").hide();
            $("#reqEpicemail").hide();
            $("#reqEpicMessage").hide();
            $("#valEpicemail,#valEpicmobnol").hide();

            if (name == '') {
                $("#reqEpicName").show();
                response = 0;
            }
            if (email == '') {
                $("#reqEpicemail").show();
                response = 0;
            }
            else {
                if (!IsEmail(email)) {
                    $("#valEpicemail").show();
                    response = 0;
                }
            }
            if (mobnno == '') {
                $('#reqEpicmobno').show();
                response = 0;
            }
            if (mobnno != "" && mobnno.length < 10) {
                $('#valEpicmobnol').show();
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
            debugger;
            var _rootUrl = $('#hdfRootUrl').val();
            var data = {
                name: $('#txtEpicName').val(),
                email: $('#txtEpicemail').val(),
                phone: $('#txtEpicMobileNo').val()
            }
            $.ajax({
                type: "POST",
                url: _rootUrl + "api/ContactUs/UpdateEpicPay",
                data: data,
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
            debugger;
            $("#successmessage").show();
            $('#btnEpicContactUs').button('reset');
            clear();
        }

        function Epicpayclear() {
            $("#successmessage").hide();
            clear();
        }
    </script>
    </asp:Content>

