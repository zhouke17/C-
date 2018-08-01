using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class searchmusic : System.Web.UI.Page
{
    protected SqlConnection conn;
    protected SqlCommand cmd;
    string strSQL;
    bool exist = false;
    public string music;
    public string Musicurl;
    public string a;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.Text == "歌手名")
        {
            string settings = Convert.ToString(ConfigurationManager.ConnectionStrings["MusicConnectionString"].ToString());
            strSQL = "select id,name,musicican,musicurl ,language from music ";
            conn = new SqlConnection(settings);
            conn.Open();
            cmd = new SqlCommand(strSQL, conn);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())  //若找到
            {

                if (TextBox1.Text.ToString() == rd[2].ToString().Trim())
                {

                    TextBox2.Text = rd[1].ToString();
                    TextBox3.Text = rd[2].ToString();
                    TextBox4.Text = rd[3].ToString();
                    TextBox5.Text = rd[4].ToString();
                    exist = true;
                    //TextBox1.Text = null;


                 }

            }

            rd.Close();
            conn.Close();
        }
        if (DropDownList1.Text == "歌曲名")
        {
            string settings = Convert.ToString(ConfigurationManager.ConnectionStrings["MusicConnectionString"].ToString());
            strSQL = "select id,name,musicican,musicurl ,language from music ";
            conn = new SqlConnection(settings);
            conn.Open();
            cmd = new SqlCommand(strSQL, conn);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())  //若找到
            {

                if (TextBox1.Text.ToString() == rd[1].ToString().Trim())
                {

                    TextBox2.Text = rd[1].ToString();
                    TextBox3.Text = rd[2].ToString();
                    TextBox4.Text = rd[3].ToString();
                    TextBox5.Text = rd[4].ToString();
                    exist = true;
                    //TextBox1.Text = null;
                    music = TextBox4.Text;
                }

            }


            rd.Close();
            conn.Close();
        }
     

        if (DropDownList1.Text == "语言")
        {
            string settings = Convert.ToString(ConfigurationManager.ConnectionStrings["MusicConnectionString"].ToString());
            strSQL = "select id,name,musicican,musicurl ,language from music ";
            conn = new SqlConnection(settings);
            conn.Open();
            cmd = new SqlCommand(strSQL, conn);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())  //若找到
            {

                if (TextBox1.Text.ToString() == rd[1].ToString().Trim())
                {

                    TextBox2.Text = rd[1].ToString();
                    TextBox3.Text = rd[2].ToString();
                    TextBox4.Text = rd[3].ToString();
                    TextBox5.Text = rd[4].ToString();
                    exist = true;
                    //TextBox1.Text = null;
                    music = TextBox4.Text;
                }

            }


            rd.Close();
            conn.Close();
        }

    }
}