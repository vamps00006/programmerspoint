using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BidProject : System.Web.UI.Page
{
    string st = "";
    mydb db = new mydb();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //st = "Select ProjectId,ProjectName from TblProjects where Status='Pending'";
            //db.fill_drop_with_id(st, ddlProject);
            Fillrpt();
        }
    }
    void Fillrpt()
    {
        st = @"SELECT    TblBid.BidId, TblBid.ProjectId, TblBid.Amt, TblBid.UserId, TblBid.Status, TblUsers.FullName
FROM            TblBid INNER JOIN
                         TblUsers ON TblBid.UserId = TblUsers.UserId WHERE        (TblBid.ProjectId = " + Request.QueryString["ProjectId"] + ")";
        db.fill_rptr_ret_sqlda(st, rpt);
    }
    protected void btn_Click(object sender, EventArgs e)
    {


        st = "Select * from TblBid where ProjectId=" + Request.QueryString["ProjectId"] + " and UserId=" + Session["UserId"] + "";
        dr = db.readall(st);
        if(dr.Read())
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "", "<script>alert('U Have Bid Amount')</script>", false);
        }
        else
        {
            st = "Insert into TblBid(ProjectId,Amt,UserId) values";
            st += "(" + Request.QueryString["ProjectId"] + "," + txtAmt.Text + "," + Session["UserId"] + ")";
            int x = db.ExeQuery(st);
            if (x > 0)
            {
                txtAmt.Text = "";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "<script>alert('Added Biding Amount')</script>", false);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "<script>alert('Try Again')</script>", false);
            }
        }
        
        Fillrpt();
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        //        st = @"SELECT        MIN(Amt) AS Amt, ProjectId
        //               FROM            TblBid Where ProjectId='" + Request.QueryString["ProjectId"] + "'   GROUP BY ProjectId";
        //        dr = db.readall(st);
        //        if (dr.Read())
        //        {

        //            st = "Update TblBid set Status='Selected' where Amt='" + dr["Amt"] + "'";
        //            db.ExeQuery(st);
        //        }
    }
}