using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VS_FinalAssignment
{
    public partial class UserShopPayment : System.Web.UI.Page
    {
        private DatabaseConnection dbcon;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userN"] == null)
            {
                Response.Redirect("UserLogin.aspx");
            }
            else
            {
                dbcon = new DatabaseConnection();
                string id = DateTime.Now.ToString("MMdd");
                DataTable dt = dbcon.getDataSQL("select * from cart inner join product on cart.id = product.id where login_id = '" + Session["userN"] + "'");
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    string query = "insert into history (login_id,order_id,id,quantity,status,created_at) values('" + Session["userN"] + "','" + id + "','" + dt.Rows[i]["id"] + "','" + dt.Rows[i]["quantity"] + "','Payment','" + DateTime.Now.ToString("dd/MM/yyyy hh:mm tt") + "');";
                    dbcon.executeSQL(query);
                    string query1 = "delete from cart where login_id='" + Session["userN"] + "'";
                    dbcon.executeSQL(query1);
                }
                Response.Redirect("UserShopViewHistory.aspx");
            }
        }
    }
}