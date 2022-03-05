using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CompanyLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        mydb db = new mydb();
        string st = "";
        SqlDataReader dr;
       
        if (ddlUserType.SelectedItem.Text == "Admin")
        {
            if(txtUserName.Text=="admin" && txtPassword.Text=="admin")
            {
                Session["AdminId"] = "AdminId";
                Response.Redirect("AddCompany.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "<script>alert('Invalid EmailId or Password')</script>", false);
            }
        }
        else if (ddlUserType.SelectedItem.Text == "Company")
        {
            st = "Select * from tblCompany where EmailId='" + txtUserName.Text + "'  and Password='" + txtPassword.Text + "'";
            dr = db.readall(st);
            if (dr.Read())
            {
                Session["CompanyId"] = dr["CompanyId"].ToString();
                Response.Redirect("AddProjects.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "<script>alert('Invalid EmailId or Password')</script>", false);
            }
        }
        else if (ddlUserType.SelectedItem.Text == "Coder")
        {
            st = "Select * from TblUsers where EmailId='" + txtUserName.Text + "'  and Password='" + txtPassword.Text + "'";
            dr = db.readall(st);
            if (dr.Read())
            {
                Session["UserId"] = dr["UserId"].ToString();
                Response.Redirect("ViewProjectss.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "", "<script>alert('Invalid EmailId or Password')</script>", false);
            }
        }

    }
}