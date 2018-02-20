using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
public partial class user_order_success : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["firstname"] != null && Session["lastname"]!=null)
        {
            Label1.Text = Session["firstname"].ToString()+" "+Session["lastname"].ToString();
        }
    }
    protected void billgen_Click(object sender, EventArgs e)
    {

        try
        {
            Document pdfDoc = new Document(PageSize.A4, 25, 10, 25, 10);
            PdfWriter pdfWriter = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            Paragraph Text = new Paragraph("Thank You for Placing Order With YellowCrafts" + "\n" + "Your Order Details are as Follows=" + "\n" + "Product-Name = " + Session["pname"] + "\n" + "Total price= " + Session["pprice"] + "\n" + "Product Quantity = " + Session["pq"]);
            pdfDoc.Add(Text);
            pdfWriter.CloseStream = false;
            pdfDoc.Close();
            Response.Buffer = true;
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=Bill.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Write(pdfDoc);
            Response.End();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }  
    }
}