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
    <script type="text/javascript">
        function IsEmailValid(a) {
            if ("" == a) return !0; var e = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            return e.test(a)
        }
        $(document).ready(function () {
            var _rootUrl = $("#hdfRootUrl").val();
            $('#btnsubmit').click(function () {
                if ($('#txtName').val() == '') {
                    $('#showErrorMsg').text("Ensure first name!."); $('#txtName').focus(); return false;
                }
                if ($('#txtPhone').val() == '') {
                    $('#showErrorMsg').text("Ensure phone number!."); $('#txtPhone').focus(); return false;
                }
                if ($('#txtPhone').val().length < 10) {
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
                    ServiceType: "CCT"
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
        <div class="banner-w-cct">
            <div class="row visible-xs visible-sm">
                <div class="col-md-12">
                    <img class="img-responsive" src="/Landing/Images/cct-banner.jpg" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-7" style="text-align: left; margin-top: 8px;">
                    <div style="padding-left: 15px; padding-top: 10px;" class="hidden-xs hidden-sm">
                    </div>
                </div>
                <div class="col-md-5" style="position: relative;">
                    <div class="form-div-epicor" style="top: 59px !important;">
                        <table class="frm-tbl">
                            <tr>
                                <td align="center">
                                    <img style="margin-top: -35px;" src="/Landing/Images/pdf-circle.png" />
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 50px;">
                                    <p style="color: #6d6d6d; margin-left: 0px;">
                                        For more information,
                                        <br />
                                        please complete this form.
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
        <div class="row visible-xs visible-sm">
            <div class="col-md-12">
                <div style="height: 270px;"></div>
            </div>
        </div>
        <div class="conetnt-div">
            <div class="row">
                <div class="col-md-7">
                    <br />
                    <h4 style="font-weight: 300;"><strong>Moves configuration settings from the parent company to its subsidiaries at the click of a button</strong></h4>
                    <br />
                    <p class="para">
                        Built on top of Epicor ERP, the RheinBrücke CCT moves company configuration settings from one company to another, without manual intervention. It accelerates the configuration copying process, reduces errors, and improves compliance by generating accurate reports.
                    </p>
                    <p class="para">The Epicor–CCT (Copy Company Tool) completes the entire task of configuration migration in an automated (hence error free) environment within few minutes. This unique tool is currently the only such solution available for the Epicor ERP platform.</p>

                    <h4 style="font-weight: 300;"><strong>Benefits of RheinBrücke Copy Company Tool (CCT)</strong></h4>
                    <p class="para">Replicating a company’s configuration in a new entity is exhausting as it requires a lot of time and resources, and manual processes are error prone. Configuring the same set up for different companies or implementing the same configuration for different customers can therefore be a daunting task. </p>
                    <p class="para">RheinBrücke CCT solves this problem by generating a functional document that lists the configurations made in the parent company and based on this functional document RheinBrücke automates the configuration migration process. As the result the subsidiaries get the same configuration settings as the parent company in no time.  </p>
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
                    <img class="img-responsive" src="/Landing/Images/cct-img.jpg" />
                    <h5 style="font-weight: 500; max-width: 300px; text-align: center; line-height: 22px;">
                        <strong>Configuration settings from the parent
                            company are transferred to the company's subsidiaries at the click of a button
                            <br />
                            <br />
                            <br />
                        </strong>
                    </h5>
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
                <div class="col-md-6">
                    <br />
                    <br />

                    <table align="center" class="inftbl" cellpadding="0" cellspacing="0">
                        <tr>
                            <td style="width: 210px;">
                                <div class="head-bx-w">
                                    <p>
                                        Manual Company
                                        Cofiguration
                                        Migration
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
                                <span>Time consuming</span><img style="" src="/Landing/Images/arrow.png" />
                            </td>
                            <td style="width: 25px;"></td>
                            <td valign="middle" style="border-left: 2px #651a1a solid; padding: 20px 0px;">
                                <img style="margin-left: -25px;" src="/Landing/Images/cct-1.png" />
                                <span>Fast</span>
                            </td>
                        </tr>

                        <tr>
                            <td align="right" valign="middle">
                                <span>Error-prone </span>
                                <img style="" src="/Landing/Images/arrow.png" />
                            </td>
                            <td style="width: 25px;"></td>
                            <td valign="middle" style="border-left: 2px #651a1a solid; padding: 20px 0px;">
                                <img style="margin-left: -25px;" src="/Landing/Images/cct-2.png" />
                                <span>Zero error margin</span>
                            </td>
                        </tr>

                        <tr>
                            <td align="right" valign="middle">
                                <span>Cost intensive </span>
                                <img style="" src="/Landing/Images/arrow.png" />
                            </td>
                            <td style="width: 25px;"></td>
                            <td valign="middle" style="border-left: 2px #651a1a solid; padding: 20px 0px;">
                                <img style="margin-left: -25px;" src="/Landing/Images/cct-3.png" />
                                <span>Cost effective</span>
                            </td>
                        </tr>

                        <tr>
                            <td align="right" valign="middle">
                                <span>Inefficient </span>
                                <img style="" src="/Landing/Images/arrow.png" />
                            </td>
                            <td style="width: 25px;"></td>
                            <td valign="middle" style="border-left: 2px #651a1a solid; padding: 20px 0px;">
                                <img style="margin-left: -25px;" src="/Landing/Images/cct-4.png" />
                                <span>Efficient</span>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle">
                                <span style="text-align: right; display: -webkit-inline-box; margin-right: 15px;">Configuration generation
                                    is not possible
                                </span>
                                <img style="" src="/Landing/Images/arrow.png" />
                            </td>
                            <td style="width: 25px;"></td>
                            <td valign="middle" style="border-left: 2px #651a1a solid; padding: 20px 0px;">
                                <img style="margin-left: -25px;" src="/Landing/Images/cct-6.png" />
                                <span style="text-align: left; display: -webkit-inline-box;">Configuration
                                    <br />
                                    generation enabled
                                </span>
                            </td>
                        </tr>
                    </table>
                </div>


                <div class="col-md-6">
                    <br />
                    <br />
                    <h4 class="icons-heading">Who should consider using this tool?  </h4>


                    <ul class="listul">
                        <li>Epicor Implementation Partners or Enterprise Customers of Epicor ERP</li>
                        <li>New enterprise customers who are implementing multi company Epicor ERP Solution</li>
                        <li>Existing and new customers of Epicor ERP who would like to change their configuration settings </li>
                    </ul>

                    <br />

                    <h4 class="icons-heading">Features of RheinBrücke Copy Company Tool(CCT)</h4>


                    <ul class="listul">
                        <li>Hassle free ERP implementation and rollout </li>
                        <li>It is an automated process and eliminates data inconsistencies. </li>
                        <li>Global ERP rollout that saves immense time and effort.</li>
                        <li>Additional configurations can be made in modules without writing functions. </li>
                        <li>Consists of an in-built audit trail that captures all the changes made to the configurations.</li>
                        <li>Deployments ranging from big bang ERP rollouts to phased ERP rollouts. </li>
                        <li>Data is exportable to XML.</li>
                        <li>Applicable across multiple industries. </li>
                        <li>Economical and agile implementation solution. </li>
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
</asp:Content>