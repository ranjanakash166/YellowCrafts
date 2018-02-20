using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_regcheck : System.Web.UI.Page
{
    // SqlConnection conn = new SqlConnection(@"Data Source=208.91.198.196;Initial Catalog=sig;User ID=grv;Password=ATat16$$");
    protected void Page_Load(object sender, EventArgs e)
    {
        /*if (!IsPostBack)
        {
            name.Text = "";
            email.Text = "";
            pass.Text = "";
            cnf_pass.Text = "";
        }*/
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        /* if (pass.Text == cnf_pass.Text)
         {
             if (name.Text=="")
             {
                 Label1.CssClass = "label label-danger";
                 Label1.Text = "Name field cannot be empty";
             }
             else
                 if (pass.Text == "")
                 {
                     Label1.CssClass = "label label-danger";
                     Label1.Text = "Password field cannot be empty";
                 }
                 else
                     if (email.Text == "")
                     {
                         Label1.CssClass = "label label-danger";
                         Label1.Text = "Email field cannot be empty";
                     }
                     else
                     {
                         SqlCommand insert = new SqlCommand("insert into signup(name, email, password) values(@name, @email, @password)", conn);
                         SqlCommand insert2 = new SqlCommand("insert into signin(email, password) values(@email, @password)", conn);
                         insert.Parameters.AddWithValue("@name", name.Text);
                         insert.Parameters.AddWithValue("@email", email.Text);
                         insert.Parameters.AddWithValue("@password", pass.Text);
                         insert2.Parameters.AddWithValue("@email", email.Text);
                         insert2.Parameters.AddWithValue("@password", pass.Text);
                         try
                         {
                             conn.Open();
                             insert.ExecuteNonQuery();
                             insert2.ExecuteNonQuery();
                          

                             name.Text = "";
                             email.Text = "";
                             pass.Text = "";
                             cnf_pass.Text = "";
                             Response.Redirect("success.aspx");
                         }
                         catch (Exception ex)
                         {
                             Label1.CssClass = "label label-danger";
                             Label1.Text = "Sorry We are unable to process right now , Please try after some time";
                         }
                         finally
                         {
                             conn.Close();
                         }
                     }
         }
         else
         {
             Label1.CssClass = "label label-danger";
             Label1.Text="Password and Confirm Password not same";
         }
     }*/
    }
}