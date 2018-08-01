using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Collections;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    public string Dnum = null;
    string timenow = DateTime.Now.ToString();
    public int cc;
    public string picpath, nick, content, time;
    public ArrayList rnic = new ArrayList();
    public ArrayList rcon = new ArrayList();
    public ArrayList rtim = new ArrayList();
    protected void Page_Load(object sender, EventArgs e)
    {
        Dnum = Request.QueryString["Dnumber"];//获取前台变量
    }

    protected void GetCount()//获取评论数量
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
        string strSel = "select count(Dnumber) from Comments where Dnumber=" + Dnum + "";
        conn.Open();
        SqlCommand cmd = new SqlCommand(strSel, conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            cc = Convert.ToInt32(dr[""]);
        }
        conn.Close();
    }
    protected void GetContent()//获取动态内容
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
        string strSQL = "select DContent,DTime,HeadPic,NickName from Dynamic where Dnumber='"+Dnum+"'";
        SqlCommand cmd = new SqlCommand(strSQL, conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
             picpath = dr["HeadPic"].ToString();
             nick = dr["NickName"].ToString();
             content = dr["DContent"].ToString();
             time = dr["DTime"].ToString();
        }
        conn.Close();
    }

    protected void getComments()//获取当前动态的全部评论内容
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
        string strSQL = "select NickName,ReplyContents,ReplyTime from [User],Comments where [User].UserID in ( select Comments.ReplyUserID from Comments where Comments.Dnumber='"+Dnum+ "') and Dnumber='"+Dnum+"';";
        SqlCommand cmd = new SqlCommand(strSQL, conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            rnic.Add(dr["NickName"].ToString());//将回复人昵称加入动态数组
            rcon.Add(dr["ReplyContents"].ToString());//回复内容加入动态数组
            rtim.Add(dr["ReplyTime"].ToString());//将回复时间加入动态数组
        }
        conn.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)//对当前动态进行评论
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
        string strSQL;
        strSQL = "insert into Comments (ReplyUserID,Dnumber,ReplyContents,ReplyTime) values('" + Session["UID"] + "','" + Dnum + "','" + TextBox1.Text + "','" + timenow + "')";
        SqlCommand cmd = new SqlCommand(strSQL, conn);
        conn.Open();
        cmd = new SqlCommand(strSQL, conn);
        try
        {
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('发表成功')</script>");
        }
        catch (Exception Err)
        {
            Response.Write(Err.Message.ToString());
            Response.Write("<script>alert('发表失败')</script>");
        }
        conn.Close();

    }

    protected void praise(object sender, EventArgs e)//点赞功能代码
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
        string strSQL;
        strSQL = "update Dynamic set PraiseCount=PraiseCount+1 where Dnumber='"+Dnum+"'";
        conn.Open();
        SqlCommand cmd = new SqlCommand(strSQL, conn);
        try
        {
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('点赞成功')</script>");

        }
        catch (Exception Err)
        {
            Response.Write(Err.Message.ToString());
            Response.Write("<script>alert('点赞失败')</script>");
        }
        conn.Close();

    }
}