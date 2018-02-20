using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class user_update_order_details : System.Web.UI.Page
{
    //SqlConnection con = new SqlConnection(@"Data Source=208.91.198.196;Initial Catalog=onshop;User ID=ranjanakash;Password=NnAa16$$16");
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-IARI8GC\MSSQL;Initial Catalog=onshop;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("login1.aspx");
        }

        if (IsPostBack)
        {
            return;
        }
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from registration where email='" + Session["user"].ToString() + "'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach(DataRow dr in dt.Rows)
        {
            t1.Text = dr["firstname"].ToString();
            t2.Text = dr["lastname"].ToString();
            t3.Text = dr["address"].ToString();
            t4.Text = dr["city"].ToString();
            t5.Text = dr["state"].ToString();
            t6.Text = dr["mobile"].ToString();

        }
        con.Close();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update registration set firstname='"+t1.Text+"',lastname='"+t2.Text+"',address='"+t3.Text+"', city='"+t4.Text+"',state='"+t5.Text+"',mobile='"+t6.Text+"'  where email='" + Session["user"].ToString() + "'";
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("payment_gateway.aspx");

    }
}