using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace VS_FinalAssignment
{
    public partial class UserShopCart : System.Web.UI.Page
    {
        private DatabaseConnection dbcon;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new DatabaseConnection();
            
            if (!this.IsPostBack)
            {
                DataTable dt = dbcon.getDataSQL("select * from product;");
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            if (Session["userN"] == null)
            {
                Response.Redirect("UserLogin.aspx");
            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (Session["userN"] != null)
            {
                if (e.CommandName == "AddToCart")
                {
                    string product_id = e.CommandArgument.ToString();
                    DropDownList list = (DropDownList)e.Item.FindControl("DropDownList1");
                    int quantity = int.Parse(list.SelectedValue.ToString());
                    string query = "insert into cart(login_id,id,quantity,created_at) values('" + Session["userN"] + "','" + product_id + "','" + quantity + "','" + DateTime.Now.ToString("dd/MM/yyyy hh:mm tt") + "');";
                    dbcon.executeSQL(query);
                    Response.Write("<script>alert('Add Successfully.');window.location = 'UserShopCart.aspx';</script>");
                }
            }
            else
            {
                if (e.CommandName == "AddToCart")
                {
                    Response.Write("<script>alert('Please login before buy')</script>");
                }
            }
        }
    }
}