using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewBidingDetails : System.Web.UI.Page
{
    string st = "";
    mydb db = new mydb();
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            st = "Select ProjectId,ProjectName from TblProjects where Status='Pending' and CompanyId=" + Session["CompanyId"] + "";
            db.fill_drop_with_id(st, ddlProject);
        }
    }
    protected void btn_Click(object sender, EventArgs e)
    {

        SqlDataReader dr;
        st = @"SELECT        MIN(TblBid.Amt) AS Amt, TblBid.ProjectId, TblUsers.EmailId, TblProjects.ProjectName, TblProjects.ProDescri, TblProjects.DeliveryDate, TblProjects.Skills
FROM            TblBid INNER JOIN
                         TblUsers ON TblBid.UserId = TblUsers.UserId INNER JOIN
                         TblProjects ON TblBid.ProjectId = TblProjects.ProjectId
GROUP BY TblBid.ProjectId, TblUsers.EmailId, TblProjects.ProjectName, TblProjects.ProDescri, TblProjects.DeliveryDate, TblProjects.Skills";
        dr = db.readall(st);
        if (dr.Read())
        {
            st = "Update TblBid set Status='Rejected' where ProjectId=" + ddlProject.SelectedValue + "";
            x = db.ExeQuery(st);

            string EmailId = dr["EmailId"].ToString();

            st = "Update TblProjects set Status='Closed' where ProjectId=" + ddlProject.SelectedValue;
            db.ExeQuery(st);



            st = "Update TblBid set Status='Selected' where Amt='" + dr["Amt"] + "'";
            db.ExeQuery(st);
            if (x > 0)
            {
                string Body = "<b>Project Details</b>";
                Body += "<b>Project Name :</b>" + dr["ProjectName"].ToString() + "<br/>";
                Body += "<b>Project Description:</b>" + dr["ProDescri"].ToString() + "<br/>";
                Body += "<b>Skills :</b>" + dr["Skills"].ToString() + "<br/>";
                Body += "<b>DeliveryDate :</b>" + dr["DeliveryDate"].ToString() + "<br/>";
                Body += "<b>The Company has Seen Potential in You, So you Have been Selected to Do the above project. Please be punctual And deliver the Project within the Time :</b> <br/>";



                EmailClass.SendEmailId(dr["EmailId"].ToString(), "Biding Details", Body);
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "", "<script>alert('Invalid EmailId or Password')</script>", false);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "<script>alert('Invalid EmailId or Password')</script>", false);

            }
        }
    }
    protected void ddlProject_SelectedIndexChanged(object sender, EventArgs e)
    {
        st = @"SELECT        TblBid.ProjectId, TblUsers.FullName, TblUsers.Mob, TblUsers.EmailId, TblUsers.Experience, TblBid.Amt, TblBid.UserId, TblBid.Status, TblBid.BidId
FROM            TblBid INNER JOIN
                         TblUsers ON TblBid.UserId = TblUsers.UserId
WHERE        (TblBid.ProjectId = " + ddlProject.SelectedValue + ") AND (TblBid.Status IS NULL)";
        db.fill_rptr_ret_sqlda(st, rpt);
    }
}