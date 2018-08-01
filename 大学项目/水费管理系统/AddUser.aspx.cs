using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AddUser : System.Web.UI.Page
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

        strSQL = "insert into User_Info ([UserID],[UserName],[UserPwd],[UserMail],[UserPhone]) values('";
        strSQL += txtID.Text.ToString() + "','";
        strSQL += txtName.Text.ToString() + "','";
        strSQL += txtPwd.Text.ToString() + "','";
        strSQL += txtMail.Text.ToString() + "','";
        strSQL += txtPhone.Text.ToString() + "')";
        //Label7.Text = DateTime.Now.ToString();
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["waterfeeConnectionString"].ToString());
        //打开数据库
        conn.Open();
        cmd = new SqlCommand(strSQL, conn);
        try
        {
           
        
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('添加成功！')</script>");

            //执行插入命令
        }
        catch (Exception err)
        {
            Response.Write("<script>alert('用户已存在，添加失败！')</script>");
           //Response.Write(err.Message.ToString());
        }
        conn.Close();
        
        txtID.Text = "";
        txtMail.Text = "";
        txtName.Text = "";
        txtPwd.Text = "";
        txtPhone.Text = "";
         //Label7.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        txtID.Text = "";
        txtPwd.Text = "";
        txtName.Text = "";
        txtMail.Text = "";
        txtPhone.Text = "";
        Label7.Text = "";
        Response.Write("<script>alert('重置成功!')</script>");
    }
}