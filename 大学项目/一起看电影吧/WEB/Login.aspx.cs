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



public partial class Login : System.Web.UI.Page
{
    string sexse = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //登录
    protected void Button_login_Click(object sender, EventArgs e)
    {
        if (this.TextBox1.Text != "") //判断账号是否为空
        {
            if (this.TextBox2.Text != "") //判断密码是否为空
            {
                if (RadioButtonList1.SelectedValue == "用户")//若选择用户身份登录则查找User表看用户名密码是否一致
                {
                    string connStr = ConfigurationManager.ConnectionStrings["conn"].ToString(); //获取数据库链接
                    SqlConnection con = new SqlConnection(connStr); //创建连接对象
                    con.Open();  //打开连接
                    string str = "select * from [User] where UserID='" + this.TextBox1.Text + "' and Password='" + this.TextBox2.Text + "'";   //SQL语句查找User表看用户名密码是否一致                  
                    SqlCommand cmd = new SqlCommand(str, con);  //创建Command对象执行SQL命令 构造函数参数：需执行的SQL语句  数据库连接对象
                    SqlDataReader dr = cmd.ExecuteReader();  //执行SQL命令
                    if (dr.Read())//判断用户名密码匹配是否正确
                    {
                        Session["UID"] = dr["UserID"].ToString();
                        Session["imurl"] = dr["HeadPic"].ToString();
                        Response.Redirect("PublicDynamic.aspx");//验证用户名密码正确后跳转到公共动态页面
                    }
                    else
                    {
                        //如果用户名密码匹配不正确输出提示信息：您的用户名密码不正确
                        Label8.Visible = true;
                        Label8.Text = "您的账号密码有误！";
                        Label6.Visible = false;
                        Label5.Visible = false;
                    }
                }
                else if (RadioButtonList1.SelectedValue == "管理员")//若选择管理员身份登录则查找Admin表看用户名密码是否一致
                {
                    string connStr = ConfigurationManager.ConnectionStrings["conn"].ToString(); //获取数据库链接
                    SqlConnection con = new SqlConnection(connStr); //创建连接对象
                    con.Open();  //打开连接
                    string str = "select * from [Admin] where AdminID='" + this.TextBox1.Text + "' and Adminpwd='" + this.TextBox2.Text + "'";   //SQL语句                  
                    SqlCommand cmd = new SqlCommand(str, con);  //创建Command对象执行SQL命令 构造函数参数：需执行的SQL语句  数据库连接对象
                    SqlDataReader dr = cmd.ExecuteReader();  //执行SQL命令
                    if (dr.Read())//判断用户名密码匹配是否正确
                    {
                        Response.Redirect("Manage.aspx");
                    }
                    else
                    {
                        //如果用户名密码匹配不正确输出提示信息：您的用户名密码不正确
                        Label8.Visible = true;
                        Label8.Text = "您的账号密码有误！";
                        Label6.Visible = false;
                        Label5.Visible = false;
                    }

                }
                else
                {
                    Label8.Visible = true;
                    Label8.Text = "请您选择用户或管理员身份！";
                    Label6.Visible = false;
                    Label5.Visible = false;
                }
            }
            else
            {
                //如果密码为空输出提示信息：密码不能为空
                Label6.Visible = true;
                Label6.Text = "请填写密码！";
                Label5.Visible = false;
                Label8.Visible = false;
            }
        }
        else
        {
            //如果用户名为空输出提示信息：用户名不能为空
            Label5.Visible = true;
            Label5.Text = "请填写账号！";
            Label8.Visible = false;
            Label6.Visible = false;
        }
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }


    //注册
    protected void Button_Register_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
        {
            sexse = "男";
        }
        else
        {
            sexse = "女";
        }
        string connStr = ConfigurationManager.ConnectionStrings["conn"].ToString(); //获取数据库链接  
        SqlConnection con = new SqlConnection(connStr); //创建连接对象
        con.Open();  //打开连接
        SqlCommand Cm = new SqlCommand("select UserID from [User] where UserID=('" + TextBox3.Text.Trim() + "')", con);
        SqlDataReader Dr = Cm.ExecuteReader();
        if (Dr.Read())//如果存在相同用户名
        {
            Response.Write("<script>alert('此账号已存在，请您重新注册!');window.window.location.href='Login.aspx';</script>");
            Dr.Close();
        }
        else
        {
            if(sexse=="男")
            { 
            Dr.Close();
            SqlCommand Cm2 = new SqlCommand("insert into [User] (UserID,Password,NickName,Sex,Age,Email,HeadPic)values(" + this.TextBox3.Text + ",'" + this.TextBox4.Text + "','" + this.TextBox6.Text + "','" + sexse + "','" + DropDownList1.SelectedValue + "','" + this.TextBox7.Text + "','" + "Headimage/2.jpg" + "')", con);
            int i = Cm2.ExecuteNonQuery();
            Response.Write("<script>alert('注册成功，请登录');window.window.location.href='Login.aspx';</script>");
            }
            else
            {
                Dr.Close();
                SqlCommand Cm2 = new SqlCommand("insert into [User] (UserID,Password,NickName,Sex,Age,Email,HeadPic)values(" + this.TextBox3.Text + ",'" + this.TextBox4.Text + "','" + this.TextBox6.Text + "','" + sexse + "','" + DropDownList1.SelectedValue + "','" + this.TextBox7.Text +"','"+ "Headimage/3.jpg" + "')", con);
                int i = Cm2.ExecuteNonQuery();
                Response.Write("<script>alert('注册成功，请登录');window.window.location.href='Login.aspx';</script>");
            }
        }

        con.Close();
    }
}



