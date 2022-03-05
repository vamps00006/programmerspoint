using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
public partial class ProjectStatus : System.Web.UI.Page
{
    string st = "";
    mydb db = new mydb();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
//            st = @"SELECT     TblRequest.Status,  TblProjects.ProjectId, TblProjects.ProjectName, TblProjects.ProDescri, TblProjects.DeliveryDate, TblProjects.Skills, TblProjects.Amount, TblCompany.CompanyName
//FROM            TblCompany INNER JOIN
//                         TblProjects ON TblCompany.CompanyId = TblProjects.CompanyId INNER JOIN
//                         TblRequest ON TblCompany.CompanyId = TblRequest.CompanyId
//WHERE        (TblRequest.UserId = " + Session["UserId"] + ")";

            st = @"SELECT DISTINCT TblBid.ProjectId, TblProjects.ProjectName, TblProjects.DeliveryDate, TblProjects.ProDescri, TblProjects.Skills, TblProjects.Exp, TblBid.Status, TblBid.UserId, TblCompany.CompanyName
FROM            TblBid INNER JOIN
                         TblProjects ON TblBid.ProjectId = TblProjects.ProjectId INNER JOIN
                         TblCompany ON TblProjects.CompanyId = TblCompany.CompanyId
                   WHERE        (TblBid.UserId = " + Session["UserId"] + ")";
            db.fill_rptr_ret_sqlda(st, rpt);
        }
    }
}