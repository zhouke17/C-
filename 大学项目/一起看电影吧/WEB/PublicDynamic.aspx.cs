using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections;

public partial class PublicDynamic : System.Web.UI.Page
{
    protected int fc;
    protected string pcon;
    protected string ptime;
    protected ArrayList pc = new ArrayList();
    protected ArrayList pt = new ArrayList();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UID"] == null)
        { 
            topDiv.Visible = false;
            left.Visible= true;
        }
        else
        { 
            topDiv.Visible = true;
            left.Visible = false;
            Div6.Visible = false;
            
        }
    }

    protected void GetCount()//获取动态数量
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
        string strSel = "select count(PublicY) from Dynamic where PublicY='true'";
        conn.Open();
        SqlCommand cmd = new SqlCommand(strSel, conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            fc = Convert.ToInt32(dr[""]);
        }
    }

    protected void GetContent()//获取动态内容
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ToString());
        string strSQL = "select DContent,DTime from Dynamic where PublicY='true' order by Dnumber desc";
        SqlCommand cmd = new SqlCommand(strSQL, conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            pcon = dr["DContent"].ToString();
            ptime = dr["DTime"].ToString();
            pc.Add(dr["DContent"].ToString());
            pt.Add(dr["DTime"].ToString());
        }
    }
}