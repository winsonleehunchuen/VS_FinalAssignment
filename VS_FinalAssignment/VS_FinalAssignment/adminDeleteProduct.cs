using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;

namespace VS_FinalAssignment
{
    public class adminDeleteProduct : adminViewProduct
    {
        private DatabaseConnection dbcon;

        protected void a(object sender, EventArgs e)
        {
            var id = Request.Form["id"];
            dbcon = new DatabaseConnection();
            string query = "delete from product where id=" + id;
            dbcon.executeSQL(query);
            Response.Redirect("adminViewProduct.aspx");
        }

    }
}