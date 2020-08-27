using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VS_FinalAssignment
{
    public partial class AdminMenu : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminN"] != null)
            {
                adminname.InnerText = (string)Session["adminN"];
            }
            if (Session["adminN"] == null)
            {
                Response.Redirect("UserLogin.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("UserHome.aspx");
        }
    }
}