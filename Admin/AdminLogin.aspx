<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="RheinBrucke.Admin.AdminLogin" %>

<!DOCTYPE html>

<html  lang="de"  xml:lang="de" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="shortcut icon" type="image/x-icon" href="../favicon.png" />
    <meta content="IE=edge" http-equiv="X-UA-Compatible" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <style>
        .Font {
            font-family: HelveticaNeue-Light,"Helvetica Neue Light","Helvetica Neue",Helvetica,Arial,sans-serif;
        }
        .submit-button {
    width: 102px;
    font-size: 16px;
    text-align: center;
    padding: 10px 0;
    border: 0;
    border-radius: 2px;
    background: #7b1315;
    color: #fff;
    text-transform: Capitalize;
    margin: 0;
}
        body {
            background: url("../Assets/images/RheinBrücke.jpg") no-repeat;
            background-size:cover;

        }
        .login-table
        {
                background: rgba(251, 249, 249, 0.8);
            margin-top: 181px; margin-left: 472px; 
            border-spacing: 25px; 
        }
        .write-to-us-input {
    border-radius: 2px;
    outline: 0;
    padding: .4em 0.4em;
    border: 1px solid #c9c9c9;
    width: 100%;
    font-size: 14px;
    color: #2f2f2f;
}
        .txtlbl
        {
            font-size:14px;
        }
    </style>
    <script src="Assets/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#txtusername').focus();
            $('#btnlogin').click(function () {
                if ($('#txtusername').val() == '') {
                    $('#message').text('Ensure the Email Id!');
                    $('#txtusername').focus();
                    return false;
                }
                if ($("#txtpassword").val() == '') {
                    $('#message').text('Ensure the Password!');
                    $('#txtpassword').focus();
                    return false;
                }

                var _rootUrl = $("#hdfRootUrl").val();
                var user = {
                    username: $('#txtusername').val(),
                    password: $("#txtpassword").val()
                }
                $.ajax({
                    type: "POST",
                    url: _rootUrl + "api/Admin/Authentication",
                    data: user,
                    //contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    cache: false,
                    success: function (response) {
                        //alert(response);
                        if (response == false) {
                            $('#message').text('Incorrect credentials. Please contact Admin for further Access!');
                        }
                        else {
                            var username = $('#txtusername').val();
                            $('#txtusername').val() == '';
                            $("#txtpassword").val() == "";
                            window.location = "Admin-Home?field1=  " + username;
                        }
                    }
                });
            })
        })
    </script>

</head>
<body>
    <div>
 
        <input type="hidden" id="hdfRootUrl" value="<%=rootpath %>" />
        <table class="login-table">
            <tr>
                <td colspan="2" style="text-align: center;">
                    <img src="/Assets/images/ric-logo.png" id="Img1" alt="RheinBrücke IT Consulting" class="ETlogo" />
                </td>
            </tr>
            <tr>
                <td class="Font txtlbl">UserName :
                </td>
                <td>
                    <input type="text" id="txtusername" class="write-to-us-input" />
                </td>
            </tr>
             <tr>
                <td class="Font txtlbl">Password :
                </td>
                <td>
                    <input type="password" id="txtpassword" name="txtpassword" class="write-to-us-input" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: right;">
                    <input type="button" class="submit-button" value="Login" id="btnlogin" style="height: 35px; width: 80px" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <span style="color: red" id="message" class="Font"></span>
                </td>
            </tr>
        </table>
    </div>
</body>

</html>
