﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace VS_FinalAssignment
{
    public partial class UserRegister : System.Web.UI.Page
    {
        private DatabaseConnection dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new DatabaseConnection();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
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
                DataTable dt = dbcon.getDataSQL("select * from users where username='" + UsernameTxt.Text + "'");

                if (dt.Rows.Count > 0)
                {
                    Response.Write("<script>alert('Sorry... username is already taken!')</script>");    
                }
                else
                {
                    try
                    {
                        string query = "insert into users(fullname, email, username, password, user_type, created_at) values ('" + fullNameTxt.Text + "','" + EmailTxt.Text + "','" + UsernameTxt.Text + "','" + PasswordTxt.Text + "','user','" + DateTime.Now.ToString("dd/MM/yyyy hh:mm tt") + "');";
                        dbcon.executeSQL(query);
                        Session["userN"] = UsernameTxt.Text;
                        Response.Write("<script>alert('Register Successfully.');window.location = 'UserShopCart.aspx';</script>");
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.ToString());
                    }
                }
            }
        }
    }
}