<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowCompanyDetails.aspx.cs" Inherits="ShowCompanyDetails" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:HeaderMenu runat="server" ID="HeaderMenu" />
        <div class="container containers">
            <h2 class="page-header">Company Details</h2>
            <table class="table table-bordered table-condensed">
                <asp:Repeater ID="rpt" runat="server">
                    <HeaderTemplate>
                        <tr>
                            <td>Company Name</td>
                            <td>ContactNo</td>
                            <td>Address</td>
                            <td>EmailId</td>
                            <td>Password</td>
                        </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("CompanyName") %></td>
                            <td><%#Eval("ContactNo") %></td>
                            <td><%#Eval("Address") %></td>
                            <td><%#Eval("EmailId") %></td>  
                            <td><%#Eval("Password") %></td>  
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
    </form>
</body>
</html>
