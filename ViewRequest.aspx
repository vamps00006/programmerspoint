<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewRequest.aspx.cs" Inherits="ViewRequest" %>

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
    <style>
        .ss {
            box-shadow: 0 2px 4px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:HeaderMenu runat="server" ID="HeaderMenu" />
        <div class="container ss">
            <h2 class="page-header">View Coder Request</h2>
            <table class="table table-bordered table-condensed">
                <asp:Repeater ID="rpt" runat="server" OnItemCommand="rpt_ItemCommand">
                    <HeaderTemplate>
                        <tr>
                            <th>Coder Name</th>
                            <th>Skills </th>
                            <th>EmailId </th>
                            <th>Contact No.</th>
                            <th>Applied Date</th>
                            <th>View</th>
                        </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("FullName") %></td>
                            <td><%#Eval("Skills") %></td>
                            <td><%#Eval("EmailId") %></td>
                            <td><%#Eval("Mob") %></td>
                            <td><%#Eval("RequestDate") %></td>
                            <td>
                                <asp:LinkButton ID="lnkView" runat="server" CommandName="View" CssClass="btn btn-primary"
                                    CommandArgument='<%#Eval("RequestId") %>'>
                                    <i class="glyphicon glyphicon-eye-open"></i>
                                </asp:LinkButton>
                                <asp:HiddenField ID="hfEmailId" runat="server" Value='<%#Eval("EmailId") %>' />
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
