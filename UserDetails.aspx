<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserDetails.aspx.cs" Inherits="UserDetails" %>

<%@ Register Src="~/HeaderMenu.ascx" TagName="MenuUser" TagPrefix="MenuUser" %>
<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-1.11.0.min.js"></script>
    <!-- Custom Theme files -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <style type="text/css">
        label {
            font-family: 'Adobe Caslon Pro';
        }

        h2 {
            font-family: 'Adobe Caslon Pro';
        }

        th {
            font-family: Cambria;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <MenuUser:MenuUser ID="menu" runat="server" />
        <div class="container">
            <h2 class="page-header">Coder Details</h2>
            <div class="table-responsive">
                <table class="table table-bordered table-hover table-condensed">
                    <asp:Repeater ID="rpt1" runat="server" OnItemCommand="rpt1_ItemCommand">
                        <HeaderTemplate>
                            <tr>
                                <th>Full Name</th>
                                <th>Gender
                                </th>
                                <th>DOB</th>
                                <th>Qualification
                                </th>
                                <th>Mob
                                </th>
                                <th>EmailId
                                </th>
                                <th>Password
                                </th>
                                <th class="text-center col-md-1">Delete
                                </th>
                            </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <%#Eval("FullName") %>
                                </td>
                                <td>
                                    <%#Eval("Gender") %>
                                </td>
                                <td>
                                    <%#Eval("DOB") %>
                                </td>
                                <td>
                                    <%#Eval("Qualifi") %>
                                </td>
                                <td>
                                    <%#Eval("Mob") %>
                                </td>
                                <td>
                                    <%#Eval("EmailId") %>
                                </td>
                                <td>
                                    <%#Eval("Password") %>
                                </td>
                                <td class="text-center col-md-1">
                                    <asp:LinkButton ID="lnkAccept" Height="30" runat="server" CommandArgument='<%#Eval("UserId") %>' CommandName="Delete">
                                        <i style="color:green;" class="glyphicon glyphicon-remove"></i>    </asp:LinkButton>
                                </td>

                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
