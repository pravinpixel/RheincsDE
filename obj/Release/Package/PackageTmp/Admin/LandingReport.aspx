<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="LandingReport.aspx.cs" Inherits="RheinBrucke.Admin.LandingReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headerPlaceHolder" runat="server">
    <meta name="keywords" content="hr payroll software, payroll services, human resources hr software and human resources hr solutions, payroll consulting companies, payroll processing systems, payroll calculating software, payroll specialists in dubai uae me netherlands germany europe, small business payroll 
        and large business payroll, best payroll software solution, payroll management and payroll support companies" />
    <meta name="Description" content="EpicPay is a flexible and user-friendly payroll processing system that meets the requirements of the HR departments." />
    <title>EpicPay</title>
    <script src="Assets/js/jquery-2.1.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
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
                var service = $('#ddlService').val();
                if (service == '0') { alert("Ensure service!."); return false; }
                if (datefrom == "") {
                    alert("Ensure from date!."); $('#txtdatefrom').focus(); return false;
                }
                if (dateto == "") {
                    alert("Ensure  to date!."); $('#txtdateto').focus(); return false;
                }
                if (datefrom > dateto) {
                    alert("Ensure valid date!."); $('#txtdatefrom').focus(); return false;
                }
                var _rootUrl = $("#hdfRootUrl").val();
                var user = {
                    Services: $('#ddlService option:selected').text(),
                    DateFrom: $('#txtdatefrom').val(),
                    DateTo: $('#txtdateto').val()
                }
                $.ajax({
                    type: "POST",
                    url: _rootUrl + "api/Landing/LandingReport",
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
                                        if (Data[i].FirstName == null) { Data[i].FirstName = ''; } if (Data[i].Email == null) { Data[i].Email = ''; } if (Data[i].Phone == null) { Data[i].Phone = ''; }
                                        $('#tbody').append("<tr  style='border-bottom: 1px #d1d2d4 solid;'><td style='padding-left:10px;'>" + Data[i].FirstName + "</td><td>" + Data[i].Email + "</td><td>" + Data[i].Phone + "</td><td>" + Data[i].ServiceType + "</td></tr>");
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
                $('#txtdatefrom,#txtdateto').val(''); $('#ddlService').val('0');cleardatatable();
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
                <span class="redBottom">Landing Report</span>
            </h5>
        </div>
        <br />
        <div class="col-md-12 padd-top-20" style="line-height: 23px;">
            <table style="width: 100%; height: 100%">
                <tr>
                    <td style="width: 19%">
                        <select id="ddlService" style="width: 85%; padding: 6px;">
                            <option value="0">-- Select Services --</option>
                            <option value="1">EpicPay </option>
                            <option value="2">Epicor </option>
				<option value="3">CCT </option>
				<option value="3">HCM </option>
                        </select>
                    </td>
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
                    <td style="width: 20%">
                        <input type="button" class="submit-button" id="btnExcel" value="Excel" style="background-color: gray" />
                    </td>
                </tr>
            </table>
        </div>
        <div class="col-md-12 padd-top-20 deco-header-dotnet" style="line-height: 30px;">
            <table style="width: 100%; height: 100%" id="tableid">
                <thead>
                    <tr>
                        <th style="padding-left: 10px;">First Name
                        </th>
                        <th>Email
                        </th>
                        <th>Phone
                        </th>
 <th>Service Type
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