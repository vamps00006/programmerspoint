<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SendEmail.aspx.cs" Inherits="SendEmail" %>

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
</head>
<body>
    <form id="form1" runat="server">
        <uc1:HeaderMenu runat="server" ID="HeaderMenu" />
        <br />
        <br />
        <br />
        <div class="container">

            <div class="form-horizontal">
                <div class="form-group">
                    <label class="col-md-2">Send EmailI</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="txtText" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ControlToValidate="txtText" ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter EmailId" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <div class="col-md-1 col-md-offset-2">
                        <asp:Button ID="btnSend" CssClass="btn btn-primary" runat="server" Text="Send" OnClick="btnSend_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
