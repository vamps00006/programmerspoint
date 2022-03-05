<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserRegister.aspx.cs" Inherits="UserRegister" %>

<%@ Register Src="~/HeaderMenu.ascx" TagName="UserMenu" TagPrefix="UserMenu" %>
<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-1.11.0.min.js"></script>
    <!-- Custom Theme files -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript">

        $(document).ready(function () {
            $('#txtDob').datepicker({
                dateFormat: 'dd/mm/yy',
                changeYear: true,
                changeMonth: true,
                yearRange: '1998:2019',
                maxDate: 0

            });
        });


</script>
    <style type="text/css">
        label {
            font-family: 'Adobe Caslon Pro';
        }
      .ui-datepicker-calendar{
              width: 220px;
    height: 180px;
    background-color: #DDEA13;
    color: #fff;
    border-radius: 2%;
    box-shadow: 0 4px 4px 0 rgba(50, 50, 50, 0.4);
      }

        h2 {
            font-family: 'Adobe Caslon Pro';
        }
        
       
        .containers {
            margin-top:;
        }

        .col-md-3 {
            text-align: right;
        }

        .containers {
            box-shadow: 0 2px 4px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12);
        }
        

        hr {
            border-bottom: 1px solid;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <UserMenu:UserMenu ID="menu" runat="server" />
        <div class="container containers ">
            <div class="col-md-6 col-md-offset-3">
                <br />
                <br />
                <h2 class="text-center">Coder Register</h2>
                <hr />
                <div class="form-horizontal">
                    <div class="form-group">
                        <label class="col-md-3">FullName</label>
                        <div class="col-md-7">
                            <asp:TextBox placeholder="FullName" ID="txtFullName" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtFullName" ForeColor="Red" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter FullName"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ValidationExpression="[a-z A-Z]+" ControlToValidate="txtFullName" ForeColor="Red" Display="Dynamic" ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Only Characters"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3">Gender</label>
                        <div class="col-md-7">
                            <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator Display="Dynamic" InitialValue="Select" ControlToValidate="ddlGender" ID="RequiredFieldValidator9" runat="server" ErrorMessage="Select Gender"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3">DOB</label>
                        <div class="col-md-7">
                            <asp:TextBox ID="txtDob" readonly="true" placeholder="DOB" runat="server"  CssClass="form-control" OnTextChanged="txtDob_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtDob" ForeColor="Red" Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter DOB"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3">Qualification</label>
                        <div class="col-md-7">
                            <asp:DropDownList ID="ddlQualification" runat="server" CssClass="form-control"></asp:DropDownList>
                            <asp:RequiredFieldValidator InitialValue="Select" ControlToValidate="ddlQualification" ForeColor="Red" Display="Dynamic" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Select Qualification"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3">Mobile No</label>
                        <div class="col-md-7">
                            <asp:TextBox ID="txtMob" placeholder="Mobile No" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtMob" ForeColor="Red" Display="Dynamic" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Mobile No."></asp:RequiredFieldValidator>

                            <asp:RegularExpressionValidator ForeColor="Red" Display="Dynamic" ValidationExpression="[0-9]{10}" ControlToValidate="txtMob" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Mobile No."></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3">Skills</label>
                        <div class="col-md-7">
                            <asp:TextBox ID="txtSkills" TextMode="MultiLine" placeholder="Skills" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtSkills" ForeColor="Red" Display="Dynamic" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter Skills"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3">Experinece</label>
                        <div class="col-md-7">
                            <asp:DropDownList ID="ddlExperience" runat="server" CssClass="form-control"></asp:DropDownList>
                            <asp:RequiredFieldValidator InitialValue="Select" ControlToValidate="ddlExperience" ForeColor="Red" Display="Dynamic" ID="RequiredFieldValidator10" runat="server" ErrorMessage="Select Experince"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3">EmailId</label>
                        <div class="col-md-7">
                            <asp:TextBox ID="txtEmailId" placeholder="EmailId" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtEmailId" ForeColor="Red" Display="Dynamic" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter EmailId"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtEmailId" ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid EmailId" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3">Password</label>
                        <div class="col-md-7">
                            <asp:TextBox TextMode="Password" placeholder="Password" ID="txtPassword" runat="server" CssClass="form-control"></asp:TextBox>
<asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtPassword" ValidationExpression="^.*(?=.{8,})(?=.*[\d])(?=.*[\W]).*$" ID="RegularExpressionValidator4" runat="server" ErrorMessage="Password Must Be Minimum 8 character,One Digit and One Special Character" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3">Confirm Password</label>
                        <div class="col-md-7">
                            <asp:TextBox TextMode="Password" placeholder="Password" ID="txtConfirmPwd" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtConfirmPwd" ForeColor="Red" Display="Dynamic" ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ForeColor="Red" Display="Dynamic" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPwd" ID="CompareValidator1" runat="server" ErrorMessage="Password Does Not Match"></asp:CompareValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-1 col-md-offset-3">
                            <asp:Button ID="btnSave" runat="server" Class="btn btn-primary btnA" Text="Submit" OnClick="btnSave_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
<script src="Js/jquery-1.11.2.js" type="text/javascript"></script>
<script src="Js/jquery-ui.js" type="text/javascript"></script>



