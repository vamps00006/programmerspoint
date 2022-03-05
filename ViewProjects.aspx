<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewProjects.aspx.cs" Inherits="ViewProjects" %>

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
        .ss{
            box-shadow: 0 2px 4px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:HeaderMenu runat="server" ID="HeaderMenu" />
        <div class="container ss ">
            <h2 class="page-header">Project Details</h2>
            <table class="table table-bordered table-condensed">
                <asp:Repeater ID="rpt" runat="server" OnItemCommand="rpt_ItemCommand">
                    <HeaderTemplate>
                        <tr>
                            <th>Project Name</th>
                            <th>Project Description</th>
                            <th>Delivery Date</th>
                            <th>Skills</th>
                            <th>Experience</th>
                            <th>Amount</th>
                            <th>Delete</th>
                        </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("ProjectName") %></td>
                            <td><%#Eval("ProDescri") %></td>
                            <td><%#Eval("DeliveryDate") %></td>
                            <td><%#Eval("Skills") %></td>
                            <td><%#Eval("Exp") %></td>
                            <td><%#Eval("Amount") %></td>
                            <td>
                                <asp:LinkButton CommandArgument='<%#Eval("ProjectId") %>' CommandName="Delete" ID="lnkDelete" runat="server">
                                    <i class="glyphicon glyphicon-remove"></i>
                                </asp:LinkButton>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
    </form>
</body>
</html>
