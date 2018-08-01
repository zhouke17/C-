<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="rankinglist.aspx.cs" Inherits="rankinglist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            height: 20px;
            color: #669999;
        }
        .auto-style11 {
            height: 20px;
            width: 104px;
        }
        .auto-style12 {
        }
        .auto-style13 {
            height: 20px;
            width: 93px;
        }
        .auto-style14 {
            width: 93px;
        }
        .auto-style15 {
            height: 20px;
            width: 349px;
        }
        .auto-style16 {
            width: 349px;
        }
        .auto-style18 {
        }
        .auto-style19 {
            width: 52px;
            height: 20px;
        }
    .auto-style21 {
        color: #00CC66;
    }
        .auto-style22 {
            height: 20px;
            color: #00CC66;
        }
        .auto-style23 {
            color: #669999;
        }
        .auto-style24 {
            color: #FF0000;
        }
        .auto-style25 {
            height: 20px;
            width: 104px;
            color: #FFFFFF;
        }
        .auto-style27 {
            height: 20px;
        }
        .auto-style28 {
            color: #FFFFFF;
            width: 104px;
        }
        .auto-style29 {
            width: 104px;
        }
        .auto-style30 {
            color: #FF0000;
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <table>
            <tr>
            <td class="auto-style13"></td>
            <td class="auto-style15"></td>
            <td class="auto-style11">
            <a name="top"></a></td>
            <td class="auto-style10" colspan="3"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style10" colspan="3">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style15"></td>
            <td class="auto-style11">
                <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text="排行榜"></asp:Label>
            </td>
            <td class="auto-style10" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                  <a name="1" style="color: #003300; font-weight: 700;">新歌榜</a></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style15"></td>
            <td class="auto-style25">
                <a href="#1">新歌榜</a>新 </td>
            <td class="auto-style19">
                </td>
            <td class="auto-style10">
                <asp:Label ID="Label8" runat="server" Text="歌曲" style="color: #00CC66"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:Label ID="Label9" runat="server" Text="歌手" style="color: #00CC66"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#00CC66" CssClass="auto-style24">试听</asp:LinkButton>
            </td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style15"></td>
            <td class="auto-style25">
                <a href="#2">热歌榜</a>&nbsp;</td>
            <td class="auto-style27">
                01</td>
            <td class="auto-style22">
                许嵩--江湖</td>
            <td class="auto-style10">
                许嵩</td>
            <td class="auto-style27">
                <asp:LinkButton ID="LinkButton77" runat="server" CssClass="auto-style24" OnClick="LinkButton77_Click">试听</asp:LinkButton>
            </td>
            <td class="auto-style27"></td>
            <td class="auto-style27"></td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style15"></td>
            <td class="auto-style25">
                 <a href="#3">儿歌榜</a>&nbsp;</td>
            <td class="auto-style27">
                02</td>
            <td class="auto-style27">
                <asp:Label ID="Label7" runat="server" Text="Cassadee Pope - 11" CssClass="auto-style21"></asp:Label>
            </td>
            <td class="auto-style10">
                Cassadee Pope</td>
            <td class="auto-style27">
                <asp:LinkButton ID="LinkButton78" runat="server" CssClass="auto-style24" OnClick="LinkButton78_Click">试听</asp:LinkButton>
            </td>
            <td class="auto-style27"></td>
            <td class="auto-style27"></td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style28">
                <a href="#4" >经典老歌榜</a></td>
            <td class="auto-style18">
                03</td>
            <td class="auto-style21">
                苏打绿 - 当我们一起走过</td>
            <td class="auto-style23">
                苏打绿</td>
            <td>
                <asp:LinkButton ID="LinkButton79" runat="server" CssClass="auto-style24" OnClick="LinkButton79_Click">试听</asp:LinkButton>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style28">
                <a href="#5" >网络流行榜</a></td>
            <td class="auto-style18">
                04</td>
            <td class="auto-style21">
                庄心妍 - 以后的以后</td>
            <td class="auto-style23">
                庄心妍</td>
            <td>
                <asp:LinkButton ID="LinkButton80" runat="server" CssClass="auto-style24" OnClick="LinkButton80_Click">试听</asp:LinkButton>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style15"></td>
            <td class="auto-style25"><a href="#6">情歌对唱榜</a>&nbsp;</td>
            <td class="auto-style27">
                05</td>
            <td class="auto-style22">
                周杰伦 - 雨下一整晚</td>
            <td class="auto-style10">
                周杰伦</td>
            <td class="auto-style27">
                <asp:LinkButton ID="LinkButton81" runat="server" CssClass="auto-style24" OnClick="LinkButton81_Click">试听</asp:LinkButton>
            </td>
            <td class="auto-style27"></td>
            <td class="auto-style27"></td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style28">
                <a href="#7" >轻音乐榜</a></td>
            <td class="auto-style18">
                05</td>
            <td class="auto-style21">
                张学友 - 慢慢
            </td>
            <td class="auto-style23">
                张学友</td>
            <td>
                <asp:LinkButton ID="LinkButton82" runat="server" CssClass="auto-style24" OnClick="LinkButton82_Click">试听</asp:LinkButton>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style15"></td>
            <td class="auto-style11"></td>
            <td class="auto-style19"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style15"></td>
            <td class="auto-style11"></td>
            <td class="auto-style10" colspan="3"><span class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         </span>
                         <a name="#2" class="auto-style23">热歌榜</a><span class="auto-style23"> </span>
            </td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style15"></td>
            <td class="auto-style11"></td>
            <td class="auto-style10">
                01</td>
            <td class="auto-style22">
                Taylor Swift - Stay Beautiful</td>
            <td class="auto-style10">
                Taylor Swift</td>
            <td class="auto-style10">
                <asp:LinkButton ID="LinkButton83" runat="server" OnClick="LinkButton83_Click" style="color: #FF0000">试听</asp:LinkButton>
            </td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style16"></td>
            <td class="auto-style29"></td>
            <td>
                02</td>
            <td class="auto-style21">
                Robbie Williams - Go Gentle</td>
            <td class="auto-style23">
                Robbie Williams</td>
            <td>
                <asp:LinkButton ID="LinkButton84" runat="server" OnClick="LinkButton84_Click" style="color: #FF0000">试听</asp:LinkButton>
            </td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">
                03</td>
            <td>
                <asp:Label ID="Label22" runat="server" Text="郭静 - 拥抱你的微笑(原來爱就是甜蜜电视剧片头曲)" CssClass="auto-style21"></asp:Label>
            </td>
            <td class="auto-style23">
                郭静</td>
            <td>
                <asp:LinkButton ID="LinkButton85" runat="server" OnClick="LinkButton85_Click" style="color: #FF0000">试听</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">
                04</td>
            <td style="color: #00CC66">
                李健;孙俪 - 风吹麦浪 (feat. 孙俪)</td>
            <td style="color: #669999">
                李健;孙俪</td>
            <td>
                <asp:LinkButton ID="LinkButton86" runat="server" OnClick="LinkButton86_Click" style="color: #FF0000">试听</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">
                05</td>
            <td style="color: #00CC66">
                苏打绿 - 小情歌</td>
            <td style="color: #669999">
                苏打绿
            </td>
            <td>
                <asp:LinkButton ID="LinkButton87" runat="server" OnClick="LinkButton87_Click" style="color: #FF0000">试听</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style15"></td>
            <td class="auto-style11"></td>
            <td class="auto-style27"></td>
            <td class="auto-style22"></td>
            <td class="auto-style10"></td>
            <td class="auto-style30"></td>
            <td class="auto-style27"></td>
            <td class="auto-style27"></td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style15"></td>
            <td class="auto-style11"></td>
            <td class="auto-style10" colspan="3">
                <span class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> <a name="3" class="auto-style23">儿歌榜</a><span class="auto-style23"> </span>    
            </td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style15"></td>
            <td class="auto-style11"></td>
            <td class="auto-style27">
                01</td>
            <td class="auto-style27">
                <asp:Label ID="Label45" runat="server" Text="数鸭子" CssClass="auto-style21"></asp:Label>
            </td>
            <td class="auto-style27">
                <asp:Label ID="Label54" runat="server" Text="儿童歌曲" CssClass="auto-style23"></asp:Label>
            </td>
            <td class="auto-style27">
                <asp:LinkButton ID="LinkButton52" runat="server" CssClass="auto-style24" >试听</asp:LinkButton>
            </td>
            <td class="auto-style27"></td>
            <td class="auto-style27"></td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style15"></td>
            <td class="auto-style11"></td>
            <td class="auto-style27">
                02</td>
            <td class="auto-style27">
                <asp:Label ID="Label46" runat="server" Text="爱我你就抱抱我" CssClass="auto-style21"></asp:Label>
            </td>
            <td class="auto-style27">
                <asp:Label ID="Label53" runat="server" Text="儿童歌曲" CssClass="auto-style23"></asp:Label>
            </td>
            <td class="auto-style27">
                <asp:LinkButton ID="LinkButton53" runat="server" CssClass="auto-style24" >试听</asp:LinkButton>
            </td>
            <td class="auto-style27"></td>
            <td class="auto-style27"></td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29"><a href="#top" style="color: #00CC66">回到顶部</a>&nbsp;</td>
            <td class="auto-style18">
                03</td>
            <td>
                <asp:Label ID="Label47" runat="server" Text="虫儿飞" CssClass="auto-style21"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label52" runat="server" Text="儿童歌曲" CssClass="auto-style23"></asp:Label>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton54" runat="server" CssClass="auto-style24" >试听</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">
                04</td>
            <td>
                <asp:Label ID="Label48" runat="server" Text="蓝精灵" CssClass="auto-style21"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label51" runat="server" Text="儿童歌曲" CssClass="auto-style23"></asp:Label>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton55" runat="server" CssClass="auto-style24" >试听</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">
                05</td>
            <td>
                <asp:Label ID="Label49" runat="server" Text="葫芦娃" CssClass="auto-style21"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label50" runat="server" Text="儿童歌曲" CssClass="auto-style23"></asp:Label>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton56" runat="server" CssClass="auto-style24" >试听</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style23" colspan="3">   <span class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           </span>
                           <a name="4" >经典老歌榜</a><span class="auto-style23">   &nbsp;</span></td>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">
                01</td>
            <td>
                <asp:Label ID="Label60" runat="server" Text="走过咖啡屋" CssClass="auto-style21"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label65" runat="server" Text="张蔷" CssClass="auto-style23"></asp:Label>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton57" runat="server" CssClass="auto-style24">试听</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">
                02</td>
            <td>
                <asp:Label ID="Label62" runat="server" Text="晚秋" CssClass="auto-style21"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label66" runat="server" Text="龚玥" CssClass="auto-style23"></asp:Label>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton58" runat="server" CssClass="auto-style24" >试听</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">
                03</td>
            <td>
                <asp:Label ID="Label61" runat="server" Text="草原之歌" CssClass="auto-style21"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label67" runat="server" Text="费玉清" CssClass="auto-style23"></asp:Label>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton59" runat="server" CssClass="auto-style24" >试听</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">
                04</td>
            <td>
                <asp:Label ID="Label63" runat="server" Text="望月" CssClass="auto-style21"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label68" runat="server" Text="宋祖英" CssClass="auto-style23"></asp:Label>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton60" runat="server" CssClass="auto-style24" >试听</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">
                05</td>
            <td>
                <asp:Label ID="Label64" runat="server" Text="长城长" CssClass="auto-style21"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label69" runat="server" Text="董文华" CssClass="auto-style23"></asp:Label>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton61" runat="server" CssClass="auto-style24" >试听</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
                
            <td colspan="3" class="auto-style23"><span class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                             </span> 
                                             <a name="5">网络流行榜</a><span class="auto-style23"> </span> </td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style15"></td>
            <td class="auto-style11"></td>
            <td class="auto-style10">
                01</td>
            <td class="auto-style10">
                <asp:Label ID="Label75" runat="server" Text="小苹果" CssClass="auto-style21"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:Label ID="Label81" runat="server" Text="筷子兄弟"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:LinkButton ID="LinkButton62" runat="server" CssClass="auto-style24" >试听</asp:LinkButton>
            </td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">
                02</td>
            <td>
                <asp:Label ID="Label76" runat="server" Text="红尘情歌" CssClass="auto-style21"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label80" runat="server" Text="郑源" CssClass="auto-style23"></asp:Label>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton63" runat="server" CssClass="auto-style24" >试听</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style15"></td>
            <td class="auto-style11"></td>
            <td class="auto-style27">
                03</td>
            <td class="auto-style27">
                <asp:Label ID="Label77" runat="server" Text="还是爱你" CssClass="auto-style21"></asp:Label>
            </td>
            <td class="auto-style27">
                <asp:Label ID="Label82" runat="server" Text="阿悄" CssClass="auto-style23"></asp:Label>
            </td>
            <td class="auto-style27">
                <asp:LinkButton ID="LinkButton64" runat="server" CssClass="auto-style24">试听</asp:LinkButton>
            </td>
            <td class="auto-style27"></td>
            <td class="auto-style27"></td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">
                04</td>
            <td>
                <asp:Label ID="Label78" runat="server" Text="好可惜" CssClass="auto-style21"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label83" runat="server" Text="庄心妍" CssClass="auto-style23"></asp:Label>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton65" runat="server" CssClass="auto-style24" >试听</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">
                05</td>
            <td>
                <asp:Label ID="Label79" runat="server" Text="小鸡小鸡" CssClass="auto-style21"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label84" runat="server" Text="王蓉" CssClass="auto-style23"></asp:Label>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton66" runat="server" CssClass="auto-style24" >试听</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style15"></td>
            <td class="auto-style11"></td>
            <td class="auto-style10" colspan="3"> <span class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </span>
                                        <a name="6" class="auto-style23">情歌对唱榜</a><span class="auto-style23"> </span> </td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">
                01</td>
            <td>
                <asp:Label ID="Label105" runat="server" Text="知心爱人" CssClass="auto-style21"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label110" runat="server" Text="任静/付笛声" CssClass="auto-style23"></asp:Label>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton67" runat="server" CssClass="auto-style24" >试听</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">
                02</td>
            <td>
                <asp:Label ID="Label106" runat="server" Text="外面的世界" CssClass="auto-style21"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label111" runat="server" Text="齐秦/莫文蔚" CssClass="auto-style23"></asp:Label>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton68" runat="server" CssClass="auto-style24" >试听</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style15"></td>
            <td class="auto-style11"></td>
            <td class="auto-style27">
            </td>
            <td class="auto-style27">
            </td>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style27"></td>
            <td class="auto-style27"></td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style15"></td>
            <td class="auto-style11"></td>
            <td class="auto-style27">
            </td>
            <td class="auto-style27">
            </td>
            <td class="auto-style27">
            </td>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style27"></td>
            <td class="auto-style27"></td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style15"></td>
            <td class="auto-style11"><a href="#top" style="color: #00CC66">回到顶部</a>&nbsp;</td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style23" colspan="3">
                                   <span class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> <a name="7" class="auto-style23">轻音乐榜</a><span class="auto-style23"> &nbsp;</span></td>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">
                01</td>
            <td>
                <asp:Label ID="Label95" runat="server" Text="你是我的玫瑰花" CssClass="auto-style21"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label100" runat="server" Text="童丽" CssClass="auto-style23"></asp:Label>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton72" runat="server" CssClass="auto-style24" >试听</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">
                02</td>
            <td>
                <asp:Label ID="Label96" runat="server" Text="友谊地久天长" CssClass="auto-style21"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label101" runat="server" Text="黑鸭子合唱组" CssClass="auto-style23"></asp:Label>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton73" runat="server" CssClass="auto-style24" >试听</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">
                03</td>
            <td>
                <asp:Label ID="Label97" runat="server" Text="蓝色多瑙河" CssClass="auto-style21"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label103" runat="server" Text="助眠音乐" CssClass="auto-style23"></asp:Label>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton74" runat="server" CssClass="auto-style24" >试听</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style15"></td>
            <td class="auto-style11"></td>
            <td class="auto-style27">
                04</td>
            <td class="auto-style27">
                <asp:Label ID="Label98" runat="server" Text="摇篮曲" CssClass="auto-style21"></asp:Label>
            </td>
            <td class="auto-style27">
                <asp:Label ID="Label102" runat="server" Text="黑鸭子合唱组" CssClass="auto-style23"></asp:Label>
            </td>
            <td class="auto-style27">
                <asp:LinkButton ID="LinkButton75" runat="server" CssClass="auto-style24" >试听</asp:LinkButton>
            </td>
            <td class="auto-style27"></td>
            <td class="auto-style27"></td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style18">
                05</td>
            <td>
                <asp:Label ID="Label99" runat="server" Text="Label" CssClass="auto-style21"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label104" runat="server" Text="老地方" CssClass="auto-style23"></asp:Label>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton76" runat="server" CssClass="auto-style24" >试听</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style12" colspan="5" rowspan="4">
     <object id="MediaPlayer" width="500"
        classid="CLSID:6BF52A52-394A-11d3-B153-00C04F79FAA6"
        type="application/oleodject" align="baseline" border="0">
        <param name="Filname" value="<%=Musicurl%>" valuetype="ref" />
        <param name="ShowControls" value="1" />
        <param name="ShowPositionControls" value="1" />
        <param name="Show AudioControls" value="1" />
            <param name="ShowTracker" value="1" />
                <param name="ShowDisplay" value="1" />
        <param name="ShowStatusbar" value="1" />
        <param name="AutoSize" value="0" />
        <param name="ShowGotBar" value="0" />
        <param name="ShowCaptioning" value="0" />
        <param name="AutoStart" value="-1" />
        <param name="PlayCount" value="1" />
        <param name="AnimationAtStart" value="0" />
        <param name="TransparentAtStart" value="1" />
        <param name="AllowScan" value="0" />
        <param name="EnableContentMenu" value="1" />
        <param name="ClickToPlay" value="1" />
        <param name="InvokeURLs" value="-1" />
        <param name="uiMode" value="full" />
        <param name="DefaultFrame" value="1" />
        <param name="URL" value="<%=Musicurl %>" />
        <param name="rate" value="1" />
        <param name="balance" value="0" />
        <param name="currentPosition" value="0" />
        <param name="currentMarker" value="0" />
        <param name="baseURL" value="" />
        <param name="volume" value="50" />
        <param name="mute" value="0" />
        <param name="stretchToFit" value="0" />
        <param name="windowlessVideo" value="0" />
        <param name="enabled" value="-1" />
        <param name="enableContextMenu" value="-1" />
        <param name="fullScreen" value="0" />
        <param name="SAMIStyle" value="" />
        <param name="SAMILang" value="" />
        <param name="SAMIFilename" value="" />
        <param name="captioningID" value="" />
        <param name="enableErrorDialogs" value="0" />
        <embed id="Embed1" height="150" width="500" src="<%=Musicurl%>"
            type="application/x-mplayer2" autostart="0" EnableContentMenu="0" ></embed>          
    </object>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>

