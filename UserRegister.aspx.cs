using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class UserRegister : System.Web.UI.Page
{
    SqlDataReader dr;
    string st = "";
    mydb db = new mydb();
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            st = "Select QualificationId,Qualification from TblQualification";
            db.fill_drop_with_id(st, ddlQualification);


            for (int i = 0; i <= 25; i++)
            {
                ddlExperience.Items.Add(i.ToString());

            }
            ddlExperience.Items.Insert(0, "Select");
            ddlExperience.Items.Insert(1, "Fresher");
        }
    }
    void ClearAll()
    {
        txtDob.Text = txtEmailId.Text = txtFullName.Text = txtMob.Text = txtPassword.Text = "";
        ddlGender.ClearSelection();
        ddlQualification.ClearSelection();
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {

        int x = 0;
        st = "Insert into TblUsers(FullName,Gender,DOB,Qualifi,Mob,EmailId,Password,Skills,Experience) values";
        st += "('" + txtFullName.Text + "','" + ddlGender.SelectedItem.Text + "','" + txtDob.Text + "','" + ddlQualification.SelectedItem.Text + "','" + txtMob.Text + "','" + txtEmailId.Text + "','" + txtPassword.Text + "','" + txtSkills.Text + "','" + ddlExperience.SelectedItem.Text + "')";
        x = db.ExeQuery(st);
        if (x > 0)
        {
            txtDob.Text = txtEmailId.Text = txtFullName.Text = txtMob.Text = txtPassword.Text = "";
            ddlGender.ClearSelection();
            ddlQualification.ClearSelection();
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Register Successfully.');", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Try again');", true);
        }
    }
    protected void txtDob_TextChanged(object sender, EventArgs e)
    {

    }
}