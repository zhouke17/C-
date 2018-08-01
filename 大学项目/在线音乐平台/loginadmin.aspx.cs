using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class loginadmin : System.Web.UI.Page
{
    string strSQL;
    protected SqlConnection conn;
    protected SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string connectionString = "Data Source=BSXPC101;Initial Catalog=Music;Integrated Security=True";
        SqlConnection conn = new SqlConnection(connectionString);
        conn.Open();
        string account = Account.Text;
        string password = PassWord.Text;

        strSQL = "select Account from member where  Account = '" + account + "' and PassWord = '" + password + "'";
        cmd = new SqlCommand(strSQL, conn);
        SqlDataReader dr = cmd.ExecuteReader();
        // try
        // {
        if (dr.Read())
        {

            Session["account"] = dr["account"].ToString();//保存admin的account.
            Page.Response.Redirect("administratemember.aspx");

        }

    // catch (Exception ex)
        else
        {
            //Response.Write(ex.Message);
            Response.Write("<script>alert('很遗憾，请重新登录！')</script>");

        }
    }
}