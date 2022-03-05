using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
public partial class ViewRequest : System.Web.UI.Page
{
    string st = "";
    mydb db = new mydb();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CompanyId"] == null)
        {
            Response.Redirect("logout.aspx");
        }
        if (!IsPostBack)
        {
            st = @"SELECT TblRequest.RequestId, TblRequest.CompanyId, TblRequest.UserId, TblRequest.RequestDate, TblRequest.Status, TblUsers.FullName, TblUsers.EmailId, TblUsers.Mob,
                   TblUsers.Skills
                   FROM TblRequest INNER JOIN   TblUsers ON TblRequest.UserId = TblUsers.UserId where TblRequest.CompanyId=" + Session["CompanyId"] + "";
            db.fill_rptr_ret_sqlda(st, rpt);
        }
    }
    protected void rpt_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        HiddenField hfEmailId = (HiddenField)e.Item.FindControl("hfEmailId");
        HiddenField hfCompanyId = (HiddenField)e.Item.FindControl("hfCompanyId");
        if (e.CommandName == "View")
        {
            Response.Redirect("SendEmail.aspx?Id=" + e.CommandArgument + "&EmailId=" + hfEmailId.Value + "&CompanyId=" + hfCompanyId.Value);
        }
    }
}