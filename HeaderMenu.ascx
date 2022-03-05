<%@ Control Language="C#" AutoEventWireup="true" CodeFile="HeaderMenu.ascx.cs" Inherits="HeaderMenu" %>


<style>
    .header {
        background: #f46d6d;
    }
</style>
<div class="header">
    <div class="container">
        <div class="header-main">
            <!---->
            <!---->
            <div class="top-menu">

                <nav class="cl-effect-13">
                    <h1 class="text-center" style="color: white; margin-top: -8px; margin-left: -66px;">Programmers Point</h1>
                    <hr style="border: 1px solid #FFFCFC;" />
                    <ul class="text-center" style="margin-left: -70px;">
                        <% if (Session["AdminId"] != null)
                           { %>
                        <li><a href="AddCompany.aspx">Company Details</a></li>
                        <li><a href="UserDetails.aspx">Coder Details</a></li>
                        <li><a href="logout.aspx">LogOut</a></li>
                        <% }
                           else if (Session["CompanyId"] != null)
                           {                                                                                            
                        %>
                        <li><a href="AddProjects.aspx">Add Projects</a></li>
                        <li><a href="ChangePassword.aspx">Change Password</a></li>
                        <li><a href="ViewBidingDetails.aspx">View Biding Details</a></li>
                        <li><a href="logout.aspx">Logout</a></li>
                        <% }
                           else if (Session["UserId"] != null)
                           {  %>
                        <li><a href="ViewProjectss.aspx">View Projects</a></li>
                        <li><a href="ProjectStatus.aspx">Project Status</a></li>
                        <li><a href="logout.aspx">Logout</a></li>
                        <% }
                           else
                           { %>
                        <li><a href="Default.aspx">Home</a></li>
                        <li><a href="UserRegister.aspx">Register</a></li>
                        <li><a href="Login.aspx">Login</a></li>
                        <%} %>
                    </ul>
                </nav>
            </div>
            <!--script-->
            <!---->
        </div>

    </div>
</div>
<script src="js/move-top.js"></script>
<script src="js/jquery.magnific-popup.js"></script>

<script src="js/bootstrap.js"></script>
