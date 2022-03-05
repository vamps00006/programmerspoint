using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SendEmail : System.Web.UI.Page
{
    string st = "";
    mydb db = new mydb();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Id"] == null)
        {
            Response.Redirect("Logout.aspx");
        }
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        int x;
        try
        {
            st = "Update TblRequest set Status='Rejected'";
            x = db.ExeQuery(st);

            st = "Update TblRequest set Status='Your Request Approved' where RequestId=" + Request.QueryString["Id"];
            x = db.ExeQuery(st);
            if (x > 0)
            {
                string Body = "<b>Project Status</b>";
                EmailClass.SendEmailId(Request.QueryString["EmailId"], "Request Details", Body + "<br/>" + txtText.Text);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "<script>alert('Email Sent Successfully')</script>", false);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "<script>alert('Try Again')</script>", false);
            }
        }
        catch
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "", "<script>alert('Check Internet Connection')</script>", false);
        }
    }
}