using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace VS_FinalAssignment
{
    public partial class UserLogin : System.Web.UI.Page
    {
        DatabaseConnection dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new DatabaseConnection();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string username = usernameTxt.Text.ToString();
            string password = passwordTxt.Text.ToString();

            DataTable dt = dbcon.getDataSQL("select * from users where username = '" + username + "' and password= '" + password + "';");
            if (dt.Rows.Count > 0)
            {
                if (dt.Rows[0]["user_type"].ToString() == "admin")
                {
                    Response.Write("<script>alert('Login Successfully.');window.location = 'adminViewProduct.aspx';</script>");
                    Session["adminN"] = username;
                }
                else
                {
                    Session["userN"] = username;
                    Response.Write("<script>alert('Login Successfully.');window.location = 'UserShop.aspx';</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Login Fail!')</script>");
            }
        }
    }
}