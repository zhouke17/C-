using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections;
public partial class PersonalDynamic : System.Web.UI.Page
{
    public int i = 0;

    public int fc;
    public string content;
    public ArrayList nick = new ArrayList();
    public ArrayList picpath=new ArrayList();
    public string time;
    public string dn;
    string timenow = DateTime.Now.ToString();
    public ArrayList pic = new ArrayList();
    public ArrayList con = new ArrayList();
    public ArrayList ti = new ArrayList();
    public ArrayList nic = new ArrayList();
    public ArrayList dnu = new ArrayList();
    public ArrayList pcou = new ArrayList();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GetCount()//获取动态数量
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
        string strSel = "select count(UserID) from Dynamic where UserID='" + Session["UID"] + "' or UserID in (select FriUserID from Friends where UserID='" + Session["UID"] + "')";
        conn.Open();
        SqlCommand cmd = new SqlCommand(strSel, conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            fc = Convert.ToInt32(dr[""]);
        }
        conn.Close();
    }

    protected void GetContent()//获取动态内容
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
        string strSQL = "select Dnumber,Dynamic.UserID,DContent,DTime,HeadPic,NickName,PraiseCount from Dynamic where UserID='" + Session["UID"] + "' or UserID in (select FriUserID from Friends where UserID='" + Session["UID"] + "') order by Dnumber desc";
        SqlCommand cmd = new SqlCommand(strSQL, conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            picpath.Add(dr["HeadPic"].ToString());
            nick.Add(dr["NickName"].ToString());
            con.Add(dr["DContent"].ToString());
            ti.Add(dr["DTime"].ToString());
            dnu.Add(dr["Dnumber"].ToString());
            pcou.Add(dr["PraiseCount"].ToString());
        }
        conn.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)//发表动态
    {
        string ppp = "";
        string nnn = "";
        string pub = "";
        string text = TextBox1.Text;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
        string strSel = "select HeadPic,NickName from [User] where UserID='" + Session["UID"] + "'";
        conn.Open();
        SqlCommand cmd = new SqlCommand(strSel, conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            ppp = dr["HeadPic"].ToString();
            nnn = dr["NickName"].ToString();
        }
        conn.Close();//获取用户头像和昵称

        if (RadioButton2.Checked)
        {
            pub = "false";
        }
        else
        {
            pub = "true";
        }
        string strSQL;
        strSQL = "insert into Dynamic (UserID,DContent,Publicy,DTime,HeadPic,NickName) values('" + Session["UID"] + "','" + text + "','" + pub + "','" + timenow + "','" + ppp + "','" + nnn + "')";
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
        conn.Close();//发表动态
    }
}