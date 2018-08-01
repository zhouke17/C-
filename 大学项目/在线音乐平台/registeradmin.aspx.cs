using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class registeradmin : System.Web.UI.Page
{
    string strSQL;
    protected SqlConnection conn;
    protected SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }
 
    protected void Button1_Click1(object sender, EventArgs e)
    {

        strSQL = "insert into admin (account,password,nickname,permissions) values('";
        strSQL += TextBox1.Text.ToString() + "','";
        strSQL += TextBox2.Text.ToString() + "','";
        strSQL += TextBox3.Text.ToString() + "','";
        strSQL += TextBox4.Text.ToString() + "')";
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MusicConnectionString"].ToString());
        //打开数据库
        conn.Open();
        cmd = new SqlCommand(strSQL, conn);
        try
        {
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('恭喜您，注册成功啦！')</script>");

            //执行插入命令
        }
        catch (Exception)
        {
            //Response.Write(ex.Message);
            Response.Write("<script>alert('账号重复，请重新注册！')</script>");

        }
        Response.Redirect("loginadmin.aspx");
        conn.Close();
    }
}