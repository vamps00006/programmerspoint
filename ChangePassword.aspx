<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<%@ Register Src="~/HeaderMenu.ascx" TagPrefix="uc1" TagName="HeaderMenu" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-1.11.0.min.js"></script>
    <!-- Custom Theme files -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/CustomStyle.css" rel="stylesheet" />
    <style type="text/css">
        label {
            font-family: 'Adobe Caslon Pro';
        }

        .col-md-2 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:HeaderMenu runat="server" ID="HeaderMenu" />
        <div class="container containers ">
            <h2 class="page-header col-md-offset-2">Change Password</h2>
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="col-md-2">Old Password</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="txtOldPassword" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="txtOldPassword" ForeColor="Red" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2">New Password</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="txtNewPassword" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="txtNewPassword" ForeColor="Red" Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ErrorMessage="Minimum 8 charaters" ForeColor="Red" ControlToValidate="txtNewPassword" ValidationExpression=".{8,8}$" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-1 col-md-offset-2">
                        <asp:Button ID="btUpdate" runat="server" Text="Update" OnClick="btUpdate_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
