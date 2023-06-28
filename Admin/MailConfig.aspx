<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="MailConfig.aspx.cs" Inherits="RheinBrucke.Admin.MailConfig" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headerPlaceHolder" runat="server">
    <meta name="google-site-verification" content="wupPtb2f4IkwIZlJw_WfkxpZCBAcL70quHa_rVemK0U" />
    <meta name="keywords" content="SAP, Microsoft, SharePoint, EPICOR, SAP Implementation, SAP Support, Microsoft BI, Microsoft Gold Partner, SAP Consulting, SharePoint Consulting, ERP Consulting, Enterprise IT services, Technology consulting services, IT solutions" />
    <meta name="Description" content="RheinBrücke is an IT Consulting company that offers best in class service offered at globally competitive cost models. Our services and solutions include Program and Project Management, ERP Solutions aligned to SAP, Microsoft SharePoint, EPICOR and Open Source Technology Solutions." />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script src="Assets/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var _rootUrl = $("#hdfRootUrl").val();
            $('#btnSave').click(function () {
                if (!IsEmail($('#txtLoginName').val())) {
                    alert("Ensure valid job mail address!."); $('#txtLoginName').focus(); return false;
                }
                if (!IsEmail($('#txtConatctMailId').val())) {
                    alert("Ensure valid contact mail address!."); $('#txtConatctMailId').focus(); return false;
                }
                if (!IsEmail($('#txtJobMailid').val())) {
                    alert("Ensure valid job mail address!."); $('#txtJobMailid').focus(); return false;
                }
                if (!IsEmail($('#txtLandingPageMailid').val())) {
                    alert("Ensure valid landing page mail address!."); $('#txtLandingPageMailid').focus(); return false;
                }
                //txtLandingPageMailid
                var user = {
                    LoginName: $('#txtLoginName').val(),
                    Password: $('#txtPassword').val(),
                    Port: $('#txtPort').val(),
                    CustomSMTP: $('#txtSMTP').val(),
                    EnableSSL: $('#chkEnableSSl').prop('checked'),
                    Relay: $('#chkRelay').prop('checked'),
                    ContactUsMailId: $('#txtConatctMailId').val(),
                    JobMailId: $('#txtJobMailid').val(),
                    LandingMailId: $('#txtLandingPageMailid').val()
                }
                $.ajax({
                    type: "POST",
                    url: _rootUrl + "api/Admin/SaveMailConfig",
                    data: JSON.stringify(user),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        $("#txtLoginName").val(response.LoginName);
                        $("#txtPassword").val(response.Password);
                        $("#txtPort").val(response.Port);
                        $("#txtSMTP").val(response.CustomSMTP);
                        $('#txtConatctMailId').val(response.ContactUsMailId);
                        $('#txtJobMailid').val(response.JobMailId);
                        if (response.Relay == true) {
                            $('#chkRelay').prop('checked', true);
                        }
                        if (response.EnableSSL == true) {
                            $('#chkEnableSSl').prop('checked', true);
                        }
                        $('#txtLandingPageMailid').val(response.LandingMailId);
                        alert("Mail config saved successfully!.")
                    }
                });
            });

            function fnGetMailSettings() {
                $.ajax({
                    type: "POST",
                    url: _rootUrl + "api/Admin/GetMailConfig",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        $("#txtLoginName").val(response.LoginName);
                        $("#txtPassword").val(response.Password);
                        $("#txtPort").val(response.Port);
                        $("#txtSMTP").val(response.CustomSMTP);
                        $('#txtConatctMailId').val(response.ContactUsMailId);
                        $('#txtJobMailid').val(response.JobMailId);
                        if (response.Relay == true) {
                            $('#chkRelay').prop('checked', true);
                        }
                        if (response.EnableSSL == true) {
                            $('#chkEnableSSl').prop('checked', true);
                        }
                        $('#txtLandingPageMailid').val(response.LandingMailId);
                    }
                });
            }
            fnGetMailSettings();
        });
        function IsEmail(email) {
            if (email == '') {
                return true;
            }
            var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            return regex.test(email);
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <input type="hidden" id="hdfRootUrl" value="<%=rootpath %>" />
    <div class="container" id="container-top" style="padding-top: 12px">
        <div class="row">
            <h5 class="deco-header" style="margin-left: 20px">
                <span class="redBottom">Mail Config</span>
            </h5>
        </div>
        <br />
        <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
            <div class="row">
                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                    <span>Job Mail From</span>
                </div>
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <input type="text" id="txtLoginName" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                    <span>Job Mail Password</span>
                </div>
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <input type="password" id="txtPassword" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                    <span>Port</span>
                </div>
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <input type="text" id="txtPort" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                    <span>SMTP</span>
                </div>
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <input type="text" id="txtSMTP" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                    <span>Enable SSl</span>
                </div>
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <input type="checkbox" id="chkEnableSSl" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                    <span>Relay</span>
                </div>
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <input type="checkbox" id="chkRelay" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                    <span>Conatct Us Mailid</span>
                </div>
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <input type="text" id="txtConatctMailId" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                    <span>Job Request Send MailId</span>
                </div>
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <input type="text" id="txtJobMailid" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                    <span>Landing Page MailId</span>
                </div>
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <input type="text" id="txtLandingPageMailid" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
                </div>
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <input type="button" id="btnSave" class="submit-button" value="Save" />
                </div>
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
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterScript" runat="server">
</asp:Content>
