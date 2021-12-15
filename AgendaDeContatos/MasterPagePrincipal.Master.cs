using System;

namespace AgendaDeContatos
{
    public partial class MasterPagePrincipal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["login"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
        }
    }
}