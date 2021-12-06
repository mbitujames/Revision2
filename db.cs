using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Revision2
{
    public class db
    {
        public static SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\MBITU\source\repos\Revision2\App_Data\banking.mdf;Integrated Security=True");
    }
}