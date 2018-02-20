using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class user_payment_gateway : System.Web.UI.Page
{
    int tot = 0;
    string s;
    string t;
    string[] a = new string[6];
    string order_no;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("login1.aspx");
        }

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


                tot = tot + (Convert.ToInt32(a[2].ToString()) * Convert.ToInt32(a[3].ToString()));

            }
            Session["tot"] = tot.ToString();
        }

      
        order_no = Class1.GetRandomPassword(10).ToString();
        Session["order_no"] = order_no.ToString();
      


        Response.Redirect("final_conf.aspx");
    }
}