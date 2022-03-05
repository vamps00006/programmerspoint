<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewProjectss.aspx.cs" Inherits="ViewProjectss" %>

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
    <style>
        {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:HeaderMenu runat="server" ID="HeaderMenu" />
        <div class="container containers">
            <h2 class="page-header">Project Details</h2>
            <table class="table table-bordered table-condensed">
                <asp:Repeater ID="rpt" runat="server" OnItemCommand="rpt_ItemCommand">
                    <HeaderTemplate>
                        <tr>
                            <th>Company Name</th>
                            <th>Project Name</th>
                            <th>Project Description</th>
                            <th>Delivery Date</th>
                            <th>Skill</th>
                            <th>Amount</th>
                            <th>Status</th>
                            <th>Apply</th>
                        </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("CompanyName") %></td>
                            <td><%#Eval("ProjectName") %></td>
                            <td><%#Eval("ProDescri") %></td>
                            <td><%#Eval("DeliveryDate") %></td>
                            <td><%#Eval("Skills") %></td>
                            <td><%#Eval("Amount") %></td>
                            <td>
                                <asp:Label ID="lblStatus" runat="server" Text='<%#Eval("Status") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:LinkButton CssClass="btn btn-primary" ID="lnkApply" runat="server" CommandName="Apply" CommandArgument='<%#Eval("ProjectId") %>'>
                                    <i class="glyphicon glyphicon-hand-up"></i>
                                </asp:LinkButton>
                                <asp:HiddenField ID="hfCompanyId" runat="server" Value='<%#Eval("CompanyId") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
    </form>
</body>
</html>
