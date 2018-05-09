using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Notice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Home_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void Search_Click(object sender, EventArgs e)
    {
        Response.Redirect("Search_Info.aspx");
    }

    protected void Notices_Click(object sender, EventArgs e)
    {
        Response.Redirect("Notice.aspx");
    }
}