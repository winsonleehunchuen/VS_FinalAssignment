using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Data.SqlClient;

namespace VS_FinalAssignment
{
    public partial class adminViewProduct : System.Web.UI.Page
    {

        private DatabaseConnection dbcon;

        StringBuilder table = new StringBuilder();

        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new DatabaseConnection();
            DataTable dt = dbcon.getDataSQL("select * from product;");
            int i = 1;
            
            table.Append("<table border='1' style='width:100%'>");
            table.Append("<tr><th>ID</th><th>Name</th><th>Price</th><th>Description</th><th>Image</th><th>Created_at</th><th>Update</th><th>Delete</th></tr>");

            foreach(DataRow dr in dt.Rows) 
            {
                var id = dr[0];
                /*string query = "delete from product where id=" + id;
                dbcon.executeSQL(query);*/
                
                table.Append("<tr>"); 
                table.Append("<td>" + i + "</td><td>" + dr[1].ToString() + "</td><td>" + dr[2].ToString() + "</td><td>" + dr[3].ToString() + "</td><td>" + "<img src = 'upload/" + dr[4] + "' width = 100px height = 100px >" + "</td><td>" + dr[5].ToString() + "</td>");
                table.Append("<td>" + "<a href = 'id=dr[0]'><img src = 'images/edit.png' width = 20px height = 20px ></a>" + "</td>");
                table.Append("<td>" + "<a href = 'adminViewProduct?id=id'><img src = 'images/delete.png' width = 22px height = 22px ></a>" + "</td>");
                table.Append("</tr>");
                i++;
            }
            table.Append("</table>");
            Panel1.Controls.Add(new Label { Text = table.ToString() });

        }
        /*protected void grdEmp_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            
                int empId = Convert.ToInt32(grdEmp.DataKeys[e.RowIndex].Value);
                SqlCommand cmd = new SqlCommand("delete from Emp_Tb where Emp_Id_Pk= @EmpId", con);
                cmd.Parameters.Add("@EmpId", SqlDbType.Int).Value = empId;
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
                grdEmp.EditIndex = -1;
                bindGridView();
            
        }*/
        /*protected void a(object sender, EventArgs e)
        {
            var id = Request.Form["id"];

            string query = "delete from product where id=@id";
            dbcon.executeSQL(query);
            Response.Redirect("adminViewProduct.aspx");
        }*/

        /*public void Delete()
        {
            var id = Request.Form["id"];
            dbcon = new DatabaseConnection();
            string query = "delete from product where id=" + id;
            dbcon.executeSQL(query);
            Response.Redirect("adminViewProduct.aspx");

        }*/
    }
}