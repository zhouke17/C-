using System;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public class word
{
    public string _imgurl;
    public string _text;
    public string _time;

    public string imgurl
    {
        set { _imgurl = value; }
        get { return _imgurl; }
    }
    public string text
    {
        set { _text = value; }
        get { return _text; }
    }
    public string time
    {
        set { _time = value; }
        get { return _time; }
    }
}

public partial class Talking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //检测session是否存在，如果没有session值，返回登录页面
        if ((Request.QueryString["Mname"].ToString() == "" || Request.QueryString["Mname"] == null) && (Request.QueryString["Fname"].ToString() == "" || Request.QueryString["Fname"] == null))
        {
            Response.Redirect("Login.aspx");
        }

        //如果还没有Application["chat"]则创建，如果有则写入panel
        if (Application[Request.QueryString["Fname"].ToString() + Request.QueryString["Mname"].ToString()] != null)
        {
            pnl_chat.Controls.Add((Panel)Application[Request.QueryString["Fname"].ToString() + Request.QueryString["Mname"].ToString()]);
        }
        else
        {
            Panel _pnl = new Panel();
            Application[Request.QueryString["Fname"].ToString() + Request.QueryString["Mname"].ToString()] = _pnl;
        }
    }

    word a = new word();
    HtmlGenericControl div;

    protected void Button1_Click(object sender, EventArgs e)//发送
    {
        if (txt_word.Text != "")
        { // 注意：实际应用中，文本框是否为空，都应在前台进行检测；

            a._imgurl = Request.QueryString["url"].ToString();
            a._text = txt_word.Text;
            a._time = DateTime.Now.ToLongTimeString();

            Label lab_name = new Label();
            Label lab_word = new Label();
            Image image_user = new Image();
            Literal br = new Literal();
            br.Text = "<br/>";

            Panel _apppnl = (Panel)Application[Request.QueryString["Fname"].ToString() + Request.QueryString["Mname"].ToString()];

            div = new HtmlGenericControl();

            image_user.ImageUrl = a.imgurl;
            image_user.Height = 30;
            image_user.Width = 30;
            lab_word.Text = a.text;
            br.Text = "<br/>";

            div.TagName = "div";
            lab_name.Text = a.imgurl.ToString() + "[" + a.time + "]:";
            div.Attributes["class"] = "auto-style1";
            div.Controls.Add(image_user);
            div.Controls.Add(lab_name);
            div.Controls.Add(lab_word);
            div.Controls.Add(br);

            _apppnl.Controls.AddAt(0, div);

            Application.Lock();
            Application[Request.QueryString["Fname"].ToString() + Request.QueryString["Mname"].ToString()] = _apppnl;
            Application.UnLock();



            //清空文本框
            txt_word.Text = "";

            pnl_chat.Controls.Add((Panel)Application[Request.QueryString["Fname"].ToString() + Request.QueryString["Mname"].ToString()]);
        }
    }

    protected void Button3_Click(object sender, EventArgs e)//退出并清空
    {
        Application[Request.QueryString["Fname"].ToString() + Request.QueryString["Mname"].ToString()]=null;
        Response.Redirect("Friends.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)//清空
    {
        Application.Lock();
        Application.Remove(Request.QueryString["Fname"].ToString() + Request.QueryString["Mname"].ToString());
        Application.UnLock();

        Server.Transfer("Friends.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)//退出聊天
    {
        Server.Transfer("Friends.aspx");
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {

    }
}