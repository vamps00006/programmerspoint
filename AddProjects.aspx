<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddProjects.aspx.cs" Inherits="AddProjects" %>

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
        <div class="container containers ">
            <h2 class="page-header col-md-offset-2">Add Projects</h2>
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="col-md-2">Project Name</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="txtProjectName" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="txtProjectName" ForeColor="Red" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Project Name"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2">Project Description</label>
                    <div class="col-md-4">
                        <asp:TextBox TextMode="MultiLine" ID="txtProjectDesc" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="txtProjectDesc" ForeColor="Red" Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Project description"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2">Project DeliveryDate</label>
                    <div class="col-md-4">
                        <asp:TextBox type="date" ID="txtprodate" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="txtprodate" ForeColor="Red" Display="Dynamic" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Select Project Date"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2">Skills</label>
                    <div class="col-md-4">
                        <asp:TextBox TextMode="MultiLine" ID="txtSills" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="txtSills" ForeColor="Red" Display="Dynamic" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Skills"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2">Experience</label>
                    <div class="col-md-4">
                        <asp:DropDownList ID="ddlExp" runat="server" CssClass="form-control"></asp:DropDownList>
                        <asp:RequiredFieldValidator InitialValue="Select" ForeColor="Red" Display="Dynamic" ControlToValidate="ddlExp" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Select Experince"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2">Project Amount</label>
                    <div class="col-md-4">
                        <asp:TextBox ID="txtAmt" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="txtAmt" ForeColor="Red" Display="Dynamic" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Amount"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-1 col-md-offset-2">
                        <asp:Button ID="btnAdd" CssClass="btn btn-primary" runat="server" Text="Add" OnClick="btnAdd_Click" />
                    </div>
                    <div class="col-md-1 ">
                        <a href="ViewProjects.aspx" class="btn btn-primary">View Projects</a>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
