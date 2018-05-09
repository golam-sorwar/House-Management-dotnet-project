using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AdminInvoicePage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Server=.\SQLExpress; Database=HouseManagement; Trusted_Connection=True;");

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void insert_Click(object sender, ImageClickEventArgs e)
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("INSERT INTO Invoice(Name,Email,PhnNumber,Address,Complex,Apt,Code) Values('" + namebox.Text + "','" + emailbox.Text + "','" + phnnumberbox.Text + "','" + address.Text + "','" + complexbox.Text + "','" + aptDropDownList.Text + "','"+code.Text+"') ", con);

        SqlCommand cmdo = new SqlCommand("INSERT INTO InvoiceInfo(Particulars,RefOrBillOf,ComplexTotalTk,TotalNoOfApt,AllocationRatio,CurrentDueTk,Code) Values('" + Labelo.Text + "','','','','','" + cuo.Text + "','" + code.Text + "'), " +
            "('" + Labelt.Text + "','" + rbo.Text + "','" + cto.Text + "','" + totalapto.Text + "','" + ato.Text + "','" + cut.Text + "','" + code.Text + "')," +
            "('" + Labelth.Text + "','" + rbt.Text + "','" + ctt.Text + "','" + totalaptt.Text + "','" + att.Text + "','" + cuth.Text + "','" + code.Text + "')," +
            "('" + Labelf.Text + "',' ','','','','" + cuf.Text + "','" + code.Text + "')," +
            "('" + Labelfi.Text + "','" + rbth.Text + "','" + ctth.Text + "','" + totalaptth.Text + "','" + atth.Text + "','" + cufi.Text + "','" + code.Text + "')," +
            "('" + Labels.Text + "','" + rbf.Text + "','" + ctf.Text + "','" + totalaptf.Text + "','" + atf.Text + "','" + cus.Text + "','" + code.Text + "')," +
            "('" + Labelse.Text + "','" + rbfi.Text + "','" + ctfi.Text + "','" + totalaptfi.Text + "','" + atfi.Text + "','" + cuse.Text + "','" + code.Text + "')," +
            "('" + Labele.Text + "','" + rbs.Text + "','" + cts.Text + "','" + totalapts.Text + "','" + ats.Text + "','" + cue.Text + "','" + code.Text + "')," +
            "('" + Labeln.Text + "','','','','','" + cun.Text + "','" + code.Text + "')," +
            "('" + Labelte.Text + "','" + rbse.Text + "','" + ctse.Text + "','" + totalaptse.Text + "','" + atse.Text + "','" + cute.Text + "','" + code.Text + "')," +
            "('" + Labelel.Text + "','" + rbe.Text + "','" + cte.Text + "','" + totalapte.Text + "','" + ate.Text + "','" + cuel.Text + "','" + code.Text + "')," +
            "('" + Labeltw.Text + "','','','','','','" + code.Text + "')," +
            "('" + Labelthir.Text + "','','','','','','" + code.Text + "')," +
            "('" + total.Text + "','','','','','" + finalamount.Text + "','" + code.Text + "'); ", con);

        if (namebox.Text == "" || emailbox.Text == "" || phnnumberbox.Text == "" || address.Text == "" || complexbox.Text == "" || aptDropDownList.Text == "" || code.Text == "")
            {
                Response.Write("<script>alert(\"Enter the missing information\");</script>");
            }
            else
            {
                cmd.ExecuteNonQuery();
                cmdo.ExecuteNonQuery();

                Response.Write("<script>alert(\"Insert Successfully !!! \");</script>");

                namebox.Text = "";
                emailbox.Text = "";
                phnnumberbox.Text = "";
                address.Text = "";
                complexbox.Text = "";
                aptDropDownList.Text = "";
                code.Text = "";

                Response.Redirect("AdminInvoicePage.aspx");

            }
        con.Close();
    }

    protected void update_Click(object sender, ImageClickEventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("UPDATE Invoice SET Name='" + namebox.Text + "',Email='" + emailbox.Text + "',PhnNumber='" + phnnumberbox.Text + "',Address='" + address.Text + "',Complex='" + complexbox.Text + "',Apt='" + aptDropDownList.Text + "',Code='" + code.Text + "'  WHERE Code='" + code.Text + "' ", con);
        using (cmd)
        {
            cmd.ExecuteNonQuery();
        }
        
        SqlCommand cmd1 = new SqlCommand("UPDATE InvoiceInfo " +
            "SET RefOrBillOf = CASE " +
            "When Particulars = '" + Labelt.Text + "' And Code ='" + code.Text + "' Then '" + rbo.Text + "' " +
            "When Particulars = '" + Labelth.Text + "' And Code ='" + code.Text + "' Then '" + rbt.Text + "' " +
            "When Particulars = '" + Labelfi.Text + "' And Code ='" + code.Text + "' Then '" + rbth.Text + "' " +
            "When Particulars = '" + Labels.Text + "' And Code ='" + code.Text + "' Then '" + rbf.Text + "' " +
            "When Particulars = '" + Labelse.Text + "' And Code ='" + code.Text + "' Then '" + rbfi.Text + "' " +
            "When Particulars = '" + Labele.Text + "' And Code ='" + code.Text + "' Then '" + rbs.Text + "' " +
            "When Particulars = '" + Labelte.Text + "' And Code ='" + code.Text + "' Then '" + rbse.Text + "' " +
            "When Particulars = '" + Labelel.Text + "' And Code ='" + code.Text + "' Then '" + rbe.Text + "' " +
            "Else RefOrBillOf END ", con);
        cmd1.ExecuteNonQuery();

        SqlCommand cmd2 = new SqlCommand("UPDATE InvoiceInfo " +
        "SET ComplexTotalTk = CASE " +
            "When Particulars = '" + Labelt.Text + "' And Code ='" + code.Text + "' Then '" + cto.Text + "' " +
            "When Particulars = '" + Labelth.Text + "' And Code ='" + code.Text + "' Then '" + ctt.Text + "' " +
            "When Particulars = '" + Labelfi.Text + "' And Code ='" + code.Text + "' Then '" + ctth.Text + "' " +
            "When Particulars = '" + Labels.Text + "' And Code ='" + code.Text + "' Then '" + ctf.Text + "' " +
            "When Particulars = '" + Labelse.Text + "' And Code ='" + code.Text + "' Then '" + ctfi.Text + "' " +
            "When Particulars = '" + Labele.Text + "' And Code ='" + code.Text + "' Then '" + cts.Text + "' " +
            "When Particulars = '" + Labelte.Text + "' And Code ='" + code.Text + "' Then '" + ctse.Text + "' " +
            "When Particulars = '" + Labelel.Text + "' And Code ='" + code.Text + "' Then '" + cte.Text + "' " +
            "Else ComplexTotalTk END ", con);
        cmd2.ExecuteNonQuery();

        SqlCommand cmd3 = new SqlCommand("UPDATE InvoiceInfo " +
        "SET TotalNoOfApt = CASE " +
            "When Particulars = '" + Labelt.Text + "' And Code ='" + code.Text + "' Then '" + totalapto.Text + "' " +
            "When Particulars = '" + Labelth.Text + "' And Code ='" + code.Text + "' Then '" + totalaptt.Text + "' " +
            "When Particulars = '" + Labelfi.Text + "' And Code ='" + code.Text + "' Then '" + totalaptth.Text + "' " +
            "When Particulars = '" + Labels.Text + "' And Code ='" + code.Text + "' Then '" + totalaptf.Text + "' " +
            "When Particulars = '" + Labelse.Text + "' And Code ='" + code.Text + "' Then '" + totalaptfi.Text + "' " +
            "When Particulars = '" + Labele.Text + "' And Code ='" + code.Text + "' Then '" + totalapts.Text + "' " +
            "When Particulars = '" + Labelte.Text + "' And Code ='" + code.Text + "' Then '" + totalaptse.Text + "' " +
            "When Particulars = '" + Labelel.Text + "' And Code ='" + code.Text + "' Then '" + totalapte.Text + "' " +
            "Else TotalNoOfApt END ", con);
        cmd3.ExecuteNonQuery();

        SqlCommand cmd4 = new SqlCommand("UPDATE InvoiceInfo " +
        "SET AllocationRatio = CASE " +
            "When Particulars = '" + Labelt.Text + "' And Code ='" + code.Text + "' Then '" + ato.Text + "' " +
            "When Particulars = '" + Labelth.Text + "' And Code ='" + code.Text + "' Then '" + att.Text + "' " +
            "When Particulars = '" + Labelfi.Text + "' And Code ='" + code.Text + "' Then '" + atth.Text + "' " +
            "When Particulars = '" + Labels.Text + "' And Code ='" + code.Text + "' Then '" + atf.Text + "' " +
            "When Particulars = '" + Labelse.Text + "' And Code ='" + code.Text + "' Then '" + atfi.Text + "' " +
            "When Particulars = '" + Labele.Text + "' And Code ='" + code.Text + "' Then '" + ats.Text + "' " +
            "When Particulars = '" + Labelte.Text + "' And Code ='" + code.Text + "' Then '" + atse.Text + "' " +
            "When Particulars = '" + Labelel.Text + "' And Code ='" + code.Text + "' Then '" + ate.Text + "' " +
            "Else AllocationRatio END ", con);
        cmd4.ExecuteNonQuery();

        SqlCommand cmd5 = new SqlCommand("UPDATE InvoiceInfo " +
        "SET CurrentDueTk = CASE " +
            "When Particulars = '" + Labelo.Text + "' And Code ='" + code.Text + "' Then '" + cuo.Text + "' " +
            "When Particulars = '" + Labelt.Text + "' And Code ='" + code.Text + "' Then '" + cut.Text + "' " +
            "When Particulars = '" + Labelth.Text + "' And Code ='" + code.Text + "' Then '" + cuth.Text + "' " +
            "When Particulars = '" + Labelf.Text + "' And Code ='" + code.Text + "' Then '" + cuf.Text + "' " +
            "When Particulars = '" + Labelfi.Text + "' And Code ='" + code.Text + "' Then '" + cufi.Text + "' " +
            "When Particulars = '" + Labels.Text + "' And Code ='" + code.Text + "' Then '" + cus.Text + "' " +
            "When Particulars = '" + Labelse.Text + "' And Code ='" + code.Text + "' Then '" + cuse.Text + "' " +
            "When Particulars = '" + Labele.Text + "' And Code ='" + code.Text + "' Then '" + cue.Text + "' " +
            "When Particulars = '" + Labeln.Text + "' And Code ='" + code.Text + "' Then '" + cun.Text + "' " +
            "When Particulars = '" + Labelte.Text + "' And Code ='" + code.Text + "' Then '" + cute.Text + "' " +
            "When Particulars = '" + Labelel.Text + "' And Code ='" + code.Text + "' Then '" + cuel.Text + "' " +
            "When Particulars = '" + total.Text + "' And Code ='" + code.Text + "' Then '" + finalamount.Text + "' " +
            "Else CurrentDueTk END ", con);
        cmd5.ExecuteNonQuery();

        SqlCommand cmd6 = new SqlCommand("UPDATE InvoiceInfo " +
        "SET Code = CASE " +
            "When Particulars = '" + Labelo.Text + "' And Code ='" + code.Text + "' Then '" + code.Text + "' " +
            "When Particulars = '" + Labelt.Text + "' And Code ='" + code.Text + "' Then '" + code.Text + "' " +
            "When Particulars = '" + Labelth.Text + "' And Code ='" + code.Text + "' Then '" + code.Text + "' " +
            "When Particulars = '" + Labelf.Text + "' And Code ='" + code.Text + "' Then '" + code.Text + "' " +
            "When Particulars = '" + Labelfi.Text + "' And Code ='" + code.Text + "' Then '" + code.Text + "' " +
            "When Particulars = '" + Labels.Text + "' And Code ='" + code.Text + "' Then '" + code.Text + "' " +
            "When Particulars = '" + Labelse.Text + "' And Code ='" + code.Text + "' Then '" + code.Text + "' " +
            "When Particulars = '" + Labele.Text + "' And Code ='" + code.Text + "' Then '" + code.Text + "' " +
            "When Particulars = '" + Labeln.Text + "' And Code ='" + code.Text + "' Then '" + code.Text + "' " +
            "When Particulars = '" + Labelte.Text + "' And Code ='" + code.Text + "' Then '" + code.Text + "' " +
            "When Particulars = '" + Labelel.Text + "' And Code ='" + code.Text + "' Then '" + code.Text + "' " +
            "When Particulars = '" + Labeltw.Text + "' And Code ='" + code.Text + "' Then '" + code.Text + "' " +
            "When Particulars = '" + Labelthir.Text + "' And Code ='" + code.Text + "' Then '" + code.Text + "' " +
            "When Particulars = '" + total.Text + "' And Code ='" + code.Text + "' Then '" + code.Text + "' " +
            "Else Code  END ", con);
        cmd6.ExecuteNonQuery();
        Response.Write("<script>alert(\"Data Update Successfully !!! \");</script>");
        con.Close();
    }

    protected void delete_Click(object sender, ImageClickEventArgs e)
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("DELETE FROM Invoice WHERE Invoice.Code='" + code.Text+ "' ", con);
        SqlCommand cmdo = new SqlCommand("DELETE FROM InvoiceInfo WHERE InvoiceInfo.Code='" + code.Text + "' ", con);
        //using (cmd)
        //{}
        cmd.ExecuteNonQuery();
        cmdo.ExecuteNonQuery();

        Response.Write("<script>alert(\"Data Delete Successfully !!! \");</script>");
        Response.Redirect("AdminInvoicePage.aspx");
        con.Close();
    }

    protected void view_Click(object sender, ImageClickEventArgs e)
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

        SqlCommand cmd = new SqlCommand("SELECT * FROM InvoiceInfo WHERE InvoiceInfo.Code = ('" + code.Text + "') ", con);
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

    protected void logoutClick(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}