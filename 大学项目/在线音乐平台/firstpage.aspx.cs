using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

public partial class member : System.Web.UI.Page
{
    public string Musicurl;
    protected void Page_Load(object sender, EventArgs e)
    {
      //  string a1 = System.Web.HttpContext.Current.Session["v1"].ToString();
        //Label27.Text ="欢迎"+ a1 ;
    }
    
    protected void LinkButton60_Click(object sender, EventArgs e)
    {
        Musicurl = "" + "D:\\WebSite1\\music\\许嵩 - 江湖 [mqms2].m4a" + Request.QueryString["Musicurl"];
    }
    protected void LinkButton61_Click(object sender, EventArgs e)
    {
        Musicurl = "" + "D:\\WebSite1\\music\\薛之谦 - 绅士 [mqms2].m4a" + Request.QueryString["Musicurl"];
    }
    protected void LinkButton62_Click(object sender, EventArgs e)
    {
        Musicurl = "" + "D:\\WebSite1\\music\\张学友-慢慢 [mqms2].m4a" + Request.QueryString["Musicurl"];
    }
    protected void LinkButton63_Click(object sender, EventArgs e)
    {
        Musicurl = "" + "D:\\WebSite1\\music\\Maroon 5 - Moves Like Jagger (Studio Recording fr.m4a" + Request.QueryString["Musicurl"];
    }
    protected void LinkButton64_Click(object sender, EventArgs e)
    {
        Musicurl = "" + "D:\\WebSite1\\music\\len_KnockKnock.mp3" + Request.QueryString["Musicurl"];
    }
    protected void LinkButton65_Click(object sender, EventArgs e)
    {
        Musicurl = "" + "D:\\WebSite1\\music\\a_SomeoneLikeY.mp3" + Request.QueryString["Musicurl"];
    }
    protected void LinkButton66_Click(object sender, EventArgs e)
    {
        Musicurl = "" + "D:\\WebSite1\\music\\苏打绿 - 小情歌.mp3" + Request.QueryString["Musicurl"];
    }
}