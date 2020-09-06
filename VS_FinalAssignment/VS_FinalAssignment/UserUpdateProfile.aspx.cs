using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VS_FinalAssignment
{
    public partial class UserUpdateProfile : System.Web.UI.Page
    {
        private DatabaseConnection dbcon;

        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new DatabaseConnection();
            var login_id = Session["userN"];
            DataTable dt = dbcon.getDataSQL("select * from users where username='" + login_id + "';");

            if (login_id != null)
            {
                if (!IsPostBack)
                {
                    fullNameTxt.Text = dt.Rows[0]["fullname"].ToString();
                    EmailTxt.Text = dt.Rows[0]["email"].ToString();
                    UsernameTxt.Text = dt.Rows[0]["username"].ToString();
                    PasswordTxt.Text = dt.Rows[0]["password"].ToString();
                    ConfrimPasswordTxt.Text = dt.Rows[0]["password"].ToString();
                }
            }
            else
            {
                Response.Redirect("UserHome.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            var login_id = Session["userN"];
            DataTable dt1 = dbcon.getDataSQL("select * from users where username='" + login_id + "';");
            var id = dt1.Rows[0]["id"].ToString();


            if (fullNameTxt.Text.Equals("") || EmailTxt.Text.Equals("") || UsernameTxt.Text.Equals("") || PasswordTxt.Text.Equals("") || ConfrimPasswordTxt.Text.Equals(""))
            {
                Response.Write("<script>alert('Sorry... please fill out your information!')</script>");
            }
            else if (PasswordTxt.Text != ConfrimPasswordTxt.Text)
            {
                Response.Write("<script>alert('Sorry... the password not same!')</script>");
            }
            else
            {
                        try
                        {
                            string query = "update users set fullname = '" + fullNameTxt.Text + "' , email = '" + EmailTxt.Text + "', username = '" + UsernameTxt.Text + "', password = '" + PasswordTxt.Text + "', created_at = '" + DateTime.Now.ToString("dd/MM/yyyy hh:mm tt") + "' where id=" + id + ";";
                            dbcon.executeSQL(query);
                            Response.Write("<script>alert('Update Profile Successfully.');window.location = 'UserHome.aspx';</script>");
                        }
                        catch (Exception ex)
                        {
                            Response.Write("<script>alert('" + ex.ToString() + "')</script>");
                        }
            }
        }
    }
}