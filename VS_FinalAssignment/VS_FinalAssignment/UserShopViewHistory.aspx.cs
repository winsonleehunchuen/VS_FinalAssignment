using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VS_FinalAssignment
{
    public partial class UserShopViewHistory : System.Web.UI.Page
    {
        private DatabaseConnection dbcon;
        protected void Page_Load(object sender, EventArgs e)
        {
            dbcon = new DatabaseConnection();

            if (!this.IsPostBack)
            {
                DataTable dt = dbcon.getDataSQL("select *, (quantity * price) as total from history inner join product on history.id=product.id where login_id='" + Session["userN"] + "'order by history_id ");
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

        }
    }
}