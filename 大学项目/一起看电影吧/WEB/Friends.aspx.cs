using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public class friend
{
    string _friuserID;
    string _friendnotes;
    string _friendnick;
    string _friendstate;
    string _friendclassification;
    string _friendurl;
    string _signatures;

    public string FriuserID
    {
        set { _friuserID = value; }
        get { return _friuserID; }
    }

    public string Friendnotes//备注
    {
        set { _friendnotes = value; }
        get { return _friendnotes; }
    }

    public string Friendnick//昵称
    {
        set { _friendnick = value; }
        get { return _friendnick; }
    }

    public string FriendState//状态
    {
        set { _friendstate = value; }
        get { return _friendstate; }
    }

    public string FriendClassification//好友分类
    {
        set { _friendclassification = value; }
        get { return _friendclassification; }
    }

    public string FriendUrl//头像
    {
        set { _friendurl = value; }
        get { return _friendurl; }
    }

    public string Signatures//签名
    {
        set { _signatures = value; }
        get { return _signatures; }
    }
}

public partial class Friends : System.Web.UI.Page
{
    public string UserID;
    public SqlConnection conn = null;
    public ArrayList friendsW = null;
    public ArrayList friendsB = null;
    public friend friend;
    public string text;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UID"].ToString() == "" || Session["UID"] == null)
        {
            Response.Redirect(".aspx");
        }
        else
        {
            UserID = Session["UID"].ToString();
        }
        div1.Visible = false;
        div2.Visible = false;
        div3.Visible = false;
        div4.Visible = false;
        Sql();
    }

    private void Sql()//显示好友
    {
        try
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
            friendsW = new ArrayList();
            friendsB = new ArrayList();
            string str = string.Format(@"select Friends.UserID, Friends.FriendNick, Friends.FriendNotes, Friends.FriendState, Friends.FriendClassification, Headpic, signatures from Friends,[User] where Friends.FriUserID=[User].UserID and [User].UserID in (select Friends.FriUserID from Friends where UserID ='" + UserID + "')");
            SqlCommand cmd = new SqlCommand(str, conn);
            if (conn != null && conn.State != ConnectionState.Open)
            {
                conn.Open();
            }
            SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            while (dr.Read())
            {
                friend a = new friend();
                a.Friendnick = dr["FriendNick"].ToString();
                a.Friendnotes = dr["FriendNotes"].ToString();
                a.FriuserID = dr["UserID"].ToString();
                a.FriendState = dr["FriendState"].ToString();
                a.FriendUrl = dr["HeadPic"].ToString();
                a.FriendClassification = dr["FriendClassification"].ToString();
                a.Signatures = dr["Signatures"].ToString();
                if (!a.FriendClassification.Contains("黑名单"))
                    friendsW.Add(a);
                else
                    friendsB.Add(a);
            }
            dr.Close();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            if (conn.State != ConnectionState.Closed)
                conn.Close();
        }
    }

    public void state(friend friend)//用户状态判断
    {
        if (Application[UserID + friend.FriuserID] == null)
            text = "无留言";
        else
            text = "有留言";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        div1.Visible = true;
    }

    SqlConnection conn1;
    protected void Button5_Command(object sender, System.Web.UI.WebControls.CommandEventArgs e)//添加好友
    {
        try
        {
            string USERID, NICKNAME, SIGNATURES;
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
            string str = string.Format("select UserID,NickName,Signatures from [User] where AutoUserID='" + e.CommandArgument +"'");
            SqlCommand cmd = new SqlCommand(str, conn);
            if (conn != null && conn.State != ConnectionState.Open)
            {
                conn.Open();
            }
            SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            dr.Read();
            
            USERID= dr["UserID"].ToString();
            NICKNAME= dr["NickName"].ToString();
            SIGNATURES= dr["Signatures"].ToString();

            dr.Close();

            conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
            string str1 = string.Format("insert into Friends (UserID,FriendNick,FriendNotes,FriendState,FriendClassification,FriUserID) values ('" + UserID + "','" + NICKNAME + "','"+SIGNATURES+ "','不在线','白名单','"+ USERID + "')");
            SqlCommand cmd1 = new SqlCommand(str1, conn1);
            if (conn1 != null && conn1.State != ConnectionState.Open)
            {
                conn1.Open();
            }
            cmd1.ExecuteNonQuery();

            Response.Write("<script>alert('成功')</script>");

         }
        catch (Exception ex)
        {
            //throw ex;
            Response.Write("<script>alert('失败！')</script>");
        }
        finally
        {
            if (conn.State != ConnectionState.Closed)
                conn.Close();
            if (conn1.State != ConnectionState.Closed)
                conn1.Close();
            Response.Redirect("Friends.aspx");
        }

    }

    protected void Button6_Command(object sender, System.Web.UI.WebControls.CommandEventArgs e)//移入黑名单
    {
        try
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
            string str = string.Format("update Friends set FriendClassification='黑名单' where FriAutoID = '" + e.CommandArgument.ToString() + "';");
            SqlCommand cmd = new SqlCommand(str, conn);
            if (conn != null && conn.State != ConnectionState.Open)
            {
                conn.Open();
            }
            SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            dr.Read();

            Response.Write("<script>alert('成功')</script>");

            dr.Close();
        }
        catch (Exception ex)
        {
            //throw ex;
            Response.Write("<script>alert('失败！')</script>");
        }
        finally
        {
            if (conn.State != ConnectionState.Closed)
                conn.Close();
            Response.Redirect("Friends.aspx");
        }
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        div2.Visible = true;
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        div3.Visible = true;
    }

    protected void Button10_Command(object sender, System.Web.UI.WebControls.CommandEventArgs e)//移出黑名单
    {
        try
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
            string str = string.Format("update Friends set FriendClassification = '白名单' where FriAutoID = '" + e.CommandArgument.ToString() + "'; ");
            SqlCommand cmd = new SqlCommand(str, conn);
            if (conn != null && conn.State != ConnectionState.Open)
            {
                conn.Open();
            }
            SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            dr.Read();
            Response.Write("<script>alert('成功')</script>");

            dr.Close();
        }
        catch (Exception ex)
        {
            //throw ex;
            Response.Write("<script>alert('失败！')</script>");
        }
        finally
        {
            if (conn.State != ConnectionState.Closed)
                conn.Close();
            Response.Redirect("Friends.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        div1.Visible = true;
    }

    protected void Button17_Click(object sender, EventArgs e)
    {
        div4.Visible = true;
    }
}