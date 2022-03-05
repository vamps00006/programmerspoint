<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewBidingDetails.aspx.cs" Inherits="ViewBidingDetails" %>

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
        <div class="container containers">
            <div class="form-horizontal">
                <div class="form-group">
                    <div class="col-md-4">
                        <asp:DropDownList AutoPostBack="true" ID="ddlProject" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlProject_SelectedIndexChanged"></asp:DropDownList>
                    </div>
                    <div class="col-md-1">
                        <asp:Button CssClass="btn btn-primary" ID="btn" ValidationGroup="g1" runat="server" Text="Finish" OnClick="btn_Click" />
                    </div>
                </div>
                <br />
            </div>
            <table class="table table-bordered table-condensed">
                <asp:Repeater ID="rpt" runat="server">
                    <HeaderTemplate>
                        <tr>
                            <th>Coder Name</th>
                            <th>Amount</th>
                        </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("FullName") %></td>
                            <td><%#Eval("Amt") %></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>

    </form>
</body>
</html>
