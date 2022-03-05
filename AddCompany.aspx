<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddCompany.aspx.cs" Inherits="AddCompany" %>

<%@ Register Src="~/HeaderMenu.ascx" TagPrefix="uc1" TagName="HeaderMenu" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-1.11.0.min.js"></script>
    <!-- Custom Theme files -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
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
        <div class="container containers">
            <h2 class="page-header col-md-offset-2">Add Company</h2>
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="col-md-2">Company Name</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="txtCompanyName" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ForeColor="Red" Display="Dynamic" ControlToValidate="txtCompanyName" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Company Name"></asp:RequiredFieldValidator>

                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2">Company ContactNo.</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="txtContact" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ForeColor="Red" Display="Dynamic" ControlToValidate="txtContact" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Contact No."></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ForeColor="Red" Display="Dynamic" ControlToValidate="txtContact" ValidationExpression="[0-9]+" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Only Numbers"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2">Address</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="txtAddress" TextMode="MultiLine" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ForeColor="Red" Display="Dynamic" ControlToValidate="txtAddress" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Address"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2">EmailId</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="txtEmailId" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ForeColor="Red" Display="Dynamic" ControlToValidate="txtEmailId" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter EmailId"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ForeColor="Red" Display="Dynamic" ControlToValidate="txtEmailId" ID="RegularExpressionValidator2" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2">Password</label>
                    <div class="col-md-4">
                        <asp:TextBox TextMode="Password" ID="txtPassword" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="txtPassword" ForeColor="Red" Display="Dynamic" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ErrorMessage="Minimum 8 charaters" ForeColor="Red" ControlToValidate="txtPassword" ValidationExpression=".{8,8}$" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-1 col-md-offset-2">
                        <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-primary" OnClick="btnAdd_Click" />
                    </div>
                    <div class="col-md-1 ">
                        <a href="ShowCompanyDetails.aspx" class="btn btn-primary">Show Details</a>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
