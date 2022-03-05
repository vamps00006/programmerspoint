using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
public partial class ChangePassword : System.Web.UI.Page
{
    string st = "";
    mydb db = new mydb();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CompanyId"] == null)
        {
            Response.Redirect("Logout.aspx");
        }
    }
    protected void btUpdate_Click(object sender, EventArgs e)
    {
        st = "Select * from tblcompany where CompanyId=" + Session["CompanyId"] + " and Password='" + txtOldPassword.Text + "'";
        dr = db.readall(st);
        if (dr.Read())
        {
            st = "Update tblcompany set Password='" + txtNewPassword.Text + "' where CompanyId=" + Session["CompanyId"] + "";
            int x = db.ExeQuery(st);
            if (x > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Login Details Updated');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Try Again');", true);
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Old Password Does Not Match');", true);
        }

    }
}