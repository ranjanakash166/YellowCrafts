using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class signin : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    SqlConnection con = new SqlConnection(@"Data Source=208.91.198.196;Initial Catalog=sig;User ID=grv;Password=ATat16$$");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "SELECT name,email,password FROM signup where email='" + email.Text + "' and password='" + pass.Text + "' ";
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session.Add("User", dt.Rows[0][0].ToString());
            Label1.Text = "Welcome " + Convert.ToString(dt.Rows[0][0]);
            Session.Add("UserEmail", dt.Rows[0][1].ToString());
            Session["name"] = dt.Rows[0][0].ToString();
            Response.Redirect("success.aspx");
        }
        else
        {
            Label1.CssClass = "label label-danger";
            Label1.Text = "Invalid username or password";
        }
    }
}