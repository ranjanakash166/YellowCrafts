using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class user_view_cart : System.Web.UI.Page
{
    string s;
    string t;
    string [] a=new string[6];
    int tot = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

        DataTable dt = new DataTable();
        dt.Columns.AddRange(new DataColumn[7] { new DataColumn("product_name"), new DataColumn("product_desc"), new DataColumn("product_price"), new DataColumn("product_qty"), new DataColumn("product_img"), new DataColumn("id"), new DataColumn("product_id") });
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
                    Response.Write(a[j]);
                }

                dt.Rows.Add(a[0], a[1], a[2], a[3], a[4], i.ToString(), a[5]);
                tot = tot + (Convert.ToInt32(a[2]) * Convert.ToInt32(a[3]));
            }
           
        }
        d1.DataSource = dt;
        d1.DataBind();
        l1.Text ="You Have to Pay = " + tot.ToString();
    }
    protected void b1_Click(object sender, EventArgs e)
    {
        Session["checkoutbutton"] = "yes"; 
        Response.Redirect("checkout.aspx");
    }
}