using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShowCompanyDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            string st = "Select * from tblCompany";
           mydb db = new mydb();
            db.fill_rptr_ret_sqlda(st, rpt);
        }
    }
}