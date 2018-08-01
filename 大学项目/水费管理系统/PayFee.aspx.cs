using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class PayFee : System.Web.UI.Page
{
    protected SqlConnection conn, conn1;
    protected SqlCommand cmd1, cmd2;
    string strSQL, strSQL2;
    bool exist = false;
    string temp = "0.0";
    float lastb = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["waterfeeConnectionString"].ToString());
        strSQL2 = "select ClientID,ClientName from Client_1";
        conn1.Open();
        cmd2 = new SqlCommand(strSQL2, conn1);
        SqlDataReader rd2 = cmd2.ExecuteReader();
        //查找交费用户是否存在
        while (rd2.Read())
        {
            if (rd2[0].ToString().Trim() == txtID.Text)
            {
                exist = true ;
                break;
            }
           // Emsg.Text=reader[0].ToString().Trim();
        }
        conn1.Close();
        //如果用户存在，则把数据写入数据库中
        if (exist==true)
        {
            strSQL = "select YuEr,ClientID from PayRecord1 ";
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["waterfeeConnectionString"].ToString());
            conn.Open();
            cmd1 = new SqlCommand(strSQL, conn);
            SqlDataReader Rd = cmd1.ExecuteReader();
            while (Rd.Read())//查找用户
            {
                if (txtID.Text.ToString().Trim() == Rd[1].ToString().Trim())
                {
                    temp = Rd[0].ToString().Trim();
                    break;
                }
                else
                {
                    temp = "0.0";
                }
            }
            conn.Close();
            lastb = float.Parse(temp);
            strSQL = "insert into PayRecord1 (ClientID,ClientName,PayAmount,PayTime,UsedAmount,UnitPrice,lastYuEr,YuEr) values ('";
            strSQL += txtID.Text.ToString() + "','";
            strSQL += txtName.Text.ToString() + "','";
            strSQL += txtPay.Text.ToString() + "','";
            strSQL += DateTime.Now.ToString() + "','";
            strSQL += txtAmount.Text.ToString() + "','";
            strSQL += txtPrice.Text.ToString() + "','";
            strSQL += temp + "','";
            strSQL += (float.Parse(txtPay.Text.ToString()) + lastb - float.Parse(txtPrice.Text.ToString()) * float.Parse(txtAmount.Text.ToString())).ToString() + "')";
            //创建数据库连接
            conn.Open();
            try
            {
                cmd1 = new SqlCommand(strSQL, conn);
                cmd1.ExecuteNonQuery();//执行非查询SQL命令，如增，删，改等
                Response.Write("<script>alert('交费成功!')</script>");
                lbMsg.Text = txtName.Text + "余额为" + (float.Parse(txtPay.Text.ToString()) + lastb - float.Parse(txtPrice.Text.ToString()) * float.Parse(txtAmount.Text.ToString())).ToString() + "'')";
            }
            catch (Exception err)
            {
               // Response.Write("<script>alert('该用户不存在，此次交费失败！')</script>");
                Response.Write(err.Message.ToString());
            }
           
            //lbMsg.Text = txtName.Text + "余额为" + (float.Parse(txtPay.Text.ToString()) + lastb - float.Parse(txtPrice.Text.ToString()) * float.Parse(txtAmount.Text.ToString())).ToString() + "'')";
            //创建数据库
            conn.Close();
            txtID.Text = "";
            txtName.Text = "";
            txtAmount.Text = "";
            txtPay.Text = "";
            txtPrice.Text = "";

        }
        else
        {
            //Response.Write("<script>alert('用户重复交费或该用户不存在，此次交费失败！')</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        txtID.Text = "";
        txtAmount.Text = "";
        txtPay.Text = "";
        txtPrice.Text = "";
        txtName.Text = "";
        Response.Write("<script>alert('重置成功!')</script>");
    }
}