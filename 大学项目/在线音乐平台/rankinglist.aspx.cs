using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class rankinglist : System.Web.UI.Page
{
    public String Musicurl;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
   
    protected void LinkButton77_Click(object sender, EventArgs e)
    {
        Musicurl = "" + "D:\\WebSite1\\music\\许嵩 - 江湖 [mqms2].m4a" + Request.QueryString["Musicurl"];
    }
    protected void LinkButton78_Click(object sender, EventArgs e)
    {
        Musicurl = "" + "D:\\WebSite1\\music\\Cassadee Pope - 11.mp3" + Request.QueryString["Musicurl"];
    }
    protected void LinkButton79_Click(object sender, EventArgs e)
    {
        Musicurl = "" + "D:\\WebSite1\\music\\苏打绿 - 当我们一起走过.mp3" + Request.QueryString["Musicurl"];
    }
    protected void LinkButton80_Click(object sender, EventArgs e)
    {
        Musicurl = "" + "D:\\WebSite1\\music\\庄心妍 - 以后的以后.mp3" + Request.QueryString["Musicurl"];
    }
    protected void LinkButton81_Click(object sender, EventArgs e)
    {
        Musicurl = "" + "D:\\WebSite1\\music\\周杰伦 - 雨下一整晚.mp3" + Request.QueryString["Musicurl"];
    }
    protected void LinkButton82_Click(object sender, EventArgs e)
    {
        Musicurl = "" + "D:\\WebSite1\\music\\张学友 - 慢慢 [mqms2].m4a" + Request.QueryString["Musicurl"];
    }

    protected void LinkButton83_Click(object sender, EventArgs e)
    {
        Musicurl = "" + "D:\\WebSite1\\music\\Taylor Swift - Stay Beautiful.mp3" + Request.QueryString["Musicurl"];
    }
  
    protected void LinkButton84_Click(object sender, EventArgs e)
    {
        Musicurl = "" + "D:\\WebSite1\\music\\Robbie Williams - Go Gentle.mp3" + Request.QueryString["Musicurl"];
    }
    protected void LinkButton85_Click(object sender, EventArgs e)
    {
        Musicurl = "" + "D:\\WebSite1\\music\\郭静 - 拥抱你的微笑(原來爱就是甜蜜电视剧片头曲).mp3" + Request.QueryString["Musicurl"];
    }
    protected void LinkButton86_Click(object sender, EventArgs e)
    {
        Musicurl = "" + "D:\\WebSite1\\music\\李健;孙俪 - 风吹麦浪 (feat. 孙俪).mp3" + Request.QueryString["Musicurl"];
    }
    protected void LinkButton87_Click(object sender, EventArgs e)
    {
        Musicurl = "" + "D:\\WebSite1\\music\\苏打绿 - 小情歌.mp3" + Request.QueryString["Musicurl"];
    }

  
}