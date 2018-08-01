using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class music : System.Web.UI.Page
{

    public String Musicurl;
    //  protected void Page_Load(object sender, EventArgs e)

    //  url = "" + "D:\\WebSite1\\music\\" + Request.QueryString["url"];
    //private string _musicurl = string.Empty;
    //public string Musicurl
    //{
    //    get { return _musicurl; }
    //    set { _musicurl = value; }
    //}
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{



        //    if (Request.Form["Hidden1"] != null || Request.Form["Hidden1"] != string.Empty)
        //        {
        //            LinkButton1.Visible = true;
        //            LinkButton1.Text = "许嵩--江湖"; 
        //            if (Musicurl == string.Empty || Musicurl == null)
        //            {
        //                Musicurl = Request.Form["Hidden1"];
        //            }
        //        }

        //    if (Request.Form["Hidden2"] != null || Request.Form["Hidden2"] != string.Empty)
        //    {
        //        LinkButton1.Visible = true;
        //        LinkButton1.Text = "薛之谦--绅士";
        //        if (Musicurl == string.Empty || Musicurl == null)
        //        {
        //            Musicurl = Request.Form["Hidden2"];
        //        }
        //    }
        //    if (Request.Form["Hidden3"] != null || Request.Form["Hidden3"] != string.Empty)
        //    {
        //        LinkButton1.Visible = true;
        //        LinkButton1.Text = "张学友-慢慢";
        //        if (Musicurl == string.Empty || Musicurl == null)
        //        {
        //            Musicurl = Request.Form["Hidden3"];
        //        }
        //    }
        //    if (Request.Form["Hidden4"] != null || Request.Form["Hidden4"] != string.Empty)
        //    {
        //        LinkButton1.Visible = true;
        //        LinkButton1.Text = "Maroon 5 - Moves Like Jagger";
        //        if (Musicurl == string.Empty || Musicurl == null)
        //        {
        //            Musicurl = Request.Form["Hidden4"];
        //        }
        //    }
        //    if (Request.Form["Hidden5"] != null || Request.Form["Hidden5"] != string.Empty)
        //    {
        //        LinkButton1.Visible = true;
        //        LinkButton1.Text = "len_KnockKnock";
        //        if (Musicurl == string.Empty || Musicurl == null)
        //        {
        //            Musicurl = Request.Form["Hidden5"];
        //        }
        //    }
        //    if (Request.Form["Hidden6"] != null || Request.Form["Hidden6"] != string.Empty)
        //    {
        //        LinkButton1.Visible = true;
        //        LinkButton1.Text = "a_SomeoneLikeY";
        //        if (Musicurl == string.Empty || Musicurl == null)
        //        {
        //            Musicurl = Request.Form["Hidden6"];
        //        }
        //    }
        //    if (Request.Form["Hidden7"] != null || Request.Form["Hidden7"] != string.Empty)
        //    {
        //        LinkButton1.Visible = true;
        //        LinkButton1.Text = "苏打绿 - 小情歌";
        //        if (Musicurl == string.Empty || Musicurl == null)
        //        {
        //            Musicurl = Request.Form["Hidden7"];
        //        }
        //    }
        //}

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Musicurl = "" + "D:\\WebSite1\\music\\许嵩 - 江湖 [mqms2].m4a" + Request.QueryString["Musicurl"];
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Musicurl = "" + "D:\\WebSite1\\music\\薛之谦 - 绅士 [mqms2].m4a" + Request.QueryString["Musicurl"];
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Musicurl = "" + "D:\\WebSite1\\music\\张学友-慢慢 [mqms2].m4a" + Request.QueryString["Musicurl"];
     }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Musicurl = "" + "D:\\WebSite1\\music\\Maroon 5 - Moves Like Jagger (Studio Recording fr.m4a" + Request.QueryString["Musicurl"];
     }
    protected void LinkButton5_Click(object sender, EventArgs e)
     {
         Musicurl = "" + "D:\\WebSite1\\music\\len_KnockKnock.mp3" + Request.QueryString["Musicurl"];
     }
    protected void LinkButton6_Click(object sender, EventArgs e)
   {
       Musicurl = "" + "D:\\WebSite1\\music\\a_SomeoneLikeY.mp3" + Request.QueryString["Musicurl"];
   }
   protected void LinkButton7_Click(object sender, EventArgs e)
   {
       Musicurl = "" + "D:\\WebSite1\\music\\苏打绿 - 小情歌.mp3" + Request.QueryString["Musicurl"];
    }
   protected void LinkButton8_Click(object sender, EventArgs e)
   {
       Musicurl = "" + "D:\\Website1\\music\\庄心妍 - 心有所爱.mp3" + Request.QueryString["Musicurl"];
   }
}

