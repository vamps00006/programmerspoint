using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AddProjects : System.Web.UI.Page
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
        if (!IsPostBack)
        {
            for (int i = 0; i <= 25; i++)
            {
                ddlExp.Items.Add(i.ToString());
            }
            ddlExp.Items.Insert(0, "Select");
            ddlExp.Items.Insert(1, "Fresher");
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        st = "Insert into TblProjects(ProjectName,ProDescri,DeliveryDate,Skills,Amount,Status,CompanyId,Exp) values";
        st += "('" + txtProjectName.Text + "','" + txtProjectDesc.Text + "','" + txtprodate.Text + "','" + txtSills.Text + "','" + txtAmt.Text + "','Pending'," + Session["CompanyId"] + ",'" + ddlExp.SelectedItem.Text + "')";
        int x = db.ExeQuery(st);
        if (x > 0)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Project Details Added');", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Try Again');", true);
        }
    }
}