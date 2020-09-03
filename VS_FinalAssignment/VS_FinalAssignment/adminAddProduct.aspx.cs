using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace VS_FinalAssignment
{
    public partial class adminAddProduct : System.Web.UI.Page
    {
        private DatabaseConnection dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new DatabaseConnection();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string filename = Path.GetFileName(FileUpload1.FileName);

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
                        string query = "insert into product(name, price, description, image, created_at) values ('" + name.Text + "','" + price.Text + "','" + description.InnerText + "','" + filename + "','" + DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss") + "');";
                        dbcon.executeSQL(query);
                        Response.Write("<script>alert('New Product has been added successfully.')</script>");
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


/*string filename = Path.GetFileName(FileUpload1.FileName);

            if (name.Text.Equals("") || price.Text.Equals("") || description.InnerText.Equals(""))
            {
                Response.Write("<script>alert('Sorry... Please insert again!')</script>");
            }
            else
            {  

                if (FileUpload1.HasFile)
                {
                    try
                    {
                        FileUpload1.SaveAs(Server.MapPath("upload/") + filename);
                        string query = "insert into product(name, price, description, image, created_at) values ('" + name.Text + "','" + price.Text + "','" + description.InnerText + "','" + filename + "','" + DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss") + "');";
dbcon.executeSQL(query);
                        Response.Write("<script language='javascript'>window.alert('Profile image updated successfully.');window.location='User_Profile_Image.aspx';</script>");
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('" + ex.ToString() + "')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Oops...you have not uploaded any product image yet.')</script>");
                }

            }*/

/*protected void Add_product_Click(object sender, EventArgs e)
{
    string p_name = p_name_txt.Text.ToString();
    string p_desc = p_desc_txt.Value.ToString();
    string p_image = Path.GetFileName(FileUploadControl.FileName);
    string p_price = p_price_txt.Text.ToString();
    string p_quantity = p_quantity_txt.Text.ToString();

    if (FileUploadControl.HasFile)
    {
        if (p_name != "" && p_desc != "" && p_price != "" && p_quantity != "")
        {
            try
            {
                FileUploadControl.SaveAs(Server.MapPath("../../assets/img/product/") + p_image);
                dbcon = new DatabaseConnection();
                string query = "insert into product(product_name, product_description, product_image, product_price, product_quantity) values('" + p_name + "', '" + p_desc + "','" + p_image + "','" + p_price + "','" + p_quantity + "')";
                dbcon.executeSQL(query);
                Response.Write("<script language='javascript'>window.alert('New Product has been added successfully.');window.location='View_Product.aspx';</script>");

                p_name_txt.Text = "";
                p_desc_txt.InnerText = "";
                p_price_txt.Text = "";
                p_quantity_txt.Text = "";
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.ToString() + "')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Oops...you have not fill out all product information yet.')</script>");
        }
    }
    else
    {
        Response.Write("<script>alert('Oops...you have not uploaded any product image yet.')</script>");
    }
}*/

/*string path = Server.MapPath("upload/");

                    if (FileUpload1.HasFile)
                    {
                        string ext = Path.GetExtension(FileUpload1.FileName);
                        if (ext == ".jpg" || ext == ".png")
                        {
                            FileUpload1.SaveAs(path + FileUpload1.FileName);
                            string name1 = "upload/" + FileUpload1.FileName;
                            string query = "insert into product(name, price, description, image, created_at) values ('" + name.Text + "','" + price.Text + "','" + description.InnerText + "','" + name1 + "','" + DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss") + "');";
                            dbcon.executeSQL(query);
                            Label1.Text = "success";
                        }
                        else
                        {
                            Label1.Text = "You have to upload jpg or png file only!";
                        }
                        
                    }
                    else
                    {
                        Label1.Text = "Plz upload the image!!!!";
                    }*/
