using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Registrationpage : System.Web.UI.Page
{
    string Gender;
    SqlConnection con = new SqlConnection(@"Server=.\SQLExpress;Database=HouseManagement;Trusted_Connection=True;");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void register_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Insert into RegistrationPageT(Name,Email,Username,Password,ConfirmPassword,Gender,Apartment) Values('" + namebox.Text + "','" + emailbox.Text + "','" + usernamebox.Text + "', '" + passwordbox.Text + "', '" + confirmpasswordbox.Text + "','" + Gender + "','" + DropDownList1.Text + "')", con);
        if (namebox.Text == "" || emailbox.Text == "" || usernamebox.Text == "" || passwordbox.Text == "" || confirmpasswordbox.Text == "" || Gender == "" || DropDownList1.Text == "")
        {
            Response.Write("<script>alert(\"Enter the missing information\");</script>");
        }
        else
        {
            if (passwordbox.Text == confirmpasswordbox.Text)
            {
                cmd.ExecuteNonQuery();
                Response.Write("Data Inserted Successfully");

                namebox.Text = "";
                emailbox.Text = "";
                usernamebox.Text = "";
                passwordbox.Text = "";
                confirmpasswordbox.Text = "";
                Gender = "";
                DropDownList1.Text = "";

                Response.Redirect("Default.aspx");
            }
            else
            {
                Response.Write("<script>alert(\"Two password do not match\");</script>");
            }
        }
        con.Close();  
    }

    protected void male_CheckedChanged(object sender, EventArgs e)
    {
        Gender = "Male";
    }

    protected void female_CheckedChanged(object sender, EventArgs e)
    {
        Gender = "Female";
    }
}