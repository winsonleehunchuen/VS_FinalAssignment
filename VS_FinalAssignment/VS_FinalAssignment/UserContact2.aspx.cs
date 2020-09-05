using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace VS_FinalAssignment
{
    public partial class UserContact2 : System.Web.UI.Page
    {
        DatabaseConnection dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new DatabaseConnection();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (fullnametxt.Text.Equals("") || emailtxt.Text.Equals("") || msgtxt.InnerText.Equals(""))
            {
                Response.Write("<script>alert('Sorry... please fill out your information!')</script>");
            }
            else
            {
                    try
                    {
                        string query = "insert into feedback(fullname, email, message) values ('" + fullnametxt.Text + "','" + emailtxt.Text + "','" + msgtxt.InnerText + "');";
                        dbcon.executeSQL(query);
                        Response.Write("<script>alert('Thank you for your valuable feedback.');window.location = 'UserHome.aspx';</script>");
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.ToString());
                    }
                
            }
        }
    }
}