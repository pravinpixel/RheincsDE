<%@ Page Title="Testverfahren |  RheinBrücke IT Consulting " Language="C#" MasterPageFile="~/Rheincs.Master" AutoEventWireup="true" CodeBehind="Testverfahren.aspx.cs" Inherits="RheinBrucke.Lösungen.ITServicesUndLösungen.Testverfahren" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headerPlaceHolder" runat="server">
    <meta name="keywords" content="testing services software testing services software black box testing white box testing testing center of excellence structural testing functional testing " />
    <meta name="Description" content="RheinBrücke has implemented a structured, business driven test management approach in which we deploy flexible and agile testing processes in tune with global standards and that are aligned to the diverse needs of your organization’s IT ecosystem." />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <input type="hidden" id="hdfRootUrl" value="<%=rootpath %>" />
    <div class="container" id="container-top">
        <div class="row">
            <ul class="breadcrumb bread hidden-xs hidden-sm">
                <li><a href="#" class="redColor">Home <span>» </span></a></li>
                 <li ><a href="#" class="redColor">Lösungen<span> » </span></a></li>
                <li><a href="#" class="redColor">IT-Services Und -Lösungen<span> » </span></a></li>
                <li><a href="#" class="redColor">Testverfahren</a></li>
            </ul>
        </div>
        <div class="row">
            <div class="bg-testing img-responsive ">
                <h2 class="rhein-banner-heading-h2 inner-banner-text1 img-bottom">RheinBrücke</h2>
                <p class="rhein-banner-heading-p inner-banner-text1 ">Hilft Ihnen die Vision Ihrer Organisation in Hinsicht auf Zukunftssicherheit bei der IT Architektur, Skalierbarkeit und Benutzerfreundlichkeit umzusetzen.</p>
            </div>
        </div>
        <div class="wrappernew main-container">
            <h1 class="redColor heading-sharepoint">Testverfahren</h1><br />
        
            <p class="padd-bottom-10">Als Partner Ihres Unternehmens stellen wir Ihnen unsere Expertise im Umgang mit den Herausforderungen an Prozesse in modernen komplexen IT-Landschaften zur Verfügung. Wir unterstützen Unternehmen bei der Anwendung strenger Qualitätsmanagementmethoden zur Kostenoptimierung und Reduzierung der Time-to-Market für alle geschäftskritischen Projekte. Unsere Testverfahren basieren auf branchenindividuellen Best Practices und resultieren in Empfehlungen hinsichtlich der stetigen Verbesserung der Qualitätsmanagementstandards Ihres Unternehmens.</p>
            <p class="padd-bottom-10">Unser Testing Center of Excellence (TCoE) ist eine virtuelle Kommandozentrale, von der aus wir unseren strukturierten, firmenorientierten Testmanagementansatz anwenden. Unsere flexibel gestalteten Testverfahren können sowohl an globalen Standards als auch an den Bedürfnissen Ihres Unternehmens ausgerichtet werden.</p>
            <p class="padd-bottom-10">Das Spektrum an Testverfahren von RheinBrücke umfasst:</p>
       

        <div class=" col-md-12 epicorlist">
            <ul class="epicor-ul">
                <li>
                    <div class="redBullets-epicor"></div>
                    <p class="bulletContent-epicor-black ">Teststrategie</p>
                </li>
            </ul>

        </div>
        <br />
        <div class="col-md-12 epicorlist">
            <ul class="epicor-ul">
                <li>
                    <div class="redBullets-epicor"></div>
                    <p class="bulletContent-epicor-black ">Testmanagement</p>
                </li>
            </ul>

        </div>
        <br />
        <div class="col-md-12 epicorlist">
            <ul class="epicor-ul">
                <li>
                    <div class="redBullets-epicor"></div>
                    <p class="bulletContent-epicor-black ">Testdurchführung, und</p>
                </li>
            </ul>

        </div>
        <br />
        <div class="col-md-12 epicorlist">
            <ul class="epicor-ul">
                <li>
                    <div class="redBullets-epicor"></div>
                    <p class="bulletContent-epicor-black ">Testautomatisierung</p>
                </li>
            </ul>
        </div>
  <br />
            
            <p>Unsere Partnerunternehmen, die die Methodik des TCoE von RheinBrücke bereits anwenden, konnten nachhaltige Verbesserungen der Sicherheit, Qualität und Leistungsfähigkeit ihrer Applikationen verbuchen. Dies sind die drei wichtigsten Indikatoren für die Performance für voll funktionsfähige und marktreife Applikationen.</p>

            <p ><a data-toggle="modal" data-target="#myModal-contact" class="redColor ETAMS"><b><span class="bulcolor">Weitere Informationen zu unseren Wartungs- und Supportservices für Applikationen</span> finden Sie hier. </b></a></p>
            <div class="modal fade" id="myModal-contact" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content mymodal-download">
                        <div class="modal-header modal-header-bgcolor">
                                                <button type="button" class="close closev2" data-dismiss="modal" aria-label="Close" data-backdrop="false"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title redColor">Rheinbrücke Application Maintenance & Support Services -Dokument</h4>
                                            </div>
                        <div class="col-md-12 padd-top">
                            <div class="form-group">
                                <label class="success" id="successmessage"  hidden="hidden">Vielen Dank für die Übermittlung Ihrer Angaben . Sie werden in Kürze eine E-Mail mit einem Link zu Rheinbrücke Application Maintenance & Support Services -Dokument herunterladen können.</label>
                            </div>
                        </div>
                        <div class="modal-body">
                            <p class="formhead">Bitte füllen Sie Ihre Daten an Rheinbrücke Application Maintenance & Support Services -Dokument herunterzuladen.</p>
                            <p>
                                <input type="text" placeholder="*lhr Name" id="txtTestingName" class="write-to-us-input" /></p>
                            <span class="validator" id="reqTestingName" hidden="hidden">Überprüfen Sie Ihren Namen</span>
                        </div>
                        <div class="modal-body">
                            <p>
                                <input type="text" placeholder="*Ihre E-Mail-Addresse" id="txtTestingEmail" class="write-to-us-input" /></p>
                            <span class="validator" id="reqTestingemail" hidden="hidden">Überprüfen Sie Ihre E-Mail-Adresse</span>
                            <span class="validator" id="valTestingemail" hidden="hidden">Ungültige E-Mail-Adresse</span>
                        </div>
                         <div class="modal-body">
                            <p>
                                <input type="number" placeholder="*Ihre Mobile Number" id="txtTestingMobNo" class="write-to-us-input" />
                            </p>
                            <span class="validator" id="reqTestingMobNo" hidden="hidden">Überprüfen Sie Ihre Mobile Number</span>
                            <span class="validator" id="valTestingMobNo" hidden="hidden">Ungültige Mobile Number</span>
                        </div>
                        <div class="clearfix"></div>
                        <div class="modal-body">
                           <input type="button" id="btnTestingContactUs" class="submit-button" data-loading-text="Einreichen.." value="Senden" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="clearfix"></div>
    <!--text on bg-->
    <div class="container">
        <div class="row paddingGreycontainer bgpic">
            <div class="boldWhiteheading-testing padding-epicor">
                <h4 class="padd-bottom-10">WHITE BOX TESTING</h4><br/>

                <div class="row col-md-12 padding">
                    <div class="col-md-4">
                        <ul>
                            <li>
                                <div class="redBullets-epicor-onbg"></div>
                                <p class="bulletContent-epicor">API-Tests</p>
                            </li>
                        </ul>

                    </div>
                    <div class="col-md-4">
                        <ul>
                            <li>
                                <div class="redBullets-epicor-onbg"></div>
                                <p class="bulletContent-epicor">Testabdeckung</p>
                            </li>
                        </ul>

                    </div>
                    <div class="col-md-4">
                        <ul>
                            <li>
                                <div class="redBullets-epicor-onbg"></div>
                                <p class="bulletContent-epicor">Fault-Injection-Tests/p>
                            </li>
                        </ul>

                    </div>
                </div>
                <div class="row col-md-12 padding">
                    <div class="col-md-4">
                        <ul>
                            <li>
                                <div class="redBullets-epicor-onbg"></div>
                                <p class="bulletContent-epicor">Mutationstests</p>
                            </li>
                        </ul>

                    </div>
                    <div class="col-md-4">
                        <ul>
                            <li>
                                <div class="redBullets-epicor-onbg"></div>
                                <p class="bulletContent-epicor">Randbedingungstests, und</p>
                            </li>
                        </ul>

                    </div>
                    <div class="col-md-4">
                        <ul>
                            <li>
                                <div class="redBullets-epicor-onbg"></div>
                                <p class="bulletContent-epicor">Statiktests / Code-Walkthroughs-Tests</p>
                            </li>
                        </ul>

                    </div>


                </div>

                <h4 class="padd-bottom-10">BLACK BOX TESTING</h4><br />
                <div class="row col-md-12 padding">
                    <div class="col-md-4">
                        <ul>
                            <li>
                                <div class="redBullets-epicor-onbg"></div>
                                <p class="bulletContent-epicor">Plausibilitätsprüfungen (Sanity Testing)</p>
                            </li>
                        </ul>

                    </div>
                    <div class="col-md-4">
                        <ul>
                            <li>
                                <div class="redBullets-epicor-onbg"></div>
                                <p class="bulletContent-epicor">Funktionalitätsprüfungen</p>
                            </li>
                        </ul>

                    </div>
                    <div class="col-md-4">
                        <ul>
                            <li>
                                <div class="redBullets-epicor-onbg"></div>
                                <p class="bulletContent-epicor">Integrationstests</p>
                            </li>
                        </ul>

                    </div>


                </div>
                <div class="row col-md-12 padding">
                    <div class="col-md-4">
                        <ul>
                            <li>
                                <div class="redBullets-epicor-onbg"></div>
                                <p class="bulletContent-epicor">Regressionstests</p>
                            </li>
                        </ul>

                    </div>
                    <div class="col-md-4">
                        <ul>
                            <li>
                                <div class="redBullets-epicor-onbg"></div>
                                <p class="bulletContent-epicor">Stresstests, und</p>
                            </li>
                        </ul>

                    </div>
                    <div class="col-md-4">
                        <ul>
                            <li>
                                <div class="redBullets-epicor-onbg"></div>
                                <p class="bulletContent-epicor">Belastungs- und Leistungstests</p>
                            </li>
                        </ul>

                    </div>


                </div>

            </div>


        </div>
    </div>

    <!--Eof text on bg-->



    <div class="padd-top-20">
        <div class="bgcol paddingGreycontainer testing-grey-left">
            <p class="grey-text-testing marg20 padding">AUTOMATION TOOLS</p>


            <div class="row padding col-md-12 ">
                <div class="col-md-3">
                    <img src="../../../Assets/images/visual-studio-team-member.jpg" class="img-responsive center-block logo-align" alt="Visual Studio Team Member" />

                </div>
                <div class="col-md-3">
                    <img src="../../../Assets/images/Open-STA.jpg" class="img-responsive center-block logo-align" alt="OpenSTA" />
                </div>
                <div class="col-md-3">
                    <img src="../../../Assets/images/Se.jpg" class="img-responsive center-block logo-align" alt="Se" />
                </div>
                <div class="col-md-3">
                    <img src="../../../Assets/images/Acunetix.jpg" class="img-responsive center-block logo-align" alt="Acunetix" />
                </div>
            </div>
            <div class="row padding col-md-12 ">
                <div class="col-md-3">

                    <img src="../../../Assets/images/Bugzilla.jpg" class="img-responsive center-block logo-align" alt="Bugzilla" />
                </div>
                <div class="col-md-3">
                    <img src="../../../Assets/images/Bug-Tracker.jpg" class="img-responsive center-block logo-align" alt="BugTracker" />
                </div>
                <div class="col-md-3">
                    <img src="../../../Assets/images/JMeter.jpg" class="img-responsive center-block logo-align" alt="JMeter" />
                </div>
                <div class="col-md-3">
                    <img src="../../../Assets/images/QTP.jpg" class="img-responsive center-block logo-align" alt="QTP" />
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix">&nbsp;</div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterScript" runat="server">
    <script>
        $(document).ready(function () {
            $('#btnTestingContactUs').click(function () {
                var r = TestingContactUsValidation();
                if (r == 1) {
                    $(this).button('loading');
                    save();
                }
            });
        });
        function clear() {
            $("#reqTestingName,#reqTestingMobNo").hide();
            $("#reqTestingemail").hide();
            $("#valTestingemail,#valTestingMobNo").hide();
            $("#txtTestingName").val('');
            $("#txtTestingEmail,#txtTestingMobNo").val('');
        }
        function TestingContactUsValidation() {
            var name = $('#txtTestingName').val();
            var email = $('#txtTestingEmail').val();
            var mobno = $('#txtTestingMobNo').val();
            var response = 1;

            $("#reqTestingName,#reqTestingMobNo").hide();
            $("#reqTestingemail").hide();
            $("#reqTestingMessage").hide();
            $("#valTestingemail,#valTestingMobNo").hide();

            if ($.trim(name) == '') {
                $("#reqTestingName").show();
                response = 0;
            }
            if (email == '') {
                $("#reqTestingemail").show();
                response = 0;
            }
            else {
                if (!IsEmail(email)) {
                    $("#valTestingemail").show();
                    response = 0;
                }
            }
            if (mobno == '') {
                $("#reqTestingMobNo").show();
                response = 0;
            }
            if (mobno != '' && mobno.length < 10) {
                $("#valTestingMobNo").show();
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
            var _rootUrl = $("#hdfRootUrl").val();
            var user = {
                name: $('#txtTestingName').val(),
                email: $('#txtTestingEmail').val(),
                phone: $('#txtTestingMobNo').val()
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
            $("#successmessage").show();
            $('#btnTestingContactUs').button('reset');
            clear();
        }

        function testingclear() {
            clear(); $("#successmessage").hide();
        }
    </script>
</asp:Content>