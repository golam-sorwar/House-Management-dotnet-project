using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Invoice : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Server=.\SQLExpress; Database=HouseManagement; Trusted_Connection=True;");

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

    protected void Notice_Click(object sender, EventArgs e)
    {
        Response.Redirect("Notice.aspx");
    }

    protected void details_Click(object sender, ImageClickEventArgs e)
    {
        con.Open();
    
        SqlCommand cmd1 = new SqlCommand("SELECT * FROM Invoice WHERE Invoice.Code = ('" + code.Text + "') ", con);
        SqlDataReader dr1 = cmd1.ExecuteReader();
        using (dr1)
        {
            if (dr1.Read())
            {
                namebox.Text = (dr1["Name"].ToString());
                emailbox.Text = (dr1["Email"].ToString());
                phnnumberbox.Text = (dr1["PhnNumber"].ToString());
                address.Text = (dr1["Address"].ToString());
                complexbox.Text = (dr1["Complex"].ToString());
                aptDropDownList.Text = (dr1["Apt"].ToString());
                code.Text = (dr1["Code"].ToString());
            }
        }

        SqlCommand cmd = new SqlCommand("SELECT * FROM InvoiceInfo WHERE  Code = ('" + code.Text + "') ", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dr = new DataTable();
        da.Fill(dr);
        if (dr.Rows.Count > 0)
        {
            cuo.Text = dr.Rows[0][6].ToString().Trim();

            rbo.Text = dr.Rows[1][2].ToString().Trim();
            rbt.Text = dr.Rows[2][2].ToString().Trim();
            rbth.Text = dr.Rows[4][2].ToString().Trim();
            rbf.Text = dr.Rows[5][2].ToString().Trim();
            rbfi.Text = dr.Rows[6][2].ToString().Trim();
            rbs.Text = dr.Rows[7][2].ToString().Trim();
            rbse.Text = dr.Rows[9][2].ToString().Trim();
            rbe.Text = dr.Rows[10][2].ToString().Trim();

            cto.Text = dr.Rows[1][3].ToString().Trim();
            ctt.Text = dr.Rows[2][3].ToString().Trim();
            ctth.Text = dr.Rows[4][3].ToString().Trim();
            ctf.Text = dr.Rows[5][3].ToString().Trim();
            ctfi.Text = dr.Rows[6][3].ToString().Trim();
            cts.Text = dr.Rows[7][3].ToString().Trim();
            ctse.Text = dr.Rows[9][3].ToString().Trim();
            cte.Text = dr.Rows[10][3].ToString().Trim();

            totalapto.Text = dr.Rows[1][4].ToString().Trim();
            totalaptt.Text = dr.Rows[2][4].ToString().Trim();
            totalaptth.Text = dr.Rows[4][4].ToString().Trim();
            totalaptf.Text = dr.Rows[5][4].ToString().Trim();
            totalaptfi.Text = dr.Rows[6][4].ToString().Trim();
            totalapts.Text = dr.Rows[7][4].ToString().Trim();
            totalaptse.Text = dr.Rows[9][4].ToString().Trim();
            totalapte.Text = dr.Rows[10][4].ToString().Trim();

            ato.Text = dr.Rows[1][5].ToString().Trim();
            att.Text = dr.Rows[2][5].ToString().Trim();
            atth.Text = dr.Rows[4][5].ToString().Trim();
            atf.Text = dr.Rows[5][5].ToString().Trim();
            atfi.Text = dr.Rows[6][5].ToString().Trim();
            ats.Text = dr.Rows[7][5].ToString().Trim();
            atse.Text = dr.Rows[9][5].ToString().Trim();
            ate.Text = dr.Rows[10][5].ToString().Trim();

            cut.Text = dr.Rows[1][6].ToString().Trim();
            cuth.Text = dr.Rows[2][6].ToString().Trim();
            cuf.Text = dr.Rows[3][6].ToString().Trim();
            cufi.Text = dr.Rows[4][6].ToString().Trim();
            cus.Text = dr.Rows[5][6].ToString().Trim();
            cuse.Text = dr.Rows[6][6].ToString().Trim();
            cue.Text = dr.Rows[7][6].ToString().Trim();
            cun.Text = dr.Rows[8][6].ToString().Trim();
            cute.Text = dr.Rows[9][6].ToString().Trim();
            cuel.Text = dr.Rows[10][6].ToString().Trim();
            finalamount.Text = dr.Rows[13][6].ToString().Trim();
        }
        else
        {
            Response.Write("<script>alert(\"Information Not Available\");</script>");
        }
        con.Close();
    }

    protected void logoutClick(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}