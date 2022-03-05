using System;

using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;
using System.Data;
public partial class UserDetails : System.Web.UI.Page
{
    string st = "";
    mydb db = new mydb();
    SqlDataReader dr;
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminId"] == null)
        {
            Response.Redirect("logout.aspx");
        }
        if (!IsPostBack)
        {
            fillrpt();
        }
    }

    private void fillrpt()
    {
        st = @"SELECT *
                   FROM TblUsers";

        db.fill_rptr_ret_sqlda(st, rpt1);
    }
    protected void rpt1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

        if (e.CommandName == "Delete")
        {
            st = "Delete from TblUsers where UserId=" + e.CommandArgument;
            x = db.ExeQuery(st);
            if (x > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "<script>alert('User Deleted')</script>", false);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "<script>alert('Try Again')</script>", false);
            }
        }
        fillrpt();
    }

}