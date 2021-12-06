using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Revision2
{
    public partial class Revision11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncreateaccount_Click(object sender, EventArgs e)
        {
            string sql,email,password,name,title;
            int id;
            title = ddltitle.SelectedValue;
            id = Convert.ToInt32(txtidno.Text);
            email = Convert.ToString(txtemail);
            password = Convert.ToString(txtpassword);
            name = Convert.ToString(txtfnames);
            sql = "insert into Customer(id,name,email,password,title)values('" + id + "','" + name + "','" + email + "','" + password + "','" + title + "')";
            db.con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = db.con;
            cmd.CommandText = sql;
            cmd.ExecuteNonQuery();
            db.con.Close();
        }
    }
}