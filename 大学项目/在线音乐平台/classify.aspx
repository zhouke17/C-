<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="classify.aspx.cs" Inherits="classify" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            width: 214px;
        }
        .auto-style11 {
            width: 224px;
        }
        .auto-style12 {
            width: 108px;
        }
        .auto-style13 {
            width: 224px;
            height: 20px;
        }
        .auto-style14 {
            width: 214px;
            height: 20px;
        }
        .auto-style15 {
            width: 108px;
            height: 20px;
        }
        .auto-style16 {
            height: 20px;
        }
        .auto-style17 {
            width: 147px;
        }
        .auto-style18 {
            width: 147px;
            height: 20px;
        }
        .auto-style22 {
            color: #669999;
        }
        .auto-style23 {
            width: 147px;
            color: #669999;
        }
        .auto-style24 {
            width: 214px;
            color: #669999;
        }
        .auto-style25 {
            width: 125px;
        }
        .auto-style26 {
            height: 20px;
            width: 125px;
        }
        .auto-style27 {
            color: #669999;
            width: 125px;
        }
        .auto-style30 {
            color: #669999;
            width: 120px;
        }
        .auto-style31 {
            width: 120px;
        }
        .auto-style32 {
            width: 120px;
            height: 20px;
        }
        .auto-style33 {
            width: 246px;
        }
        .auto-style34 {
            height: 20px;
            width: 246px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style9">
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/图片/QQ截图20160831090057.png" />
            </td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style14"></td>
            <td class="auto-style15">
                <asp:ImageButton ID="ImageButton3" runat="server" Height="145px" ImageUrl="~/图片/!.jpg" Width="170px" />
            </td>
            <td class="auto-style18">
                <asp:ImageButton ID="ImageButton4" runat="server" Height="145px" ImageUrl="~/图片/$.jpg" Width="169px" />
            </td>
            <td class="auto-style26">
                <asp:ImageButton ID="ImageButton5" runat="server" Height="146px" ImageUrl="~/图片/%.jpg" Width="170px" />
            </td>
            <td class="auto-style32">
                <asp:ImageButton ID="ImageButton6" runat="server" Height="145px" ImageUrl="~/图片/@.jpg" Width="170px" />
            </td>
            <td class="auto-style34"></td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style14"></td>
            <td class="auto-style15">
                <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#00CC66">DJ舞曲</asp:LinkButton>
            </td>
            <td class="auto-style18">
                <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#00CC66">摇滚音乐</asp:LinkButton>
            </td>
            <td class="auto-style26">
                <asp:LinkButton ID="LinkButton7" runat="server" ForeColor="#00CC66">美式音乐</asp:LinkButton>
            </td>
            <td class="auto-style32">
                <asp:LinkButton ID="LinkButton8" runat="server" ForeColor="#00CC66">乡村音乐</asp:LinkButton>
            </td>
            <td class="auto-style34"></td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                <asp:Image ID="Image3" runat="server" Height="34px" ImageUrl="~/图片/QQ截图20160831085636.png" Width="74px" />
            </td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style12">
                <asp:LinkButton ID="LinkButton9" runat="server" CssClass="auto-style22">dj舞曲</asp:LinkButton>
            </td>
            <td class="auto-style17">
                <asp:LinkButton ID="LinkButton10" runat="server" CssClass="auto-style22">网络流行</asp:LinkButton>
            </td>
            <td class="auto-style25">
                <asp:LinkButton ID="LinkButton11" runat="server" CssClass="auto-style22">儿童歌曲</asp:LinkButton>
            </td>
            <td class="auto-style31">
                <asp:LinkButton ID="LinkButton12" runat="server" CssClass="auto-style22">校园民谣</asp:LinkButton>
            </td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style12">
                <asp:LinkButton ID="LinkButton13" runat="server" CssClass="auto-style22">影视原声</asp:LinkButton>
            </td>
            <td class="auto-style17">
                <asp:LinkButton ID="LinkButton14" runat="server" CssClass="auto-style22">爵士</asp:LinkButton>
            </td>
            <td class="auto-style25">
                <asp:LinkButton ID="LinkButton15" runat="server" CssClass="auto-style22">卡农</asp:LinkButton>
            </td>
            <td class="auto-style31">
                <asp:LinkButton ID="LinkButton16" runat="server" CssClass="auto-style22">纯音乐</asp:LinkButton>
            </td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style12">
                <asp:LinkButton ID="LinkButton17" runat="server" CssClass="auto-style22">轻音乐</asp:LinkButton>
            </td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/图片/QQ截图20160831085843.png" />
            </td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style12">
                <asp:LinkButton ID="LinkButton18" runat="server" CssClass="auto-style22">小清新</asp:LinkButton>
            </td>
            <td class="auto-style17">
                <asp:LinkButton ID="LinkButton21" runat="server" CssClass="auto-style22">劲爆</asp:LinkButton>
            </td>
            <td class="auto-style25">
                <asp:LinkButton ID="LinkButton24" runat="server" CssClass="auto-style22">激情</asp:LinkButton>
            </td>
            <td class="auto-style31">
                <asp:LinkButton ID="LinkButton26" runat="server" CssClass="auto-style22">治愈</asp:LinkButton>
            </td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style12">
                <asp:LinkButton ID="LinkButton19" runat="server" CssClass="auto-style22">独立</asp:LinkButton>
            </td>
            <td class="auto-style17">
                <asp:LinkButton ID="LinkButton23" runat="server" CssClass="auto-style22">中国风</asp:LinkButton>
            </td>
            <td class="auto-style25">
                <asp:LinkButton ID="LinkButton25" runat="server" CssClass="auto-style22">古风</asp:LinkButton>
            </td>
            <td class="auto-style31">
                <asp:LinkButton ID="LinkButton27" runat="server" CssClass="auto-style22">抒情</asp:LinkButton>
            </td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style12">
                <asp:LinkButton ID="LinkButton20" runat="server" CssClass="auto-style22">流行</asp:LinkButton>
            </td>
            <td class="auto-style17">
                <asp:LinkButton ID="LinkButton22" runat="server" CssClass="auto-style22">电子</asp:LinkButton>
            </td>
            <td class="auto-style25">
                <asp:LinkButton ID="LinkButton28" runat="server" CssClass="auto-style22">摇滚</asp:LinkButton>
            </td>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                <asp:Image ID="Image5" runat="server" Height="31px" ImageUrl="~/图片/QQ截图20160831085955.png" Width="83px" />
            </td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style12">
                <asp:LinkButton ID="LinkButton29" runat="server" CssClass="auto-style22">伤感</asp:LinkButton>
            </td>
            <td class="auto-style17">
                <asp:LinkButton ID="LinkButton34" runat="server" CssClass="auto-style22">欢快</asp:LinkButton>
            </td>
            <td class="auto-style25">
                <asp:LinkButton ID="LinkButton37" runat="server" CssClass="auto-style22">爱情</asp:LinkButton>
            </td>
            <td class="auto-style31">
                <asp:LinkButton ID="LinkButton38" runat="server" CssClass="auto-style22">感动</asp:LinkButton>
            </td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style14"></td>
            <td class="auto-style15">
                <asp:LinkButton ID="LinkButton30" runat="server" CssClass="auto-style22">想哭</asp:LinkButton>
            </td>
            <td class="auto-style18">
                <asp:LinkButton ID="LinkButton35" runat="server" CssClass="auto-style22">浪漫</asp:LinkButton>
            </td>
            <td class="auto-style26">
                <asp:LinkButton ID="LinkButton36" runat="server" CssClass="auto-style22">怀念</asp:LinkButton>
            </td>
            <td class="auto-style32">
                <asp:LinkButton ID="LinkButton39" runat="server" CssClass="auto-style22">寂寞</asp:LinkButton>
            </td>
            <td class="auto-style34"></td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style12">
                <asp:LinkButton ID="LinkButton31" runat="server" CssClass="auto-style22">励志</asp:LinkButton>
            </td>
            <td class="auto-style17">
                <asp:LinkButton ID="LinkButton33" runat="server" CssClass="auto-style22">喜悦</asp:LinkButton>
            </td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style14"></td>
            <td class="auto-style15"></td>
            <td class="auto-style18"></td>
            <td class="auto-style26"></td>
            <td class="auto-style32"></td>
            <td class="auto-style34"></td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/图片/QQ截图20160831090032.png" />
            </td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style12">
                <asp:LinkButton ID="LinkButton40" runat="server" CssClass="auto-style22">家务</asp:LinkButton>
            </td>
            <td class="auto-style17">
                <asp:LinkButton ID="LinkButton47" runat="server" CssClass="auto-style22">加班</asp:LinkButton>
            </td>
            <td class="auto-style25">
                <asp:LinkButton ID="LinkButton48" runat="server" CssClass="auto-style22">背景音乐</asp:LinkButton>
            </td>
            <td class="auto-style31">
                <asp:LinkButton ID="LinkButton51" runat="server" CssClass="auto-style22">酒吧</asp:LinkButton>
            </td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style12">
                <asp:LinkButton ID="LinkButton41" runat="server" CssClass="auto-style22">汽车</asp:LinkButton>
            </td>
            <td class="auto-style17">
                <asp:LinkButton ID="LinkButton46" runat="server" CssClass="auto-style22">下午茶</asp:LinkButton>
            </td>
            <td class="auto-style25">
                <asp:LinkButton ID="LinkButton49" runat="server" CssClass="auto-style22">运动</asp:LinkButton>
            </td>
            <td class="auto-style31">
                <asp:LinkButton ID="LinkButton50" runat="server" CssClass="auto-style22">午休</asp:LinkButton>
            </td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style14"></td>
            <td class="auto-style15">
                <asp:LinkButton ID="LinkButton42" runat="server" CssClass="auto-style22">毕业</asp:LinkButton>
            </td>
            <td class="auto-style18">
                <asp:LinkButton ID="LinkButton45" runat="server" CssClass="auto-style22">旅行</asp:LinkButton>
            </td>
            <td class="auto-style26">
                <asp:LinkButton ID="LinkButton52" runat="server" CssClass="auto-style22">聚会</asp:LinkButton>
            </td>
            <td class="auto-style32">
                <asp:LinkButton ID="LinkButton53" runat="server" CssClass="auto-style22">LinkButton</asp:LinkButton>
            </td>
            <td class="auto-style34"></td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style12">
                <asp:LinkButton ID="LinkButton43" runat="server" CssClass="auto-style22">婚礼</asp:LinkButton>
            </td>
            <td class="auto-style17">
                <asp:LinkButton ID="LinkButton44" runat="server" CssClass="auto-style22">餐厅</asp:LinkButton>
            </td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

