using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class user_MasterPage : System.Web.UI.MasterPage
{
    string s;
    string t;
    string[] a = new string[6];
    int tot = 0;
    int totcount = 0;
    //SqlConnection con = new SqlConnection(@"Data Source=208.91.198.196;Initial Catalog=onshop;User ID=ranjanakash;Password=NnAa16$$16");
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-IARI8GC\MSSQL;Initial Catalog=onshop;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from product_category";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        dd.DataSource = dt;
        dd.DataBind();
        con.Close();





        if (Request.Cookies["aa"] != null)
        {
            s = Convert.ToString(Request.Cookies["aa"].Value);
            string[] strarr = s.Split('|');
            for (int i = 0; i < strarr.Length; i++)
            {
                t = Convert.ToString(strarr[i].ToString());
                string[] strarr1 = t.Split(',');
                for (int j = 0; j < strarr1.Length; j++)
                {
                    a[j] = strarr1[j].ToString();
                }

              
                tot = tot + (Convert.ToInt32(a[2]) * Convert.ToInt32(a[3]));
                totcount = totcount + 1;
                
            }
            carttot.Text = totcount.ToString();
            carttotprice.Text  = tot.ToString();

        }
    }
}
