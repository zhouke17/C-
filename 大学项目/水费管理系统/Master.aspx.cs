using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class Master : System.Web.UI.Page
{
    string strSQL;
    protected SqlConnection conn;
    protected SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string ConnectString = "Data Source=(local);Initial Catalog=waterfee;Integrated Security=SSPI";
        SqlConnection conn = new SqlConnection(ConnectString);
        conn.Open();
        string username = txtName.Text;
        string userpword = txtPwd.Text;

            strSQL = "select AdminID from Admin_User where AdminID = '" + username +"' and AdminPwd = '" + userpword + "'";
            //strSQL = "select AdminID from Admin_User"; 
           //where'" + username + "' and AdminPwd = '" + userpword + "'"; 
            cmd = new SqlCommand(strSQL, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["UserID"] = dr["AdminID"].ToString();//保存管理员ID
                Page.Response.Redirect("~/index.aspx");
            }
            else
            {
                Response.Write("<script>alert('用户名或密码错误，登录失败！')</script>");
            }
        }
    
}