using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
public partial class ViewProjectss : System.Web.UI.Page
{
    string st = "";
    mydb db = new mydb();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] == null)
        {
            Response.Redirect("Logout.aspx");
        }
        if (!IsPostBack)
        {
            st = @"SELECT  TblProjects.ProjectId, TblProjects.ProjectName, TblProjects.ProDescri, TblProjects.DeliveryDate, TblProjects.Skills, TblProjects.Amount,TblProjects.CompanyId,
                   TblCompany.CompanyName,TblProjects.Status
                   FROM TblCompany INNER JOIN  TblProjects ON TblCompany.CompanyId = TblProjects.CompanyId";

            db.fill_rptr_ret_sqlda(st, rpt);
        }
    }
    protected void rpt_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        HiddenField hfCompanyId = (HiddenField)e.Item.FindControl("hfCompanyId");
        Label lblStatus = (Label)e.Item.FindControl("lblStatus");
        if (e.CommandName == "Apply")
        {

            //st = "Select CompanyId,UserId from TblRequest where CompanyId=" + hfCompanyId.Value + " and UserId=" + Session["UserId"] + "";
            //dr = db.readall(st);
            //if (dr.Read())
            //{
            //    ScriptManager.RegisterStartupScript(this, this.GetType(), "", "<script>alert('U Already Applied For This Project')</script>", false);
            //}
            //else
            //{
            //    st = "Insert into TblRequest(CompanyId,UserId,RequestDate,Status) values";
            //    st += "(" + hfCompanyId.Value + "," + Session["UserId"] + ",GETDATE(),'Pending')";
            //    int x = db.ExeQuery(st);
            //    if (x > 0)
            //    {
            //        Response.Redirect("ProjectStatus.aspx");
            //        //ScriptManager.RegisterStartupScript(this, this.GetType(), "", "<script>alert('View Company')</script>", false);
            //    }
            //    else
            //    {
            //        ScriptManager.RegisterStartupScript(this, this.GetType(), "", "<script>alert('Try Again')</script>", false);
            //    }
            //}
            if (lblStatus.Text == "Pending")
            {
                Response.Redirect("BidProject.aspx?ProjectId=" + e.CommandArgument);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "<script>alert('This Biding has been closed')</script>", false);
            }
        }
    }
}