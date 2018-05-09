using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Loginpage : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Server=.\SQLExpress; Database=HouseManagement; Trusted_Connection=True;");
    public string utype;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void registration_click(object sender, EventArgs e)
    {
        Response.Redirect("Registrationpage.aspx");
    }

    protected void login_click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("SELECT * FROM RegistrationPageT WHERE Username=@username AND Password=@password", con);

        if (usernamebox.Text == "" )
        {
            Response.Write("<script>alert(\"Enter the Missing Username\");</script>");
        }
        else if(passwordbox.Text == "")
        {
            Response.Write("<script>alert(\"Enter The Missing Password\");</script>");
        }
        else
        {
            cmd.Parameters.AddWithValue("@username", usernamebox.Text);
            cmd.Parameters.AddWithValue("@password", passwordbox.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                utype = dt.Rows[0][8].ToString().Trim();
                if (utype == "A")
                {
                    Response.Redirect("AdminInvoicePage.aspx");
                }
                else
                {
                    Response.Redirect("Invoice.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert(\"Enter The Right Username / Password\");</script>");
            }
        }

        con.Close();
    }
    protected void Home_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void Search_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("Search_Info.aspx");
    }

    protected void Notice_Click(object sender, EventArgs e)
    {
        Response.Redirect("Notice.aspx");
    }
}