using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class AboutMe : System.Web.UI.Page
{
    public ArrayList rnic = new ArrayList();
    public ArrayList rcon = new ArrayList();
    public ArrayList rtim = new ArrayList();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void getComments()//获取最近三条评论内容
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());//数据库连接
        string strSQL = "select NickName,ReplyContents,ReplyTime from [User],Comments where [User].UserID in ( select Comments.ReplyUserID from Comments where Comments.Dnumber in(select top(3) Dnumber from Comments where UserID='"+Session["UID"]+"' order by CommentsNumber desc));";
        SqlCommand cmd = new SqlCommand(strSQL, conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            rnic.Add(dr["NickName"].ToString());//将昵称添加进动态数组
            rcon.Add(dr["ReplyContents"].ToString());//将回复内容加入动态数组
            rtim.Add(dr["ReplyTime"].ToString());//将回复时间加入动态数组
        }
        conn.Close();
    }

}