<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="CompanyLogin" %>

<%@ Register Src="~/HeaderMenu.ascx" TagPrefix="uc1" TagName="HeaderMenu" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-1.11.0.min.js"></script>
    <!-- Custom Theme files -->

    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/CustomStyle.css" rel="stylesheet" />
    <style type="text/css">
        label {
            font-family: 'Adobe Caslon Pro';
        }

        h2 {
            font-family: 'Adobe Caslon Pro';
        }

        .col-md-2 {
            text-align: right;
        }

        .containers {
            margin-top: 50px;
        }

        .col-md-6 {
            box-shadow: 0 2px 4px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12);
            border-radius: 1em 3em 1em;
            padding-top: 50px;
            background: rgba(255, 255, 255, 0.47);
            border: #fff;
        }

        .btn, .btn:hover {
            background: #f46d6d;
            font-size: 15px;
            color: #fff;
            font-weight: 800 !important;
        }

        h2 {
            text-transform: uppercase;
        }

        body {
            background: url('bgimages/img1.jpg');
            background-size: cover;
            height: 680px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:HeaderMenu runat="server" ID="HeaderMenu" />
        <div class="container containers">
            <div class="form-horizontal">
                <div class="col-md-6 col-md-offset-3">
                    <div class="col-md-offset">
                        <h1 class="col-md-offset-3">Login Login</h1>
                        <div class="form-horizontal">
                            <div class="form-group">
                                <label class="col-md-3">User Type</label>
                                <div class="col-md-8">
                                    <asp:DropDownList ID="ddlUserType" runat="server" CssClass="form-control">
                                        <asp:ListItem>Admin</asp:ListItem>
                                        <asp:ListItem>Company</asp:ListItem>
                                        <asp:ListItem>Coder</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3">Emailid</label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtUserName" placeholder="Emailid" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3">Password</label>
                                <div class="col-md-8">
                                    <asp:TextBox runat="server" TextMode="Password" ID="txtPassword" placeholder="Password" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-8 col-md-offset-3">
                                    <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary form-control" Text="Login" OnClick="btnLogin_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
