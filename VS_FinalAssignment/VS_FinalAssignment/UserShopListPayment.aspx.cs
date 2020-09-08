using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VS_FinalAssignment
{
    public partial class UserShopListPayment : System.Web.UI.Page
    {
        private DatabaseConnection dbcon;

        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new DatabaseConnection();

            if (!this.IsPostBack)
            {
                DataTable dt = dbcon.getDataSQL("select *, (quantity * price) as total from cart inner join product on cart.id=product.id where login_id='" + Session["userN"] + "'");
                DataTable dt1 = dbcon.getDataSQL("select sum(quantity * price) as total from cart inner join product on cart.id=product.id where login_id = '" + Session["userN"] + "'");
                cart_total.InnerText = dt1.Rows[0]["total"].ToString();
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
            if (e.CommandName == "Delete")
            {
                string cart_id = e.CommandArgument.ToString();
                string query = "delete from cart where cart_id=" + cart_id;
                dbcon.executeSQL(query);
                Response.Write("<script>alert('Delete Item.');window.location = 'UserShopListPayment.aspx';</script>");
            }
        }

        public int total()
        {
            int Total = int.Parse(cart_total.InnerText.ToString());
            return Total;
        }

    }
}