using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class user_display_order : System.Web.UI.Page
{
    //SqlConnection con = new SqlConnection(@"Data Source=208.91.198.196;Initial Catalog=onshop;User ID=ranjanakash;Password=NnAa16$$16");
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-IARI8GC\MSSQL;Initial Catalog=onshop;Integrated Security=True");
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("login1.aspx");
        }
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        Response.Write(Session["user"].ToString());

        cmd.CommandText = "select * from orders where email='"+Session["user"].ToString()+"' order by id desc";
       
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        r1.DataSource = dt;
        r1.DataBind();
        con.Close();
    }
}