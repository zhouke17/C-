using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Data.Common;
using System.Data.SqlTypes;

public partial class PersonInfor : System.Web.UI.Page
{
    string strSQL;
    protected SqlConnection conn;
    protected SqlCommand cmd;
    string savepath;
    string filename;
    string extension;
    string saveurl;
    protected void Page_Load(object sender, EventArgs e)
    {

        Label6.Text = Session["UID"].ToString();
        string connStr = ConfigurationManager.ConnectionStrings["conn"].ToString(); //获取数据库链接
        SqlConnection con = new SqlConnection(connStr); //创建连接对象
        con.Open();  //打开连接
        string str = "select * from [User] where UserID='" + this.Label6.Text + "'";
        SqlCommand cmd = new SqlCommand(str, con);  //创建Command对象执行SQL命令 构造函数参数：需执行的SQL语句  数据库连接对象
        SqlDataReader dr = cmd.ExecuteReader();  //执行SQL命令
        if (dr.Read())//获取数据库里用户信息默认值
        {
            TextBox13.Text = dr["NickName"].ToString();
            TextBox11.Text = dr["Sex"].ToString();
            TextBox12.Text = dr["Age"].ToString();
            TextBox14.Text = dr["Email"].ToString();
        }
       
    }

    //提交修改后的信息
  
    protected void Button_commit_Click(object sender, EventArgs e)
    {
        if (this.TextBox11.Text != "" || this.TextBox12.Text != "" || this.TextBox13.Text != "")//if判断，保证性别年龄昵称邮箱不为空
        {
            string str = "update [User] set Name='" + TextBox1.Text + "' ,Graduatedschool='" + TextBox8.Text + "',Interest='" + TextBox3.Text + "',Paculty='" + TextBox6.Text + "',Signatures='" + TextBox4.Text + "',Constellation='" + TextBox2.Text + "'where UserID='" + Label6.Text + "'";
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand(str, conn);
            try
            {
                //cmd.ExecuteNonQuery();
                int resultrow = cmd.ExecuteNonQuery();
                Label5.Visible = true;
                Label5.Text = "修改成功！";
            }
            catch (Exception Err)
            {
                Response.Write(Err.Message.ToString());
            }
            conn.Close();
        }
        else
        {
            Label5.Visible = true;
            Label5.Text = "*号项不能为空！";
        }
    }
    protected void updy()//修改动态表中对应的头像文件路径
    {
        string yui = @"update Dynamic set HeadPic='Headimage/" + filename + "' where UserID='"+ Session["UID"] + "'";
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
        conn.Open();
        SqlCommand cmd2 = new SqlCommand(yui, conn);
        try
        {
            int resultrow = cmd2.ExecuteNonQuery();
        }
        catch (Exception Err)
        {
            Response.Write(Err.Message.ToString());
        }
        conn.Close();

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        savepath = @"E:\hero\softwarefactory\WEB\Headimage\";
        filename = Server.HtmlEncode(FileUpload1.FileName);
        extension = System.IO.Path.GetExtension(filename);
        savepath += filename;
        FileUpload1.SaveAs(savepath);
        strSQL = @"update [User] set HeadPic='" + filename + "'";                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
        conn.Open();
        cmd = new SqlCommand(strSQL, conn);
        try
        {
            int resultrow = cmd.ExecuteNonQuery();
            updy();
            Response.Write("<script>alert('修改成功')</script>");
        }
        catch (Exception Err)
        {
            Response.Write(Err.Message.ToString());
            Response.Write("<script>alert('修改失败')</script>");
        }
        conn.Close();
        Image1.ImageUrl = "~/Headimage/" + filename.ToString();
    }
}