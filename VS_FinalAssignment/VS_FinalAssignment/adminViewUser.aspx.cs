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
    public partial class adminViewUser : System.Web.UI.Page
    {
        private DatabaseConnection dbcon;

        StringBuilder table = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new DatabaseConnection();
            DataTable dt = dbcon.getDataSQL("select * from users where user_type='user';");
            int i = 1;

            table.Append("<table border='1' style='width:100%'>");
            table.Append("<tr><th>ID</th><th>Fullname</th><th>Email</th><th>Username</th><th>Password</th><th>Created_at</th><th>Update</th><th>Delete</th></tr>");

            foreach (DataRow dr in dt.Rows)
            {
                table.Append("<tr>");
                table.Append("<td>" + i + "</td><td>" + dr[1].ToString() + "</td><td>" + dr[2].ToString() + "</td><td>" + dr[3].ToString() + "</td><td>" + dr[4].ToString() + "</td><td>" + dr[6].ToString() + "</td>");
                table.Append("<td>" + "<a href = 'adminEditUser.aspx?id=" + dr[0] + "'><img src = 'images/edit.png' width = 20px height = 20px ></a>" + "</td>");
                table.Append("<td>" + "<a href = 'adminDeleteUser.aspx?id=" + dr[0] + "'><img src = 'images/delete.png' width = 22px height = 22px ></a>" + "</td>");
                table.Append("</tr>");
                i++;
            }
            table.Append("</table>");
            Panel1.Controls.Add(new Label { Text = table.ToString() });
        }
    }
}