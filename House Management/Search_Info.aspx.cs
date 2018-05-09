using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Search_Info : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Server=.\SQLExpress; Database=HouseManagement; Trusted_Connection=True;");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
    protected void SearchInfo_Click(object sender, ImageClickEventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM RegistrationPageT,Invoice WHERE RegistrationPageT.Name = '" + namebox.Text+ "' AND Invoice.Name = '" + namebox.Text + "' ", con);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            namebox.Text = (dr["Name"].ToString());
            emailbox.Text = (dr["Email"].ToString());
            phnnumberbox.Text =(dr["PhnNumber"].ToString());
            genderbox.Text = (dr["Gender"].ToString());
            aptbox.Text = (dr["Apartment"].ToString());
            addressbox.Text = (dr["Address"].ToString());
        }
        else
        {
            Response.Write("<script>alert(\"Information Not Available\");</script>");
            namebox.Text = "";
            emailbox.Text = "";
            phnnumberbox.Text = "";
            genderbox.Text = "";
            aptbox.Text = "";
            addressbox.Text = "";
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