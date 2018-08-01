using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class MayKnow : System.Web.UI.Page
{
    public string UserID;
    public SqlConnection conn = null;
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
        Sql();
    }

    private void Sql()//查询学院
    {
        try
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
            string str = string.Format(@"select Graduatedschool from [User] where UserID ='" + UserID + "'");
            SqlCommand cmd = new SqlCommand(str, conn);
            if (conn != null && conn.State != ConnectionState.Open)
            {
                conn.Open();
            }
            SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            while (dr.Read())
            {
               Label1.Text = dr["Graduatedschool"].ToString();
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

    SqlConnection conn1;
    protected void Button1_Command(object sender, CommandEventArgs e)//添加好友
    {
        try
        {
            string USERID, NICKNAME, SIGNATURES;
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
            string str = string.Format("select UserID,NickName,Signatures from [User] where AutoUserID='" + e.CommandArgument + "'");
            SqlCommand cmd = new SqlCommand(str, conn);
            if (conn != null && conn.State != ConnectionState.Open)
            {
                conn.Open();
            }
            SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            dr.Read();

            USERID = dr["UserID"].ToString();
            NICKNAME = dr["NickName"].ToString();
            SIGNATURES = dr["Signatures"].ToString();

            dr.Close();

            conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
            string str1 = string.Format("insert into Friends (UserID,FriendNick,FriendNotes,FriendState,FriendClassification,FriUserID) values ('" + USERID + "','" + NICKNAME + "','" + SIGNATURES + "','不在线','白名单','" + UserID + "')");
            SqlCommand cmd1 = new SqlCommand(str1, conn1);
            if (conn1 != null && conn1.State != ConnectionState.Open)
            {
                conn1.Open();
            }
            SqlDataReader dr1 = cmd1.ExecuteReader(CommandBehavior.CloseConnection);
            dr1.Read();

            Response.Write("<script>alert('成功')</script>");

            dr1.Close();
        }
        catch (Exception ex)
        {
            throw ex;
            Response.Write("<script>alert('失败！')</script>");
        }
        finally
        {
            if (conn.State != ConnectionState.Closed)
                conn.Close();
            if (conn1.State != ConnectionState.Closed)
                conn1.Close();
           // Response.Redirect("Friends.aspx");
        }
    }
}