using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Self_serveTravelSystem.Self_serveTravel
{
    public partial class 审核 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != null)
            {
                string connStr = "server=ZHOUKE-PC;database=旅游自助系统;Integrated Security=true";
                SqlConnection conn = new SqlConnection(connStr);
                conn.Open();
                string sql = string.Format("update 旅游预约表 set 审核结果='通过' where 游客姓名='{0}'", TextBox1.Text);
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('"+TextBox1.Text+"审核通过')</script>");
              
            }
            else if(TextBox1.Text=="")
            { Response.Write("<script>alert('请输入游客姓名')</script>"); }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string connStr = "server=ZHOUKE-PC;database=旅游自助系统;Integrated Security=true";
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string sql = string.Format("update 旅游预约表 set 审核结果='{1}' where 游客姓名='{0}'", TextBox1.Text,TextBox2.Text);
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('"+"因为"+TextBox2.Text+"的原因，"+TextBox1.Text+"审核不通过!')</script>");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.Url.ToString());
        }

    }
}