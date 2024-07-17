<%@ Page Title="Kontakt | RheinBrücke IT Consulting" Language="C#" MasterPageFile="~/Rheincs.Master" AutoEventWireup="true" CodeBehind="Kontakt.aspx.cs" Inherits="RheinBrucke.Kontakt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headerPlaceHolder" runat="server">
    <meta name="keywords" content="RheinBrücke Contact RheinBrücke IT Consulting Services" />
    <meta name="Description" content="Contact RheinBrücke for our IT consulting services and technology solutions including Program and Project Management, ERP Solutions aligned to SAP, Microsoft SharePoint and EPICOR and Open Source Technology platforms." />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <style>
            .bulletContent
        {
            font-size:14px !important;
        }
        .validator
        {
            margin-top:0px;
        }
        .submit-button
        {
            margin-top:10px;
        }
    </style>
     <input type="hidden" id="hdfRootUrl" value="<%=rootpath %>" />
    
    <%-- Container Starts Here --%>
    <div class="container" id="container-top">
        <!--banner-->
         <div class="row">
            <ul class="breadcrumb bread hidden-xs hidden-sm">
                <li><a href="Home" class="redColor">Home <span> » </span></a></li>
                
                <li><a href="#" class="redColor">Kontakt</a></li>
            </ul>
        </div>
        <div class="row">

            <div class="bg-img-contactus img-responsive ">
                <h2 class="rhein-banner-heading-h2 inner-banner-text1 img-bottom">RheinBrücke</h2>
                <p class="rhein-banner-heading-p inner-banner-text1 ">Kontakt</p>
            </div>

        </div>
        <!--efo banner-->
        <!-- Content-->
        <div class="wrappernew main-container">
            <p>Wir bedanken uns für Ihr Interesse an RheinBruecke.</p>
            <p>Gerne können Sie Kontakt mit uns aufnehmen.</p>
            <p>Unsere Ansprechpartner vor Ort oder weltweit helfen Ihnen gerne bei sämtlichen Fragen weiter.</p>
            <div class="clearfix">&nbsp;</div>
            <div class="col-md-12 hidden-lg hidden-md">
                <img src="Assets/images/world-map-bg-mobile.jpg" alt="RheinBrücke Locations" class="center-block img-responsive" /></div>
             <div class="col-md-12 hidden-lg hidden-sm hidden-xs">
                <img src="Assets/images/Rheinbrucke-map-location.jpg" alt="RheinBrücke Locations" class="center-block img-responsive" /></div>
            <div class="col-md-12 hidden-xs hidden-sm hidden-md">
                <iframe src="Assets/location-map/index.html" width="100%" height="500px" frameborder="0" scrolling="no"></iframe>
            </div>
            <div class="clearfix">&nbsp;</div>
            <!--locations-->
            <div class="col-md-12 padd-left">
                <div class="row col-md-12 ">

                    <div class="col-md-4">
                        <ul>
                            <li>
                                <div class="contactus-map-icon">
                                    <img src="Assets/images/location-icon.png" class="img-responsive" alt="Location Indiactor" /></div>
                                <span class="redColor bulletContent">Niederlande
                                </span>
                                <p class="bulletContent">
                                    RheinBrücke IT Consulting BV,<br />
                                    Stationsplein<br />
                                    8K NL-6221BT,<br />
                                    Maastricht, Netherlands<br />
                                    Tel: +31 (0) 43 799 9102<br />
                                    Fax: +31 (0) 43 799 9333<br />
                                    Email: <a href="mailto:info@rheincs.com">info@rheincs.com</a>
                                </p>
                            </li>
                        </ul>

                    </div>
                    <div class="col-md-4">
                        <ul>
                            <li>
                                <div class="contactus-map-icon">
                                    <img src="Assets/images/location-icon.png" class="img-responsive" alt="Location Indiactor" /></div>
                                <span class="redColor bulletContent">Deutschland    
                                </span>
                                <%--<p class="bulletContent">
                                    RheinBrücke IT Consulting GmbH,<br />
                                    Kranhaus 1, Im Zollhafen 18<br />
                                    50678 Köln, Germany<br />
                                    Tel: +49 (0) 221 650 60 608<br />
                                    Fax: +49 (0) 221 650 60 500<br />
                                    Email: <a href="mailto:info@rheincs.com">info@rheincs.com</a>
                                </p>--%>
                                <p class="bulletContent">
                                    RheinBrücke IT Consulting GmbH,<br />
                                    44139 Dortmund,<br />
                                    Ruhrallee 9,<br />
                                    Germany<br />
                                    Tel: +49 231 292 95619<br />
                                    Fax: +49 (0) 221 650 60 500<br />
                                    Email: <a href="mailto:info@rheincs.com">info@rheincs.com</a>
                                </p>
                            </li>
                        </ul>

                    </div>
                    <div class="col-md-4">
                        <ul>
                            <li>
                                <div class="contactus-map-icon">
                                    <img src="Assets/images/location-icon.png" class="img-responsive" alt="Location Indiactor" /></div>
                                <span class="redColor bulletContent">USA
                                </span>
                                <p class="bulletContent">
                                    RheinBrücke IT Consulting,<br />
                                    3815 Chippenham Road,<br />
                                    Mechanicsburg,<br />
                                    PA 17050, United States<br />
                                    Tel: +1 717 265 3937<br />
                                    Email: <a href="mailto:info@rheincs.com">info@rheincs.com</a>
                                </p>
                            </li>
                        </ul>

                    </div>
                    
 


                </div>
                <div class="row col-md-12 ">
                    <div class="col-md-4">
                        <ul>
                            <li>
                                <div class="contactus-map-icon">
                                    <img src="Assets/images/location-icon.png" class="img-responsive" alt="Location Indiactor" /></div>
                                <span class="redColor bulletContent">Indien
                                </span>
                                <p class="bulletContent">
                                    RheinBrücke IT Consulting Pvt Ltd,<br />
                                    No. 45, 5th Cross Street,<br />
                                    Kalaimagal Nagar,<br />
                                    Ekkatuthangal, Chennai,<br />
                                    Tamil Nadu, India 600 032<br />
                                    Tel: +91 44 6671 7555<br />
                                   
                                    Email: <a href="mailto:info@rheincs.com">info@rheincs.com</a>
                                </p>
                            </li>
                        </ul>

                    </div>
                    <div class="col-md-4">
                        <ul>
                            <li>
                                <div class="contactus-map-icon">
                                    <img src="Assets/images/location-icon.png" class="img-responsive" alt="Location Indiactor" /></div>
                                <span class="redColor bulletContent">UAE- Office 1
                                </span>
                                <p class="bulletContent">
                                    RheinBrücke Middle East IT Infrastructure LLC,<br />
                                    PO Box 450471,<br />
                                    Office #4701- 10,<br />
                                    Aspin Commercial Towers<br />
                                    Shaikh Zayed Road, Dubai<br />
                                    United Arab Emirates<br />
                                    Tel: +9714 388 8247<br />
                                    Email: <a href="mailto:info@rheincs.com">info@rheincs.com</a>
                                </p>
                            </li>
                        </ul>

                    </div>
                    
                  <div class="col-md-4">
                        <ul>
                            <li>
                                <div class="contactus-map-icon">
                                    <img src="Assets/images/location-icon.png" class="img-responsive" alt="Location Indiactor" />
                                </div>
                                <span class="redColor bulletContent">UAE- Office 2
                                </span>
                                <p class="bulletContent">
                                   RheinBrücke IT Consulting EMEA FZCO,<br />
                                    2-234-235 – Techno Hub 2,<br />
                                    P.O Box : 342060<br />
                                    Dubai Silicon Oasis, Dubai<br />
                                    United Arab Emirates<br />
                                    Tel: +971 43 330 366<br />
                                    Email: <a href="mailto:info@rheincs.com">info@rheincs.com</a>
                                </p>
                            </li>
                        </ul>

                    </div>
                    

                </div>
                 <div class="row col-md-12">
                     <div class="col-md-4">
                        <ul>
                            <li>
                                <div class="contactus-map-icon">
                                    <img src="Assets/images/location-icon.png" class="img-responsive" alt="Location Indiactor" /></div>
                                <span class="redColor bulletContent">UAE- Office 3 
                                </span>
                                <p class="bulletContent">
                                    RheinBrücke IT Consulting DMCC,<br />
                                    Unit No. 30-01-949,<br />
                                    Floor No. 1, Bldg No. 3,<br />
                                    Plot No. 550-554<br />
                                    J&G, DMCC, Dubai<br />
                                    United Arab Emirates<br />
                                    Tel: +971 52 639 6201<br />
                                    Email: <a href="mailto:info@rheincs.com">info@rheincs.com</a>
                                </p>
                            </li>
                        </ul>

                    </div>
                     </div>
            </div>
            <!--locations-->
            <!--FORM-->
            <div class="col-md-12">
                <h5 class="deco-header">
                    <span class="redBottom">WRITE TO US</span></h5>
                    <div class="col-md-12 padd-top">
                            <div class="form-group">
                                <label class="success" id="successmessage"  hidden="hidden">Wir danken Ihnen für Rheinbrücke . Wir werden in Kürze mit Ihnen in Verbindung .</label>
                            </div>
                        </div>
                    <div class="col-md-4 nopadding">
                        <div class="col-md-12">
                        <select id="DDLServices" class="dropdown" name="select-services" style="width: 100%; padding: 6px;">
                            <option value="0">-- Select Any One --</option>
                            <option value="Epicor">Epicor</option>
                            <option value="SAP">SAP</option>
                            <option value="Epicor HCM">Epicor HCM</option>
                            <option value="Epicpay Product">Epicor Payroll MEA</option>
                            <option value="CCT">CCT (Copy Company Tool)</option>
                            <option value="Sharepoint">SharePoint</option>
                            <option value="Microsoft Technologies">Microsoft Technologies - .Net & SQL Server</option>
                        </select>
                        <span class="validator" id="reqDDlservices" hidden="hidden">Select the Services</span>
                    </div>
                        <div class="clearfix">&nbsp;</div>
                        <div class="col-md-12">
                            <input type="text" placeholder="*lhr Name" name="name" id="txtContactName" class="write-to-us-input" />
                            <span class="validator" id="reqContactName" hidden="hidden">Überprüfen Sie Ihren Namen</span>
                        </div>
                        <div class="clearfix">&nbsp;</div>
                        <div class="col-md-12">
                            <input type="text" placeholder="*Ihre E-Mail-Addresse" name="email-address" id="txtContactemail" class="write-to-us-input" />
                             <span class="validator" id="reqContactemail" hidden="hidden">Überprüfen Sie Ihre E-Mail-Adresse</span>
                            <span class="validator" id="valContactemail" hidden="hidden">Ungültige E-Mail-Adresse</span>
                        </div>
                          <div class="clearfix">&nbsp;</div>
                    <div class="col-md-12">
                        <input type="text" placeholder="*Ihre Mobile Number" name="mobile-number" id="txtmobileno" class="write-to-us-input" />
                        <span style="margin-top: 5px;" class="validator" id="reqmobileno" hidden="hidden">Überprüfen Sie Ihre Mobile Number</span>
                        <span style="margin-top: 5px;" class="validator" id="Validationmobileno" hidden="hidden">Ungültige phone number</span>
                    </div>
                    </div>
                    <div class="col-md-4">
                        
                        <textarea cols="45" rows="5" style="height: 222px;" placeholder="*Ihre Nachricht" name="message" id="txtContactMessage" class="write-to-us-input"></textarea>
                         <span class="validator" id="reqContactMessage" hidden="hidden">Überprüfen Sie Ihre Nachricht</span>
                    </div>
                    <div class="clearfix">&nbsp;</div>
                    <div class="col-md-12">
                           <input type="button" id="btnContact" class="submit-button" data-loading-text="Einreichen.." value="Senden" />
                       </div>
            </div>
            <!--FORM-->
        </div>
        <!--content-->
        <div class="clearfix">&nbsp;</div>
        <div class="clearfix">&nbsp;</div>
    </div>
    <!--Container-->
    <%-- Container Ends Here --%>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterScript" runat="server">
    <script>
        $(document).ready(function () {
            $('#btnContact').click(function () {
                var r = ContactUsValidation1();
                if (r == 1) {
                    $(this).button('loading');
                    saveContact();
                    onFormSubmit();
                }
            });
        });

        function clear() {
            $("#reqContactName").hide();
            $("#reqContactemail,#reqmobileno").hide();
            $("#reqContactMessage,#reqDDlservices").hide();
            $("#valContactemail,#Validationmobileno").hide();
            $("#txtContactName,#txtmobileno").val('');
            $("#txtContactemail").val('');
            $("#txtContactMessage").val(''); $('#DDLServices').val('0');
        }
        function ContactUsValidation1() {
            var name = $('#txtContactName').val();
            var email = $('#txtContactemail').val();
            var message = $('#txtContactMessage').val();
            var services = $('#DDLServices').val();
            var mobileno = $('#txtmobileno').val();
            var response = 1;
            $("#valContactemail,#reqmobileno,#Validationmobileno").hide();
            $("#reqDDlservices").hide();
            $("#reqContactName").hide();
            $("#reqContactemail").hide();
            $("#reqContactMessage").hide();
            $("#valContactemail").hide();
            if (services == '0' || services == '') {
                $("#reqDDlservices").show();
                response = 0;
            }
            if ($.trim(name) == '') {
                $("#reqContactName").show();
                response = 0;
            }
            if (email == '') {
                $("#reqContactemail").show();
                response = 0;
            }
            else {
                if (!IsEmail(email)) {
                    $("#valContactemail").show();
                    response = 0;
                }
            }
            //if (mobileno == '') {
            //    $("#reqmobileno").show();
            //    response = 0;
            //}
            if (mobileno != "" && mobileno.length < 10) {
                $("#Validationmobileno").show();
                response = 0;
            }
            if (message == '') {
                $("#reqContactMessage").show();
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

        function saveContact() {
            debugger;
            var _rootUrl = $("#hdfRootUrl").val();
            var _mailList = {
                name: $('#txtContactName').val(),
                email: $('#txtContactemail').val(),
                message: $('#txtContactMessage').val(),
                phone: $('#txtmobileno').val(),
                Services: $('#DDLServices option:selected').text()
            };
            $.ajax({
                type: "POST",
                url: "/" + "api/ContactUs/UpdateContactUs",
                data: _mailList,
                //contentType: "application/json; charset=utf-8",
                cache: false,
                dataType: "json",
                success: success,
                failure: function (response) {
                    alert(response.d);
                }
            });
        }
        function success(response) {
            $("#successmessage").show();
            $('#btnContact').button('reset');
            //clear();
            setTimeout(function () { $("#successmessage").hide(); }, 4000);
        }
    </script>

     <script type="text/javascript" src="https://web.mxradon.com/t/FormTracker.js"></script>

                    <script type="text/javascript">
                            

			
                        function onFormSubmit() {

			var checks = new Array();

                           


                            var fieldMapping = {
                                MXHOrgCode: "17537",
                                MXHLandingPageId: "fdd83aa5-1f68-11e7-a02b-22000b10e324",
                                MXHAsc: "",

				

                                FirstName: "name",
									  EmailAddress: "email-address",
                                  Phone: "mobile-number",
                                 mx_Your_Message:"message",
                               mx_Contactus_dropdown: "select-services",
                               


                            };

                            var onSuccess = function (data) {                   
                                data = $.parseJSON(data)
                                var logData = {
                                    Name: $('#txtContactName').val(),
                                    FormPID: data.PId,
                                    Email: $('#txtContactemail').val(),
                                    Mobile: $('#txtmobileno').val(),
                                    FormStatus: data.Status,
                                    FormMsg: data.Message,
                                    FormAction: data.FormAction,
                                    ServiceType: "Kontakt"
                                }
                                $.ajax({
                                    type: "POST",
                                    url: "/" + "api/Admin/LeadSquaredLog",
                                    data: logData,
                                    cache: false,
                                    //contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    failure: function (response) {
                                        alert(response.d);
                                    }

                                });
                                clear();
                            console.log(data);
					
	
                            }

                            var onError = function (data) {                 
                                data = $.parseJSON(data)
                                var logData = {
                                    Name: $('#txtContactName').val(),
                                    FormPID: data.PId,
                                    Email: $('#txtContactemail').val(),
                                    Mobile: $('#txtmobileno').val(),
                                    FormStatus: data.Status,
                                    FormMsg: data.Message,
                                    FormAction: data.FormAction,
                                    ServiceType: "Contact Us"
                                }
                                $.ajax({
                                    type: "POST",
                                    url: "/" + "api/Admin/LeadSquaredLog",
                                    data: logData,
                                    cache: false,
                                    //contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    failure: function (response) {
                                        alert(response.d);
                                    }

                                });
                                clear();
                            console.log(data);

                            }



                            new LSQForm().captureLead(fieldMapping, "form1",

                            {

                            onSuccess: onSuccess,   //optional
                            onError: onError,       //optional

                            });
			
				

};

                        
                    </script>

</asp:Content>
