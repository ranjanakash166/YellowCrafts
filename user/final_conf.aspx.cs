using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Collections.Specialized;
using System.Net;
using System.Text;
using System.IO;
public partial class user_final_conf : System.Web.UI.Page
{
   //SqlConnection con = new SqlConnection(@"Data Source=208.91.198.196;Initial Catalog=onshop;User ID=ranjanakash;Password=NnAa16$$16");
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-IARI8GC\MSSQL;Initial Catalog=onshop;Integrated Security=True");
    string order = "",order_id,s,t;
    string[] a = new string[6];
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void func()
    {
        

        //My authentication key
        string authKey = "145209AMhH0borsW58cabe7d";
        //Multiple mobiles numbers separated by comma
        string str = Session["mobile"].ToString();

        string mobileNumber = str;
        //Sender ID,While using route4 sender id should be 6 characters long.
        string senderId = "Ycraft";
        //Your message to send, Add URL encoding here.
        string message = HttpUtility.UrlEncode(" Thank You for Placing Order With YellowCrafts = "+"Product-Name = "+Session["pname"]+"\n"+"Total price= "+Session["pprice"]+"\n"+"Product Quantity = "+Session["pq"] +
            "We are getting Your order ready.It will be delivered soon");

        //Prepare you post parameters
        StringBuilder sbPostData = new StringBuilder();
        sbPostData.AppendFormat("authkey={0}", authKey);
        sbPostData.AppendFormat("&mobiles={0}", mobileNumber);
        sbPostData.AppendFormat("&message={0}", message);
        sbPostData.AppendFormat("&sender={0}", senderId);
        sbPostData.AppendFormat("&route={0}", "4");

        try
        {
            //Call Send SMS API
            string sendSMSUri = "https://control.msg91.com/api/sendhttp.php";
            //Create HTTPWebrequest
            HttpWebRequest httpWReq = (HttpWebRequest)WebRequest.Create(sendSMSUri);
            //Prepare and Add URL Encoded data
            UTF8Encoding encoding = new UTF8Encoding();
            byte[] data = encoding.GetBytes(sbPostData.ToString());
            //Specify post method
            httpWReq.Method = "POST";
            httpWReq.ContentType = "application/x-www-form-urlencoded";
            httpWReq.ContentLength = data.Length;
            using (Stream stream = httpWReq.GetRequestStream())
            {
                stream.Write(data, 0, data.Length);
            }
            //Get the response
            HttpWebResponse response = (HttpWebResponse)httpWReq.GetResponse();
            StreamReader reader = new StreamReader(response.GetResponseStream());
            string responseString = reader.ReadToEnd();

            //Close the response
            reader.Close();
            response.Close();
        }
        catch (SystemException ex)
        {
            Response.Write(ex.Message.ToString());
        }

    }

    protected void func1()
    {
        ///Send SMS using C#

        //Your authentication key
        string authKey = "145209AMhH0borsW58cabe7d";
        //Multiple mobiles numbers separated by comma
    

        string mobileNumber ="9955315543,7254888235";
        //Sender ID,While using route4 sender id should be 6 characters long.
        string senderId = "Ycraft";
        //Your message to send, Add URL encoding here.
        string message = HttpUtility.UrlEncode("An order has been placed = " + "Name = " + Session["firstname"] + " " + Session["lastname"] + "\n" + "email = " + Session["email"] + "\n" + "mobile = " + Session["mobile"] + "\n" + "state = " + Session["state"] + "\n" + "city = " + Session["city"]  +"\n" + "pincode = " + Session["pincode"]);

 
        //Prepare you post parameters
        StringBuilder sbPostData = new StringBuilder();
        sbPostData.AppendFormat("authkey={0}", authKey);
        sbPostData.AppendFormat("&mobiles={0}", mobileNumber);
        sbPostData.AppendFormat("&message={0}", message);
        sbPostData.AppendFormat("&sender={0}", senderId);
        sbPostData.AppendFormat("&route={0}", "4");

        try
        {
            //Call Send SMS API
            string sendSMSUri = "https://control.msg91.com/api/sendhttp.php";
            //Create HTTPWebrequest
            HttpWebRequest httpWReq = (HttpWebRequest)WebRequest.Create(sendSMSUri);
            //Prepare and Add URL Encoded data
            UTF8Encoding encoding = new UTF8Encoding();
            byte[] data = encoding.GetBytes(sbPostData.ToString());
            //Specify post method
            httpWReq.Method = "POST";
            httpWReq.ContentType = "application/x-www-form-urlencoded";
            httpWReq.ContentLength = data.Length;
            using (Stream stream = httpWReq.GetRequestStream())
            {
                stream.Write(data, 0, data.Length);
            }
            //Get the response
            HttpWebResponse response = (HttpWebResponse)httpWReq.GetResponse();
            StreamReader reader = new StreamReader(response.GetResponseStream());
            string responseString = reader.ReadToEnd();

            //Close the response
            reader.Close();
            response.Close();
        }
        catch (SystemException ex)
        {
            Response.Write(ex.Message.ToString());
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

      
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from registration where email='" + Session["user"].ToString() + "'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "insert into orders values('" + dr["firstname"].ToString() + "','" + dr["lastname"].ToString() + "','" + dr["email"].ToString() + "','" + dr["address"].ToString() + "','" + dr["city"].ToString() + "','" + dr["state"].ToString() + "','" + dr["pincode"].ToString() + "','" + dr["mobile"].ToString() + "')";
            Session["firstname"] = dr["firstname"].ToString();
            Session["lastname"] = dr["lastname"].ToString();
            Session["email"] = dr["email"].ToString();
            Session["address"] = dr["address"].ToString();
            Session["city"] = dr["city"].ToString();
            Session["state"] = dr["state"].ToString();
            Session["pincode"] = dr["pincode"].ToString();
            Session["mobile"] = dr["mobile"].ToString();
            cmd1.ExecuteNonQuery();
        }


        //end storing user details
        // now we are going to get order id from  order table
        SqlCommand cmd2 = con.CreateCommand();
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = "select top 1 *from orders where email='" + Session["user"].ToString() + "' order by id desc";
        cmd2.ExecuteNonQuery();
        DataTable dt2 = new DataTable();
        SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
        da2.Fill(dt2);
        foreach (DataRow dr2 in dt2.Rows)
        {
            order_id = dr2["id"].ToString();
        }
        //ending of getting order id
        //this is for gettng ordered items from cookies
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
                SqlCommand cmd3 = con.CreateCommand();
                cmd3.CommandType = CommandType.Text;
                cmd3.CommandText = "insert into order_details1 values('" + order_id.ToString() + "','" + Session["order_no"] + "','" + a[0].ToString() + "','" + a[2].ToString() + "','" + a[3].ToString() + "','" + a[4].ToString() + "')";
                Session["pname"] = a[0].ToString();
                Session["pprice"] = a[2].ToString();
                Session["pq"] = a[3].ToString();
                cmd3.ExecuteNonQuery();
                func();
                func1();
            }

        }
        else
        {
            Response.Redirect("login1.aspx");
        }
        con.Close();
        Session["user"] = "";
        Response.Cookies["aa"].Expires = DateTime.Now.AddDays(-1);
        Response.Cookies["aa"].Expires = DateTime.Now.AddDays(-1);
        Response.Redirect("order_success.aspx");
    }


}
