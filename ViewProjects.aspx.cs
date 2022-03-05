using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
public partial class ViewProjects : System.Web.UI.Page
{
    string st = "";
    mydb db = new mydb();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CompanyId"] == null)
        {
           // Response.Redirect("Logout.aspx");
        }
        if (!IsPostBack)
        {
            st = "Select * from TblProjects where CompanyId=" + Session["CompanyId"];
            db.fill_rptr_ret_sqlda(st, rpt);
        }
    }
    protected void rpt_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            st = "Delete from TblProjects where ProjectId=" + e.CommandArgument;
            int x = db.ExeQuery(st);
            if (x > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "<script>alert('Project Deleted')</script>", false);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "<script>alert('Try Again')</script>", false);
            }
        }
    }
}