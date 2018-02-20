using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_adminlogin : System.Web.UI.Page
{
    
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-IARI8GC\MSSQL;Initial Catalog=onshop;Integrated Security=True");
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void b1_Click(object sender, EventArgs e)
    {
        i=0;

        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText="select * from admlg where usename='"+t1.Text+"' and password='"+t2.Text+"'";
        cmd.ExecuteNonQuery();

        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);

        i=Convert.ToInt32(dt.Rows.Count.ToString());

        if (i == 1)
        {
            Session["admin"] = t1.Text;
            Response.Redirect("product_add.aspx");
        }
        else
        {
            l1.Text = "YOU HAVE ENTERED  INVALID USERNAME OR PASSWORD";
        }
        con.Close();
    }
}