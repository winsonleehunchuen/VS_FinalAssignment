using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VS_FinalAssignment
{
    public partial class adminViewSalesOrder : System.Web.UI.Page
    {
        private DatabaseConnection dbcon;

        StringBuilder table = new StringBuilder();

        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new DatabaseConnection();
            DataTable dt = dbcon.getDataSQL("select h.history_id, h.login_id, h.order_id, p.image, h.quantity, h.status, h.created_at, (h.quantity * p.price) as total from history h, product p where h.id=p.id order by history_id ");
            int i = 1;

            table.Append("<table border='1' style='width:100%'>");
            table.Append("<tr><th>ID</th><th>Login ID</th><th>Order ID</th><th>Image</th><th>Quantity</th><th>Status</th><th>Created_at</th><th>Delete</th></tr>");

            foreach (DataRow dr in dt.Rows)
            {
                table.Append("<tr>");
                table.Append("<td>" + i + "</td><td>" + dr["login_id"].ToString() + "</td><td>" + dr["order_id"].ToString() + "</td><td>" + "<img src = 'upload/" + dr["image"] + "' width = 100px height = 100px >" + "</td><td>" + dr["quantity"].ToString() + "</td><td>" + dr["status"].ToString() + "</td><td>" + dr["created_at"].ToString() + "</td>");
                table.Append("<td>" + "<a href = 'adminDeleteSalesOrder.aspx?id=" + dr["history_id"] + "'><img src = 'images/delete.png' width = 22px height = 22px ></a>" + "</td>");
                table.Append("</tr>");
                i++;
            }
            table.Append("</table>");
            Panel1.Controls.Add(new Label { Text = table.ToString() });
        }
    }
}