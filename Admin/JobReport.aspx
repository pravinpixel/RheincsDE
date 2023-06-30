<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="JobReport.aspx.cs" Inherits="RheinBrucke.Admin.JobReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headerPlaceHolder" runat="server">
    <meta name="google-site-verification" content="wupPtb2f4IkwIZlJw_WfkxpZCBAcL70quHa_rVemK0U" />
    <meta name="keywords" content="SAP, Microsoft, SharePoint, EPICOR, SAP Implementation, SAP Support, Microsoft BI, Microsoft Gold Partner, SAP Consulting, SharePoint Consulting, ERP Consulting, Enterprise IT services, Technology consulting services, IT solutions" />
    <meta name="Description" content="RheinBrücke is an IT Consulting company that offers best in class service offered at globally competitive cost models. Our services and solutions include Program and Project Management, ERP Solutions aligned to SAP, Microsoft SharePoint, EPICOR and Open Source Technology Solutions." />
    <script src="Assets/js/jquery-2.1.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        /*#tableid th {
            padding-top: 6px;
            padding-bottom: 6px;
            background-color: #ad8181;
            color: white;
            border: 1px solid #ddd;
            text-align: left;
            padding: 8px;
        }*/

        .submit-button {
            width: 102px;
            font-size: 14px;
            text-align: center;
            padding: 6px 0;
            border: 0;
            border-radius: 2px;
            background: #7b1315;
            color: #fff;
            text-transform: Capitalize;
            margin: 0;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#tableid').DataTable({
            });

            $('#btnExcel').attr('disabled', true);
            $("#txtdatefrom,#txtdateto").datepicker({ dateFormat: 'mm/dd/yy' });
            $('#btnSearch').click(function () {
                var datefrom = $('#txtdatefrom').val();
                var dateto = $('#txtdateto').val();
                if (datefrom == "") {
                    alert("Ensure from date!."); $('#txtdatefrom').focus(); return false;
                }
                if (dateto == "") {
                    alert("Ensure to date!."); $('#txtdateto').focus(); return false;
                }
                if (datefrom > dateto) {
                    alert("Ensure valid date!."); $('#txtdatefrom').focus(); return false;
                }
                var _rootUrl = $("#hdfRootUrl").val();
                var user = {
                    DateFrom: $('#txtdatefrom').val(),
                    DateTo: $('#txtdateto').val()
                }
                $.ajax({
                    type: "POST",
                    url: _rootUrl + "api/Admin/SerachJobReport",
                    data: JSON.stringify(user),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        $("#tableid").DataTable({
                            "autoWidth": false,
                            "bLengthChange": false,
                            "destroy": true
                        }).destroy();
                        $("#tableid tbody").empty();
                        if (response != "") {
                            $('#btnExcel').attr('disabled', false);
                            if (JSON.parse(response) != null && response != "") {
                                var Data = JSON.parse(response);
                                if (Data.length > 0) {
                                    for (var i = 0; i < Data.length ; i++) {
                                        if (Data[i].Message == null) { Data[i].Message = ""; }
                                        $('#tbody').append("<tr  style='border-bottom: 1px #d1d2d4 solid;'><td style='padding-left:10px;'>" + Data[i].Name + "</td><td>" + Data[i].MobileNo + "</td><td>" + Data[i].EmailId + "</td><td>" + Data[i].JobTitle + "</td><td><a style='color:blue;' href='/AttachmentFile/" + Data[i].DocumentName + "' >" + Data[i].DocumentName + "</a></td><td>" + Data[i].CoverLetter + "</td></tr>");
                                    }
                                }
                            }
                        }
                        else {
                            alert("No Records Found!");
                            $('#btnExcel').attr('disabled', true);
                        }
                        $('#tableid').DataTable({
                        });
                    }
                });
            });
            $('#btnClear').click(function () {
                $('#btnExcel').attr('disabled', true);
                $('#txtdatefrom,#txtdateto').val('');cleardatatable();
            });
            $('#btnExcel').click(function () {
                $("#tableid").table2excel({
                    exclude: ".noExl",
                    name: "Worksheet Name",
                    filename: "Excel"
                });
            })
            function cleardatatable() {
                var table = $('#tableid').DataTable();
                table
                             .search('')
                             .columns().search('')
                              .clear()
                             .draw();
            }
        });
    </script>
    <div class="container" id="container-top" style="padding-top: 12px">
        <input type="hidden" id="hdfRootUrl" value="<%=rootpath %>" />
        <div class="row">
            <h5 class="deco-header" style="margin-left: 20px;">
                <span class="redBottom">Job Report</span>
            </h5>
        </div>
        <br />
        <div class="col-md-12 padd-top-20" style="line-height: 23px;">
            <table style="width: 100%; height: 100%">
                <tr>
                    <td style="width: 6%">Date From:
                    </td>
                    <td style="width: 15%">
                        <input type="text" id="txtdatefrom" />
                    </td>
                    <td style="width: 5%">Date To:
                    </td>
                    <td style="width: 15%">
                        <input type="text" id="txtdateto" />
                    </td>
                    <td style="width: 10%">
                        <input type="button" class="submit-button" id="btnSearch" value="Search" />
                    </td>
                    <td style="width: 10%">
                        <input type="button" class="submit-button" id="btnClear" value="Clear" style="background-color: gray" />
                    </td>
                    <td style="width: 39%">
                        <input type="button" class="submit-button" id="btnExcel" value="Excel" style="background-color: gray" />
                    </td>
                </tr>
            </table>
        </div>
        <div class="col-md-12 padd-top-20 deco-header-dotnet" style="line-height: 30px;">
            <table style="width: 100%; height: 100%" id="tableid">
                <thead>
                    <tr>
                        <th style="padding-left: 10px;">Name
                        </th>
                        <th>Mobile Number
                        </th>
                        <th>Email Id
                        </th>
                        <th>Job Title
                        </th>
                        <th>Cv Document
                        </th>
                        <th>Cover Letter
                        </th>
                    </tr>
                </thead>
                <tbody id="tbody"></tbody>
            </table>
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
