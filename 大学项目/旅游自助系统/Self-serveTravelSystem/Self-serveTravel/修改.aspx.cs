using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//00
namespace Self_serveTravelSystem.Self_serveTravel
{
    public partial class 修改 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.DropDownList1.SelectedValue == "name")
            {
                DDL = "select * from 旅游预约表 where 游客姓名='" + TextBox10.Text + "'";
            }
            else
            {
                DDL = "select * from 旅游预约表 where 游客编号=" + TextBox10.Text;
            }

            if (!IsPostBack)
            {
                string connStr = "server=ZHOUKE-PC;database=旅游自助系统;Integrated Security=true";
                SqlConnection conn = new SqlConnection(connStr);
                //打开连接
                conn.Open();
                string sql = "select * from 旅游预约表";
                SqlCommand cmd = new SqlCommand(sql, conn);
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    TextBox10.DataBind();

                }
                conn.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string connStr = "server=ZHOUKE-PC;database=旅游自助系统;Integrated Security=true";
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string sql;
            if (this.DropDownList1.DataValueField == "name")
            {
                sql = "select * from 旅游预约表 where 姓名=" + TextBox10.Text;
            }
            else
            {
                sql = "select * from 旅游预约表 where 游客编号=" + TextBox10.Text;
            }
            SqlCommand cmd = new SqlCommand(DDL, conn);
            using (SqlDataReader dr = cmd.ExecuteReader())
            {
                dr.Read();
                TextBox1.Text = dr.GetInt32(0).ToString();
                TextBox2.Text = dr.GetString(1);
                TextBox3.Text = dr.GetString(2);
                TextBox4.Text = dr.GetDecimal(3).ToString();
                TextBox5.Text = dr.GetInt32(4).ToString();
                TextBox6.Text = dr.GetInt32(6).ToString();
                TextBox7.Text = dr.GetInt32(7).ToString();
                TextBox8.Text = dr.GetString(9);
                TextBox9.Text = dr.GetString(8);
                TextBox11.Text = dr.GetString(5);
            }
            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Button1.Attributes.Add("onclick", "return confirm('确定要更改吗?');");
            string connStr = "server=ZHOUKE-PC;database=旅游自助系统;Integrated Security=true";
            SqlConnection conn = new SqlConnection(connStr);
            //打开连接
            conn.Open();
            //insert student values(2017056102,'郭有军','男',23,'市场营销',657,1,NULL)
            //string sql = "insert student values(2017056102,'郭有军','男',23,'市场营销',657,1,NULL)";
            //string sql = "select * from student";
            string sql = string.Format("update 旅游预约表 set 游客姓名='{0}',性别='{1}',联系电话={2},公司编号={3},公司名称='{4}',线路编号={5},景点编号={6},景点名称='{7}',游览时间='{8}' where 游客编号={9}", TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox11.Text, TextBox6.Text, TextBox7.Text, TextBox9.Text, TextBox8.Text, TextBox1.Text);
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('更改成功!')</script>"); 
        }
        protected string DDL;
    }
}