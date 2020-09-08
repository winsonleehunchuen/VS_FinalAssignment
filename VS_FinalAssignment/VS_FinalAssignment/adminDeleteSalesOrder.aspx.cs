using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VS_FinalAssignment
{
    public partial class adminDeleteSalesOrder : System.Web.UI.Page
    {
        private DatabaseConnection dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new DatabaseConnection();
            var id = Request.QueryString["id"];
            if (id != null)
            {
                string query = "delete from history where history_id=" + id;
                dbcon.executeSQL(query);
                Response.Redirect("adminViewSalesOrder.aspx");
            }
            else
            {
                Response.Redirect("adminViewSalesOrder.aspx");
            }
        }
    }
}