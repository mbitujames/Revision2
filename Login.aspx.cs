using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Revision2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email, password;
            email = Convert.ToString(txtemail.Text);
            password = Convert.ToString(txtpassword.Text);
            DataSet1TableAdapters.CustomerTableAdapter logn = new DataSet1TableAdapters.CustomerTableAdapter();
            DataTable dt = new DataTable();
            dt = logn.GetData(email, password);
            if(dt.Rows.Count >= 1)
            {
                lblconfirm.Text = "Authentication succesful";
            }
            else
            {
                lblconfirm.Text = "Unsuccessful";
            }
        }
    }
}