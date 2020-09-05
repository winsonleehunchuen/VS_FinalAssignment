using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

namespace VS_FinalAssignment
{
    public partial class adminEditProduct : System.Web.UI.Page
    {
        private DatabaseConnection dbcon;

        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new DatabaseConnection();
            var id = Request.QueryString["id"];
            DataTable dt = dbcon.getDataSQL("select * from product where id='" + id + "';");

            if (id != null)
            {
                if (!IsPostBack)
                {
                    name.Text = dt.Rows[0]["name"].ToString();
                    price.Text = dt.Rows[0]["price"].ToString();
                    description.InnerText = dt.Rows[0]["description"].ToString();
                }
            }
            else
            {
                Response.Redirect("adminViewProduct.aspx");
            }   
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string filename = Path.GetFileName(FileUpload1.FileName);
            var id = Request.QueryString["id"];

            if (name.Text.Equals("") || price.Text.Equals("") || description.InnerText.Equals(""))
            {
                Response.Write("<script>alert('Sorry... please fill out your information!')</script>");
            }
            else
            {

                if (FileUpload1.HasFile)
                {
                    try
                    {
                        FileUpload1.SaveAs(Server.MapPath("upload/") + filename);
                        string query = "update product set name = '" + name.Text + "' , price = '" + price.Text + "', description = '" + description.InnerText + "', image = '" + filename + "', created_at = '" + DateTime.Now.ToString("dd/MM/yyyy hh:mm tt") + "' where id=" + id + ";";
                        dbcon.executeSQL(query);
                        Response.Write("<script>alert('Update Successfully.');window.location = 'adminViewProduct.aspx';</script>");
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('" + ex.ToString() + "')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Sorry... you have not uploaded any product image yet!')</script>");
                }
            }
        }
    }
}