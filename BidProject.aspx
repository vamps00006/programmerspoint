<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BidProject.aspx.cs" Inherits="BidProject" %>

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
        <div class="container containers">
            <div class="form-horizontal">
                <div class="form-group">
                    <div class="col-md-4">
                        <asp:TextBox ID="txtAmt" placeholder="Amount" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ForeColor="Red" Display="Dynamic" ControlToValidate="txtAmt" ValidationGroup="g1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Amount"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-md-1">
                        <asp:Button ID="btn" ValidationGroup="g1" runat="server" Text="submit" OnClick="btn_Click" />
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
