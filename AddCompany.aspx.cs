using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
public partial class AddCompany : System.Web.UI.Page
{
    
    string st = "";
    mydb db = new mydb();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminId"] == null)
        {
            Response.Redirect("logout.aspx");
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        st = "Insert into TblCompany(CompanyName,ContactNo,Address,EmailId,Password) values";
        st += "('" + txtCompanyName.Text + "','" + txtContact.Text + "','" + txtAddress.Text + "','" + txtEmailId.Text + "','" + txtPassword.Text + "')";
        int x = db.ExeQuery(st);
        if (x > 0)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Company Added');", true);

        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Try Again');", true);

        }
    }
}