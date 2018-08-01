using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class PayRecord : System.Web.UI.Page
{
    string strSQL;
    protected SqlConnection conn;
    protected SqlCommand cmd;
    bool exist = false;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string settings = Convert.ToString(ConfigurationManager.ConnectionStrings["waterfeeConnectionString"]);

        //strSQL = "Select  RecordID,ClientName,PayAmount,PayTime,UsedAmount,LastYuEr,YuEr,UnitPrice from PayRecord Order by Paytime Desc";
        strSQL = "Select ClientID,ClientName,PayAmount,PayTime,UsedAmount,LastYuEr,YuEr,UnitPrice from PayRecord1"; 
        //Order by Paytime Desc";
        //where ClientID='" + TextBox1.Text + "'";
        conn = new SqlConnection(settings);
        conn.Open();
        cmd = new SqlCommand(strSQL, conn);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())//若找到
        {
            if (TextBox1.Text.ToString() == rd[0].ToString().Trim())
            
            {
                Label12.Text = rd[0].ToString();
                Label13.Text = rd[1].ToString();
                Label14.Text = rd[2].ToString();
                Label15.Text = rd[3].ToString();
                Label16.Text = rd[4].ToString();
                Label17.Text = rd[5].ToString();
                Label18.Text = rd[6].ToString();
                exist = true;
            }
        }

        if (exist == false)
        {

            Label12.Visible = false;
            Label13.Visible = false;
            Label14.Visible = false;
            Label15.Visible = false;
            Label16.Visible = false;
            Label17.Visible = false;
            Label18.Visible = false;
            Response.Write("<script>alert('用户不存在，查询失败！')</script>");
           // this.lblMsg.Text = "此用户暂时无交费记录或是不存在此用户！";
        }
        rd.Close();
        conn.Close();
    }
}
 