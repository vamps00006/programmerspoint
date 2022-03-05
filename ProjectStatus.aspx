<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProjectStatus.aspx.cs" Inherits="ProjectStatus" %>

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
</head>
<body>
    <form id="form1" runat="server">
        <uc1:HeaderMenu runat="server" ID="HeaderMenu" />
        <div class="container">
            <h2 class="page-header">My Project Status</h2>
            <table class="table table-bordered">
                <asp:Repeater ID="rpt" runat="server">
                    <HeaderTemplate>
                        <tr>
                            <th>Company Name</th>
                            <th>Project Name</th>
                            <th>Project Description</th>
                            <th>Delivery Date</th>
                            <th>Skill</th>
                            <th>Status</th>
                        </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("CompanyName") %></td>
                            <td><%#Eval("ProjectName") %></td>
                            <td><%#Eval("ProDescri") %></td>
                            <td><%#Eval("DeliveryDate") %></td>
                            <td><%#Eval("Skills") %></td>
                            <td>
                                <asp:Label ID="lblStatus" runat="server" Text='<%#Eval("Status") %>'></asp:Label>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
    </form>
</body>
</html>
