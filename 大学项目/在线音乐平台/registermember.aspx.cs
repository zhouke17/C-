using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    string strSQL;
    protected SqlConnection conn;
    protected SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("registeradmin.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("loginmember.aspx");
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        strSQL = "INSERT INTO member ([account],[password],[nickname],[realname],[gender],[email],[birthday])VALUES ('";
        strSQL += TextBox1.Text.ToString() + "','";
        strSQL += TextBox2.Text.ToString() + "','";
        strSQL += TextBox3.Text.ToString() + "','";
        strSQL += TextBox4.Text.ToString() + "','";
        strSQL += TextBox8.Text.ToString() + "','";
        strSQL += TextBox6.Text.ToString() + "','";
        strSQL += TextBox7.Text.ToString() + "')";

        //打开数据库连接
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MusicConnectionString"].ToString());
        //打开数据库
        conn.Open();
        cmd = new SqlCommand(strSQL, conn);

        try
        {

            cmd.ExecuteNonQuery();//执行插入命令
            Response.Write("<script>alert('注册成功！')</script>");
            Response.Redirect("loginmember.aspx");

        }
        catch (Exception )
        {
          //  Response.Write(Err.Message.ToString());

            Response.Write("<script>alert('该账号已存在，不能重复注册！！！')</script>");
        }

        conn.Close();




    }
}