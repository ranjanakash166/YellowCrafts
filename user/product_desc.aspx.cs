using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class user_product_desc : System.Web.UI.Page
{

    //SqlConnection con = new SqlConnection(@"Data Source=208.91.198.196;Initial Catalog=onshop;User ID=ranjanakash;Password=NnAa16$$16");
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-IARI8GC\MSSQL;Initial Catalog=onshop;Integrated Security=True");
    int id, qty;
    string product_name, product_desc, product_price, product_qty, product_img;

    public int get_qty(int id)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from product where id=" + id + "";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            qty = Convert.ToInt32(dr["product_qty"].ToString());

        }
        return qty;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"]==null)
        {
            Response.Redirect("display_item.aspx");
        }
        else
        {

            id = Convert.ToInt32(Request.QueryString["id"].ToString());
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from product where id="+id+"";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            d1.DataSource = dt;
            d1.DataBind();
            con.Close();
        }
            qty = get_qty(id);
            if (qty == 0)
            {
                l2.Visible = false;
                t1.Visible = false;
                b1.Visible = false;
                l1.Text = "There is No Available Quantity for this Item";
            }   
    }
    protected void b1_click(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from product where id=" + id + "";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            product_name = dr["product_name"].ToString();
            product_desc = dr["product_desc"].ToString();
            product_price = dr["product_price"].ToString();
            product_qty = t1.Text;
            product_img = dr["product_img"].ToString();
        }


        if (Convert.ToInt32(t1.Text) > Convert.ToInt32(product_qty))
        {
            l1.Text = "Please Enter Lower Quantity";
        }
        else
        {
           

            if (Request.Cookies["aa"] == null)
            {
                Response.Cookies["aa"].Value = product_name.ToString() + "," + product_desc.ToString() + "," + product_price.ToString() + "," +product_qty.ToString() + "," + product_img.ToString() + "," + id.ToString();
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
                if (Session["user"] != null)
                {
                    SqlCommand cmd1 = con.CreateCommand();
                    cmd1.CommandType = CommandType.Text;
                    cmd1.CommandText = "update product set product_qty=product_qty-" + t1.Text + "where id=" + id;
                    cmd1.ExecuteNonQuery();
                    Response.Redirect("product_desc.aspx?id=" + id.ToString());
                }
                else
                {
                    Response.Redirect("view_cart.aspx");
                }

            }
            else
            {
                Response.Cookies["aa"].Value = Response.Cookies["aa"].Value + "|" + product_name.ToString() + "," + product_desc.ToString() + "," + product_price.ToString() + "," +product_qty.ToString() + "," + product_img.ToString() + "," + id.ToString();
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
            if (Session["user"] != null)
            {
                SqlCommand cmd1 = con.CreateCommand();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "update product set product_qty=product_qty-" + t1.Text + "where id=" + id;
                cmd1.ExecuteNonQuery();
                Response.Redirect("product_desc.aspx?id=" + id.ToString());
            }
            else
            {
                Response.Redirect("view_cart.aspx");
            }
            }
           
        }

       
    }
   

}