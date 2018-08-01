<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="singers.aspx.cs" Inherits="singers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style12 {}
        .auto-style13 {
        }
        .auto-style16 {
            color: #003300;
        }
        .auto-style17 {
            color: #669999;
        }
        .auto-style23 {
            width: 107px;
            height: 36px;
        }
        .auto-style24 {
            height: 36px;
        }
        .auto-style26 {
            height: 5px;
        }
        .auto-style29 {
            width: 107px;
        }
        .auto-style33 {
            width: 107px;
            height: 20px;
        }
        .auto-style35 {
            height: 20px;
        }
        .auto-style36 {
            width: 76px;
        }
        .auto-style37 {
            height: 36px;
            width: 76px;
        }
        .auto-style38 {
            height: 20px;
            width: 76px;
        }
        .auto-style41 {
            width: 107px;
            height: 18px;
        }
        .auto-style43 {
            width: 76px;
            height: 18px;
        }
        .auto-style44 {
            height: 18px;
        }
        .auto-style47 {
            width: 371px;
            height: 5px;
            color: #669999;
        }
        .auto-style48 {
            width: 371px;
            color: #669999;
            height: 36px;
        }
        .auto-style50 {
        width: 371px;
        height: 20px;
        color: #00CC66;
    }
        .auto-style51 {
        width: 371px;
        color: #669999;
        height: 18px;
    }
        .auto-style52 {
            width: 121px;
        }
        .auto-style53 {
            height: 20px;
            width: 121px;
        }
        .auto-style54 {
            width: 121px;
            height: 5px;
            color: #669999;
        }
        .auto-style55 {
            width: 121px;
            color: #669999;
            height: 36px;
        }
        .auto-style56 {
            color: #669999;
            width: 121px;
        }
        .auto-style57 {
            width: 121px;
            height: 20px;
            color: #669999;
        }
        .auto-style58 {
            width: 121px;
            color: #669999;
            height: 18px;
        }
        .auto-style60 {
        height: 20px;
        width: 371px;
    }
        .auto-style61 {
        color: #00CC66;
        width: 371px;
    }
        .auto-style62 {
        width: 371px;
    }
        .auto-style63 {
            width: 121px;
            height: 84px;
        }
        .auto-style64 {
            width: 371px;
            height: 84px;
        }
        .auto-style67 {
            width: 107px;
            height: 84px;
        }
        .auto-style69 {
            width: 76px;
            height: 84px;
        }
        .auto-style70 {
            height: 84px;
        }
        .auto-style71 {
            width: 133px;
            color: #00CC66;
        }
        .auto-style72 {
            height: 20px;
            width: 133px;
        }
        .auto-style73 {
            width: 133px;
            height: 5px;
            color: #00CC66;
        }
        .auto-style74 {
            width: 133px;
            color: #00CC66;
            height: 36px;
        }
        .auto-style75 {
            width: 133px;
            height: 84px;
        }
        .auto-style76 {
            color: #669999;
            width: 133px;
        }
        .auto-style77 {
            width: 133px;
            height: 20px;
            color: #669999;
        }
        .auto-style78 {
            width: 133px;
            color: #669999;
            height: 18px;
        }
        .auto-style84 {
            width: 77px;
            height: 20px;
            text-decoration: underline;
            color: #669999;
        }
        .auto-style90 {
            width: 121px;
            height: 13px;
        }
        .auto-style91 {
            width: 371px;
            height: 13px;
        }
        .auto-style92 {
            width: 133px;
            height: 13px;
        }
        .auto-style94 {
            width: 107px;
            height: 13px;
            color: #669999;
        }
        .auto-style96 {
            width: 76px;
            height: 13px;
            color: #669999;
        }
        .auto-style97 {
            height: 13px;
        }
        .auto-style98 {
            width: 121px;
            height: 36px;
        }
        .auto-style99 {
            width: 371px;
            height: 36px;
        }
        .auto-style100 {
            width: 133px;
            height: 36px;
        }
        .auto-style101 {
            width: 91px;
        }
        .auto-style102 {
            height: 36px;
            width: 91px;
        }
        .auto-style103 {
            height: 84px;
            width: 91px;
        }
        .auto-style104 {
            height: 20px;
            width: 91px;
        }
        .auto-style105 {
            height: 18px;
            width: 91px;
        }
        .auto-style106 {
            height: 13px;
            width: 91px;
            color: #669999;
        }
        .auto-style107 {
            height: 20px;
            width: 76px;
            color: #669999;
        }
        .auto-style108 {
            height: 20px;
            width: 91px;
            color: #669999;
        }
        .auto-style109 {
            width: 107px;
            height: 20px;
            color: #669999;
        }
        .auto-style110 {
            width: 76px;
            color: #669999;
        }
        .auto-style111 {
            width: 91px;
            color: #669999;
        }
        .auto-style112 {
            width: 107px;
            color: #669999;
        }
        .auto-style113 {
            width: 76px;
            height: 18px;
            color: #669999;
        }
        .auto-style114 {
            height: 18px;
            width: 91px;
            color: #669999;
        }
        .auto-style115 {
            width: 107px;
            height: 18px;
            color: #669999;
        }
        .auto-style116 {
            width: 121px;
            height: 114px;
        }
        .auto-style117 {
            width: 371px;
            height: 114px;
        }
        .auto-style118 {
            width: 133px;
            height: 114px;
        }
        .auto-style119 {
            width: 76px;
            height: 114px;
        }
        .auto-style120 {
            width: 107px;
            height: 114px;
        }
        .auto-style121 {
            width: 91px;
            height: 114px;
        }
        .auto-style122 {
            height: 114px;
        }
        .auto-style123 {
            width: 77px;
        }
        .auto-style124 {
            height: 36px;
            width: 77px;
        }
        .auto-style125 {
            width: 77px;
            height: 84px;
        }
        .auto-style126 {
            height: 20px;
            width: 77px;
            color: #669999;
        }
        .auto-style127 {
            width: 77px;
            color: #669999;
        }
        .auto-style128 {
            width: 77px;
            height: 18px;
            color: #669999;
        }
        .auto-style129 {
            width: 77px;
            height: 18px;
        }
        .auto-style130 {
            width: 77px;
            height: 13px;
            color: #669999;
        }
        .auto-style131 {
            height: 20px;
            width: 77px;
        }
        .auto-style132 {
            width: 77px;
            height: 114px;
        }
    .auto-style133 {
        width: 133px;
        color: #00CC66;
    }
    .auto-style134 {
        width: 371px;
        color: #00CC66;
        height: 18px;
    }
    .auto-style135 {
        width: 133px;
        height: 20px;
        color: #00CC66;
    }
    .auto-style136 {
        color: #00CC66;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-attachment:scroll;background-position:center">
     <table class="auto-style9">
 
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71"><span class="auto-style136">
                <a name="0">全部歌手</a></span><br />
            </td>
            <td colspan="5">&nbsp;&nbsp;<a name="top"></a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: large" Text="全部歌手"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style53">
                &nbsp;</td>
            <td class="auto-style60">
                &nbsp;</td>
            <td class="auto-style72">
                <asp:Label ID="Label3" runat="server" style="font-weight: 700" Text="华语"></asp:Label>
            </td>
            <td class="auto-style123" rowspan="3">
                <asp:ImageButton ID="ImageButton4" runat="server" Height="107px" ImageUrl="~/图片/20140218175057634765.jpg" Width="126px" />
            </td>
            <td class="auto-style29" rowspan="3">
                <asp:ImageButton ID="ImageButton3" runat="server" Height="109px" ImageUrl="~/图片/20150205183647548621.jpg" Width="111px" />
            </td>
            <td rowspan="3" class="auto-style101">
                <asp:ImageButton ID="ImageButton5" runat="server" Height="111px" ImageUrl="~/图片/20140219144443835290.jpg" Width="110px" />
            </td>
            <td class="auto-style36" rowspan="3">
                <asp:ImageButton ID="ImageButton6" runat="server" Height="111px" ImageUrl="~/图片/20140219154202584035.jpg" Width="110px" />
            </td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style52">
                &nbsp;</td>
            <td class="auto-style62">
                &nbsp;</td>
            <td class="auto-style133">
                <a href="#1"><span class="auto-style136">华语男歌手</span></a>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style54">
                &nbsp;</td>
            <td class="auto-style47">
                &nbsp;</td>
            <td class="auto-style73">
                <a href="#2"><span class="auto-style136">华语女歌手</span></a>
            </td>
            <td class="auto-style26"></td>
        </tr>
        <tr>
            <td class="auto-style55">
                &nbsp;</td>
            <td class="auto-style48">
                &nbsp;</td>
            <td class="auto-style74">
                <a href="#3"><span class="auto-style136">华语组合</span></a>
            </td>
            <td class="auto-style124">&nbsp;<br />
&nbsp; 刘德华&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style23">&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="Ruin"></asp:Label>
            </td>
            <td class="auto-style102">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lenka&nbsp;
            </td>
            <td class="auto-style37">&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Text="Swift"></asp:Label>
            &nbsp;</td>
            <td class="auto-style24"></td>
        </tr>
        <tr>
            <td class="auto-style63">
                </td>
            <td class="auto-style64">
                </td>
            <td class="auto-style75">
                <asp:Label ID="Label4" runat="server" Text="欧美"></asp:Label>
            </td>
            <td class="auto-style125">
                <asp:ImageButton ID="ImageButton7" runat="server" Height="106px" ImageUrl="~/图片/20140403173834805169.jpg" Width="128px" />
            </td>
            <td class="auto-style67">
                <asp:ImageButton ID="ImageButton8" runat="server" Height="111px" ImageUrl="~/图片/20140409145904650908.jpg" Width="111px" />
            </td>
            <td class="auto-style103">
                <asp:ImageButton ID="ImageButton9" runat="server" Height="109px" ImageUrl="~/图片/20150120111436940484.jpg" Width="109px" />
            </td>
            <td class="auto-style69">
                <asp:ImageButton ID="ImageButton10" runat="server" Height="111px" ImageUrl="~/图片/20150129153401479391.jpg" Width="110px" />
            </td>
            <td class="auto-style70"></td>
        </tr>
        <tr>
            <td class="auto-style56">
                    &nbsp;</td>
            <td class="auto-style61">
                    &nbsp;</td>
            <td class="auto-style76">
                    <a href="#4"><span class="auto-style136">欧美男歌手</span></a><span class="auto-style136"> </span>
            </td>
            <td class="auto-style123">&nbsp;&nbsp;<asp:Label ID="Label13" runat="server" Text="maroon5"></asp:Label>
&nbsp;&nbsp; </td>
            <td class="auto-style29">&nbsp;
                <asp:Label ID="Label10" runat="server" Text="杰克逊"></asp:Label>
            </td>
            <td class="auto-style101">&nbsp;
                <asp:Label ID="Label11" runat="server" Text="王力宏"></asp:Label>
            </td>
            <td class="auto-style36">&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label12" runat="server" Text="贾斯丁.比伯"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style57">
                    &nbsp;</td>
            <td class="auto-style50">
                    &nbsp;</td>
            <td class="auto-style77">
                    <a href="#5"><span class="auto-style136">欧美女歌手</span></a><span class="auto-style136"> </span>
            </td>
            <td class="auto-style126">张杰</td>
            <td class="auto-style109">许嵩</td>
            <td class="auto-style108">黎明</td>
            <td class="auto-style107">汪峰</td>
            <td class="auto-style35"></td>
        </tr>
        <tr>
            <td class="auto-style57">
                &nbsp;</td>
            <td class="auto-style50">
                &nbsp;</td>
            <td class="auto-style77">
                <a href="#6"><span class="auto-style136">欧美组合</span></a><span class="auto-style136"> </span>
            </td>
            <td class="auto-style127">李宇春</td>
            <td class="auto-style112">欧豪</td>
            <td class="auto-style111">何洁</td>
            <td class="auto-style110">曲婉婷</td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style57">
                &nbsp;</td>
            <td class="auto-style50">
                &nbsp;</td>
            <td class="auto-style135">
                &nbsp;</td>
            <td class="auto-style127">&nbsp;</td>
            <td class="auto-style112">&nbsp;</td>
            <td class="auto-style111">&nbsp;</td>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        
            <tr>
            <td class="auto-style57">
                &nbsp;</td>
            <td class="auto-style50">
                &nbsp;</td>
            <td class="auto-style135">
                &nbsp;</td>
            <td class="auto-style127">&nbsp;</td>
            <td class="auto-style112">&nbsp;</td>
            <td class="auto-style111">&nbsp;</td>
            <td class="auto-style110">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
       
             <tr>
            <td class="auto-style52">
                &nbsp;</td>
            <td class="auto-style61">
                &nbsp;</td>
            <td class="auto-style71">
                <asp:Label ID="Label5" runat="server" Text="日韩" CssClass="auto-style16"></asp:Label>
            </td>
            <td class="auto-style127">薛之谦</td>
            <td class="auto-style112">毕夏</td>
            <td class="auto-style111">钟汉良</td>
            <td class="auto-style110">魏晨</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style56">
                    &nbsp;</td>
            <td class="auto-style61">
                    &nbsp;</td>
            <td class="auto-style76">
                    <a href="#7"><span class="auto-style136">韩国歌手</span></a><span class="auto-style136"> </span>
            </td>
            <td class="auto-style127">吴亦凡</td>
            <td class="auto-style112">朴树</td>
            <td class="auto-style111">筷子兄弟</td>
            <td class="auto-style110">张信哲</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style58">
                    &nbsp;</td>
            <td class="auto-style134">
                    &nbsp;</td>
            <td class="auto-style78">
                    <a href="#8"><span class="auto-style136">日本歌手</span></a><span class="auto-style136"> </span>
            </td>
            <td class="auto-style128">信</td>
            <td class="auto-style115">徐佳莹</td>
            <td class="auto-style114">莫文蔚</td>
            <td class="auto-style113">赵传</td>
            <td class="auto-style44"></td>
        </tr>
        



        <tr>
            <td class="auto-style58">
                    &nbsp;</td>
            <td class="auto-style51">
                    &nbsp;</td>
            <td class="auto-style78">
                    &nbsp;</td>
            <td class="auto-style129">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style105">&nbsp;</td>
            <td class="auto-style43">&nbsp;</td>
            <td class="auto-style44">&nbsp;</td>
        </tr>



        <tr>
            <td class="auto-style53"></td>
            <td class="auto-style60"></td>
            <td class="auto-style72"></td>
            <td class="auto-style84"> <a name="1">华语男歌手</a></td>
            <td class="auto-style33"></td>
            <td class="auto-style104"></td>
            <td class="auto-style38"></td>
            <td class="auto-style35"></td>
        </tr>



        <tr>
            <td class="auto-style53">&nbsp;</td>
            <td class="auto-style60">&nbsp;</td>
            <td class="auto-style72">&nbsp;</td>
            <td class="auto-style84"> &nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style104">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>



        <tr>
            <td class="auto-style53">&nbsp;</td>
            <td class="auto-style60">&nbsp;</td>
            <td class="auto-style72">&nbsp;</td>
            <td class="auto-style84"> &nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style104">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">
                <asp:ImageButton ID="ImageButton11" runat="server" Height="111px" ImageUrl="~/图片/20160425102353574359.jpg" Width="124px" />
            </td>
            <td class="auto-style29">
                <asp:ImageButton ID="ImageButton12" runat="server" Height="109px" ImageUrl="~/图片/20160614161830591380.jpg" Width="110px" />
            </td>
            <td class="auto-style101">
                <asp:ImageButton ID="ImageButton13" runat="server" Height="111px" ImageUrl="~/图片/20160614183818760585.jpg" Width="111px" />
            </td>
            <td class="auto-style36">
                <asp:ImageButton ID="ImageButton14" runat="server" Height="110px" ImageUrl="~/图片/20160810175724522 (2).jpg" Width="111px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">
                <asp:ImageButton ID="ImageButton25" runat="server" Height="111px" ImageUrl="~/图片/2303559940.jpg" Width="126px" />
            </td>
            <td class="auto-style29">
                <asp:ImageButton ID="ImageButton26" runat="server" Height="110px" ImageUrl="~/图片/t01830b3d9a09aea186.jpg" Width="111px" />
            </td>
            <td class="auto-style101">
                <asp:ImageButton ID="ImageButton27" runat="server" Height="112px" ImageUrl="~/图片/t01de5a083917f9634a.jpg" Width="113px" />
            </td>
            <td class="auto-style36">
                <asp:ImageButton ID="ImageButton28" runat="server" Height="109px" ImageUrl="~/图片/t0.jpg" Width="110px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style127">曹格</td>
            <td class="auto-style112">蔡国庆</td>
            <td class="auto-style111">徐良</td>
            <td class="auto-style110">郑源</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style90"></td>
            <td class="auto-style91"></td>
            <td class="auto-style92"></td>
            <td class="auto-style130">陈楚生</td>
            <td class="auto-style94">光良</td>
            <td class="auto-style106">周传雄</td>
            <td class="auto-style96">张杰</td>
            <td class="auto-style97"></td>
        </tr>
        <tr>
            <td class="auto-style53"></td>
            <td class="auto-style60"></td>
            <td class="auto-style72"></td>
            <td class="auto-style126">庞龙</td>
            <td class="auto-style109">许嵩</td>
            <td class="auto-style108">陶喆</td>
            <td class="auto-style107">李易峰</td>
            <td class="auto-style35"></td>
        </tr>
        <tr>
            <td class="auto-style53">&nbsp;</td>
            <td class="auto-style60">&nbsp;</td>
            <td class="auto-style72">&nbsp;</td>
            <td class="auto-style131">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style104">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style53">&nbsp;</td>
            <td class="auto-style60">&nbsp;</td>
            <td class="auto-style72">&nbsp;</td>
            <td class="auto-style131">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style104">&nbsp;</td>
            <td class="auto-style38">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">
                <a href="#top" style="color: #00CC66">回到顶部</a>
            </td>
            <td class="auto-style123"><span class="auto-style16"><a name="2">华语女歌手</a></span> </td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style101">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style101">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style101">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">
                <asp:ImageButton ID="ImageButton15" runat="server" Height="110px" ImageUrl="~/图片/20160419093308368476.jpg" Width="128px" />
            </td>
            <td class="auto-style29">
                <asp:ImageButton ID="ImageButton16" runat="server" Height="111px" ImageUrl="~/图片/t011871bb7dae943bc9.jpg" Width="109px" />
            </td>
            <td class="auto-style101">
                <asp:ImageButton ID="ImageButton17" runat="server" Height="110px" ImageUrl="~/图片/t01209be86551718ac7.jpg" Width="109px" />
            </td>
            <td class="auto-style36">
                <asp:ImageButton ID="ImageButton18" runat="server" Height="111px" ImageUrl="~/图片/t01528cd869bcf3301d.jpg" Width="111px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style76">&nbsp;</td>
            <td class="auto-style123">
                <asp:LinkButton ID="LinkButton29" runat="server" CssClass="auto-style17">邓紫棋</asp:LinkButton>
            </td>
            <td class="auto-style29">
                <asp:LinkButton ID="LinkButton30" runat="server" CssClass="auto-style17">莫文蔚</asp:LinkButton>
            </td>
            <td class="auto-style101">
                <asp:LinkButton ID="LinkButton31" runat="server" CssClass="auto-style17">那英</asp:LinkButton>
            </td>
            <td class="auto-style36">
                <asp:LinkButton ID="LinkButton32" runat="server" CssClass="auto-style17">蔡依林</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style76">&nbsp;</td>
            <td class="auto-style123">
                <asp:LinkButton ID="LinkButton33" runat="server" CssClass="auto-style17">赵薇</asp:LinkButton>
            </td>
            <td class="auto-style29">
                <asp:LinkButton ID="LinkButton34" runat="server" CssClass="auto-style17">刘涛</asp:LinkButton>
            </td>
            <td class="auto-style101">
                <asp:LinkButton ID="LinkButton35" runat="server" CssClass="auto-style17">LinkButton</asp:LinkButton>
            </td>
            <td class="auto-style36">
                <asp:LinkButton ID="LinkButton36" runat="server" CssClass="auto-style17">孙俪</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style76">&nbsp;</td>
            <td class="auto-style123">
                <asp:LinkButton ID="LinkButton37" runat="server" CssClass="auto-style17">谢娜</asp:LinkButton>
            </td>
            <td class="auto-style29">
                <asp:LinkButton ID="LinkButton38" runat="server" CssClass="auto-style17">艾拉</asp:LinkButton>
            </td>
            <td class="auto-style101">
                <asp:LinkButton ID="LinkButton39" runat="server" CssClass="auto-style17">乌兰娅溚</asp:LinkButton>
            </td>
            <td class="auto-style36">
                <asp:LinkButton ID="LinkButton40" runat="server" CssClass="auto-style17">anglelababy</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style101">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style101">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">  <span class="auto-style16"><a name="3">华语组合</a></span> </td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style101">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">  &nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style101">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">  &nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style101">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style53"></td>
            <td class="auto-style60"></td>
            <td class="auto-style72"></td>
            <td class="auto-style131">
                <asp:ImageButton ID="ImageButton19" runat="server" Height="111px" ImageUrl="~/图片/20160829115057579.jpg" Width="124px" />
            </td>
            <td class="auto-style33">
                <asp:ImageButton ID="ImageButton20" runat="server" Height="111px" ImageUrl="~/图片/t017e75e097b9d7a502.jpg" Width="110px" />
            </td>
            <td class="auto-style104">
                <asp:ImageButton ID="ImageButton21" runat="server" Height="110px" ImageUrl="~/图片/t01e5e6efa4a31687d4.jpg" Width="111px" />
            </td>
            <td class="auto-style38">
                <asp:ImageButton ID="ImageButton22" runat="server" Height="110px" ImageUrl="~/图片/t01eafafb79915c4297.jpg" Width="111px" />
            </td>
            <td class="auto-style35"></td>
        </tr>
        <tr>
            <td class="auto-style53">&nbsp;</td>
            <td class="auto-style60">&nbsp;</td>
            <td class="auto-style72">&nbsp;</td>
            <td class="auto-style131">
                <asp:ImageButton ID="ImageButton35" runat="server" Height="110px" ImageUrl="~/图片/1.jpg" Width="125px" />
            </td>
            <td class="auto-style33">
                <asp:ImageButton ID="ImageButton36" runat="server" Height="111px" ImageUrl="~/图片/2.jpg" Width="111px" />
            </td>
            <td class="auto-style104">
                <asp:ImageButton ID="ImageButton37" runat="server" Height="110px" ImageUrl="~/图片/3.jpg" Width="111px" />
            </td>
            <td class="auto-style38">
                <asp:ImageButton ID="ImageButton38" runat="server" Height="110px" ImageUrl="~/图片/4.jpg" Width="111px" />
            </td>
            <td class="auto-style35">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style76">&nbsp;</td>
            <td class="auto-style123">
                <asp:LinkButton ID="LinkButton5" runat="server" CssClass="auto-style17">飞儿乐队</asp:LinkButton>
            </td>
            <td class="auto-style29">
                <asp:LinkButton ID="LinkButton8" runat="server" CssClass="auto-style17">飞轮海</asp:LinkButton>
            </td>
            <td class="auto-style101">
                <asp:LinkButton ID="LinkButton11" runat="server" CssClass="auto-style17">she</asp:LinkButton>
            </td>
            <td class="auto-style36">
                <asp:LinkButton ID="LinkButton14" runat="server" CssClass="auto-style17">黑贝组合</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style76">&nbsp;</td>
            <td class="auto-style123">
                <asp:LinkButton ID="LinkButton6" runat="server" CssClass="auto-style17">凤凰传奇</asp:LinkButton>
            </td>
            <td class="auto-style29">
                <asp:LinkButton ID="LinkButton9" runat="server" CssClass="auto-style17">玖月奇迹</asp:LinkButton>
            </td>
            <td class="auto-style101">
                <asp:LinkButton ID="LinkButton12" runat="server" CssClass="auto-style17">小虎队</asp:LinkButton>
            </td>
            <td class="auto-style36">
                <asp:LinkButton ID="LinkButton15" runat="server" CssClass="auto-style17">F4</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style98"></td>
            <td class="auto-style99"></td>
            <td class="auto-style100"></td>
            <td class="auto-style124">
                <asp:LinkButton ID="LinkButton7" runat="server" CssClass="auto-style17">水木年华</asp:LinkButton>
            </td>
            <td class="auto-style23">
                <asp:LinkButton ID="LinkButton10" runat="server" CssClass="auto-style17">黑猫组合</asp:LinkButton>
            </td>
            <td class="auto-style102">
                <asp:LinkButton ID="LinkButton13" runat="server" CssClass="auto-style17">五月天</asp:LinkButton>
            </td>
            <td class="auto-style37">
                <asp:LinkButton ID="LinkButton16" runat="server" CssClass="auto-style17">中韩华语组合</asp:LinkButton>
            </td>
            <td class="auto-style24"></td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style101">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style101">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123"><a name="4" style="color: #00CC66">欧美男歌手</a> </td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style101">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style101">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style101">&nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">
                <asp:ImageButton ID="ImageButton23" runat="server" Height="111px" ImageUrl="~/图片/20140409145904650908.jpg" Width="126px" />
            </td>
            <td class="auto-style29">
                <asp:ImageButton ID="ImageButton24" runat="server" Height="111px" ImageUrl="~/图片/20150129153401479391.jpg" Width="110px" />
            </td>
            <td class="auto-style101">
                <asp:ImageButton ID="ImageButton29" runat="server" Height="111px" ImageUrl="~/图片/t01085e7a60a16539a7.jpg" Width="110px" />
            </td>
            <td class="auto-style36">
                <asp:ImageButton ID="ImageButton30" runat="server" Height="111px" ImageUrl="~/图片/t010995cc2893742498.jpg" Width="110px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style53"></td>
            <td class="auto-style60"></td>
            <td class="auto-style72"></td>
            <td class="auto-style131">
                <asp:ImageButton ID="ImageButton31" runat="server" Height="110px" ImageUrl="~/图片/t01347a4b98baec2db6.jpg" Width="126px" />
            </td>
            <td class="auto-style33">
                <asp:ImageButton ID="ImageButton32" runat="server" Height="111px" ImageUrl="~/图片/t0153b24fa355206720.png" Width="111px" />
            </td>
            <td class="auto-style104">
                <asp:ImageButton ID="ImageButton33" runat="server" Height="112px" ImageUrl="~/图片/t015697115738731f12.png" Width="110px" />
            </td>
            <td class="auto-style38">
                <asp:ImageButton ID="ImageButton34" runat="server" Height="110px" ImageUrl="~/图片/t01c03cbcfb919bea02.jpg" Width="110px" />
            </td>
            <td class="auto-style35"></td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style76">&nbsp;</td>
            <td class="auto-style123">
                <asp:LinkButton ID="LinkButton17" runat="server" CssClass="auto-style17">james blunt </asp:LinkButton>
            </td>
            <td class="auto-style29">
                <asp:LinkButton ID="LinkButton18" runat="server" CssClass="auto-style17">Tamas Wells </asp:LinkButton>
            </td>
            <td class="auto-style101">
                <asp:LinkButton ID="LinkButton19" runat="server" CssClass="auto-style17">Gareth Gates </asp:LinkButton>
            </td>
            <td class="auto-style36">
                <asp:LinkButton ID="LinkButton20" runat="server" CssClass="auto-style17">James Morrison</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style53"></td>
            <td class="auto-style60"></td>
            <td class="auto-style72"></td>
            <td class="auto-style131">
                <asp:LinkButton ID="LinkButton21" runat="server" CssClass="auto-style17">Brian McKnight</asp:LinkButton>
            </td>
            <td class="auto-style33">
                <asp:LinkButton ID="LinkButton22" runat="server" CssClass="auto-style17">Ronan Keating</asp:LinkButton>
            </td>
            <td class="auto-style104">
                <asp:LinkButton ID="LinkButton23" runat="server" CssClass="auto-style17">Cliff Richard</asp:LinkButton>
            </td>
            <td class="auto-style38">
                <asp:LinkButton ID="LinkButton24" runat="server" CssClass="auto-style17">　westlife</asp:LinkButton>
            </td>
            <td class="auto-style35"></td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style76">&nbsp;</td>
            <td class="auto-style123">
                <asp:LinkButton ID="LinkButton25" runat="server" CssClass="auto-style17">　Michael Bolton   </asp:LinkButton>
            </td>
            <td class="auto-style29">
                <asp:LinkButton ID="LinkButton26" runat="server" CssClass="auto-style17">　Mr. Big   </asp:LinkButton>
            </td>
            <td class="auto-style101">
                <asp:LinkButton ID="LinkButton27" runat="server" CssClass="auto-style17">Extreme</asp:LinkButton>
            </td>
            <td class="auto-style36">
                <asp:LinkButton ID="LinkButton28" runat="server" CssClass="auto-style17">Europe </asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">
                &nbsp;</td>
            <td class="auto-style29">
                &nbsp;</td>
            <td class="auto-style101">
                &nbsp;</td>
            <td class="auto-style36">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">
                &nbsp;</td>
            <td class="auto-style29">
                &nbsp;</td>
            <td class="auto-style101">
                &nbsp;</td>
            <td class="auto-style36">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style53"></td>
            <td class="auto-style60"></td>
            <td class="auto-style72">
                <a href="#top" style="color: #00CC66">回到顶部</a>
            </td>
            <td class="auto-style131"><span class="auto-style16"><a name="5">欧美女歌手</a></span>
                </td>
            <td class="auto-style33">
                </td>
            <td class="auto-style104">
                </td>
            <td class="auto-style38">
                </td>
            <td class="auto-style35"></td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">
                &nbsp;</td>
            <td class="auto-style29">
                &nbsp;</td>
            <td class="auto-style101">
                &nbsp;</td>
            <td class="auto-style36">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">
                &nbsp;</td>
            <td class="auto-style29">
                &nbsp;</td>
            <td class="auto-style101">
                &nbsp;</td>
            <td class="auto-style36">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">
                <asp:ImageButton ID="ImageButton39" runat="server" Height="110px" ImageUrl="~/图片/20140219144443835290.jpg" Width="124px" />
            </td>
            <td class="auto-style29">
                <asp:ImageButton ID="ImageButton41" runat="server" Height="109px" ImageUrl="~/图片/20140221112955556147.jpg" Width="109px" />
            </td>
            <td class="auto-style101">
                <asp:ImageButton ID="ImageButton43" runat="server" Height="110px" ImageUrl="~/图片/20151217115138862788.jpg" Width="109px" />
            </td>
            <td class="auto-style36">
                <asp:ImageButton ID="ImageButton45" runat="server" Height="109px" ImageUrl="~/图片/20160429120314426.jpg" Width="109px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style116"></td>
            <td class="auto-style117"></td>
            <td class="auto-style118"></td>
            <td class="auto-style132">
                <asp:ImageButton ID="ImageButton40" runat="server" Height="110px" ImageUrl="~/图片/20140219154202584035.jpg" Width="125px" />
            </td>
            <td class="auto-style120">
                <asp:ImageButton ID="ImageButton42" runat="server" Height="109px" ImageUrl="~/图片/a.jpg" Width="110px" />
            </td>
            <td class="auto-style121">
                <asp:ImageButton ID="ImageButton44" runat="server" Height="110px" ImageUrl="~/图片/b.jpg" Width="110px" />
            </td>
            <td class="auto-style119">
                <asp:ImageButton ID="ImageButton46" runat="server" Height="109px" ImageUrl="~/图片/c.jpg" Width="109px" />
            </td>
            <td class="auto-style122"></td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style76">&nbsp;</td>
            <td class="auto-style123">
                <asp:LinkButton ID="LinkButton41" runat="server" CssClass="auto-style17">朱迪·嘉兰</asp:LinkButton>
            </td>
            <td class="auto-style29">
                <asp:LinkButton ID="LinkButton44" runat="server" CssClass="auto-style17">芭芭拉·史翠姗</asp:LinkButton>
            </td>
            <td class="auto-style101">
                <asp:LinkButton ID="LinkButton47" runat="server" CssClass="auto-style17">艾迪·戈尔美</asp:LinkButton>
            </td>
            <td class="auto-style36">
                <asp:LinkButton ID="LinkButton51" runat="server" CssClass="auto-style17">鲍比·吉安特瑞</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style76">&nbsp;</td>
            <td class="auto-style123">
                <asp:LinkButton ID="LinkButton42" runat="server" CssClass="auto-style17">狄昂·华薇特</asp:LinkButton>
            </td>
            <td class="auto-style29">
                <asp:LinkButton ID="LinkButton45" runat="server" CssClass="auto-style17">佩吉·李</asp:LinkButton>
            </td>
            <td class="auto-style101">
                <asp:LinkButton ID="LinkButton48" runat="server" CssClass="auto-style17">罗尔·金</asp:LinkButton>
            </td>
            <td class="auto-style36">
                <asp:LinkButton ID="LinkButton50" runat="server" CssClass="auto-style17">海伦·瑞迪</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style76">&nbsp;</td>
            <td class="auto-style123">
                <asp:LinkButton ID="LinkButton43" runat="server" CssClass="auto-style17">洛贝塔·弗莱克</asp:LinkButton>
            </td>
            <td class="auto-style29">
                <asp:LinkButton ID="LinkButton46" runat="server" CssClass="auto-style17">奥利维亚·牛顿-约翰</asp:LinkButton>
            </td>
            <td class="auto-style101">
                <asp:LinkButton ID="LinkButton49" runat="server" CssClass="auto-style17">珍妮丝·伊恩</asp:LinkButton>
            </td>
            <td class="auto-style36">
                <asp:LinkButton ID="LinkButton52" runat="server" CssClass="auto-style17">琳达·朗丝黛</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">
                &nbsp;</td>
            <td class="auto-style29">
                &nbsp;</td>
            <td class="auto-style101">
                &nbsp;</td>
            <td class="auto-style36">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">
                &nbsp;</td>
            <td class="auto-style29">
                &nbsp;</td>
            <td class="auto-style101">
                &nbsp;</td>
            <td class="auto-style36">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123"><a name="6" style="color: #00CC66">欧美组合</a>
                &nbsp;</td>
            <td class="auto-style29">
                &nbsp;</td>
            <td class="auto-style101">
                &nbsp;</td>
            <td class="auto-style36">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">
                &nbsp;</td>
            <td class="auto-style29">
                &nbsp;</td>
            <td class="auto-style101">
                &nbsp;</td>
            <td class="auto-style36">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">
                &nbsp;</td>
            <td class="auto-style29">
                &nbsp;</td>
            <td class="auto-style101">
                &nbsp;</td>
            <td class="auto-style36">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">
                <asp:ImageButton ID="ImageButton47" runat="server" Height="109px" ImageUrl="~/图片/aa.jpg" Width="124px" />
            </td>
            <td class="auto-style29">
                <asp:ImageButton ID="ImageButton48" runat="server" Height="109px" ImageUrl="~/图片/bb.jpg" Width="111px" />
            </td>
            <td class="auto-style101">
                <asp:ImageButton ID="ImageButton49" runat="server" Height="111px" ImageUrl="~/图片/cc.jpg" Width="110px" />
            </td>
            <td class="auto-style36">
                <asp:ImageButton ID="ImageButton50" runat="server" Height="109px" ImageUrl="~/图片/dd.jpg" Width="111px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">
                <asp:ImageButton ID="ImageButton51" runat="server" Height="110px" ImageUrl="~/图片/ee.jpg" Width="124px" />
            </td>
            <td class="auto-style29">
                <asp:ImageButton ID="ImageButton52" runat="server" Height="111px" ImageUrl="~/图片/ff.jpg" Width="110px" />
            </td>
            <td class="auto-style101">
                <asp:ImageButton ID="ImageButton53" runat="server" Height="110px" ImageUrl="~/图片/gg.png" Width="110px" />
            </td>
            <td class="auto-style36">
                <asp:ImageButton ID="ImageButton54" runat="server" Height="111px" ImageUrl="~/图片/hh.jpg" Width="109px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style76">&nbsp;</td>
            <td class="auto-style123">
                <asp:LinkButton ID="LinkButton53" runat="server" CssClass="auto-style17">披头士乐队</asp:LinkButton>
            </td>
            <td class="auto-style29">
                <asp:LinkButton ID="LinkButton56" runat="server" CssClass="auto-style17">滚石乐队</asp:LinkButton>
            </td>
            <td class="auto-style101">
                <asp:LinkButton ID="LinkButton59" runat="server" CssClass="auto-style17">皇后乐队</asp:LinkButton>
            </td>
            <td class="auto-style36">
                <asp:LinkButton ID="LinkButton62" runat="server" CssClass="auto-style17">U2乐队</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style76">&nbsp;</td>
            <td class="auto-style123">
                <asp:LinkButton ID="LinkButton54" runat="server" CssClass="auto-style17">R.E.M乐队</asp:LinkButton>
            </td>
            <td class="auto-style29">
                <asp:LinkButton ID="LinkButton57" runat="server" CssClass="auto-style17">涅槃乐队</asp:LinkButton>
            </td>
            <td class="auto-style101">
                <asp:LinkButton ID="LinkButton60" runat="server" CssClass="auto-style17">枪炮与玫瑰乐队</asp:LinkButton>
            </td>
            <td class="auto-style36">
                <asp:LinkButton ID="LinkButton63" runat="server" CssClass="auto-style17">金属乐队</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style76">&nbsp;</td>
            <td class="auto-style123">
                <asp:LinkButton ID="LinkButton55" runat="server" CssClass="auto-style17">邦·乔维乐队</asp:LinkButton>
            </td>
            <td class="auto-style29">
                <asp:LinkButton ID="LinkButton58" runat="server" CssClass="auto-style17">山羊皮乐队</asp:LinkButton>
            </td>
            <td class="auto-style101">
                <asp:LinkButton ID="LinkButton61" runat="server" CssClass="auto-style17">老鹰乐队</asp:LinkButton>
            </td>
            <td class="auto-style36">
                <asp:LinkButton ID="LinkButton64" runat="server" CssClass="auto-style17">蝎子乐队</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">
                &nbsp;</td>
            <td class="auto-style29">
                &nbsp;</td>
            <td class="auto-style101">
                &nbsp;</td>
            <td class="auto-style36">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">
                &nbsp;</td>
            <td class="auto-style29">
                &nbsp;</td>
            <td class="auto-style101">
                &nbsp;</td>
            <td class="auto-style36">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">
                <a href="#top" style="color: #00CC66">回到顶部</a>
            </td>
            <td class="auto-style123"><a name="7" style="color: #00CC66">韩国歌手</a>
                &nbsp;</td>
            <td class="auto-style29">
                &nbsp;</td>
            <td class="auto-style101">
                &nbsp;</td>
            <td class="auto-style36">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">
                &nbsp;</td>
            <td class="auto-style29">
                &nbsp;</td>
            <td class="auto-style101">
                &nbsp;</td>
            <td class="auto-style36">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style53"></td>
            <td class="auto-style60"></td>
            <td class="auto-style72"></td>
            <td class="auto-style131">
                </td>
            <td class="auto-style33">
                </td>
            <td class="auto-style104">
                </td>
            <td class="auto-style38">
                </td>
            <td class="auto-style35"></td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">
                <asp:ImageButton ID="ImageButton55" runat="server" Height="109px" ImageUrl="~/图片/20140529112315416902.jpg" Width="126px" />
            </td>
            <td class="auto-style29">
                <asp:ImageButton ID="ImageButton57" runat="server" Height="111px" ImageUrl="~/图片/20150205183647548621.jpg" Width="110px" />
            </td>
            <td class="auto-style101">
                <asp:ImageButton ID="ImageButton59" runat="server" Height="109px" ImageUrl="~/图片/11.jpg" Width="109px" />
            </td>
            <td class="auto-style36">
                <asp:ImageButton ID="ImageButton61" runat="server" Height="110px" ImageUrl="~/图片/21.jpg" Width="111px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style76">&nbsp;</td>
            <td class="auto-style123">
                <asp:LinkButton ID="LinkButton65" runat="server" CssClass="auto-style17">SARA</asp:LinkButton>
            </td>
            <td class="auto-style29">
                <asp:LinkButton ID="LinkButton68" runat="server" CssClass="auto-style17">朴正炫</asp:LinkButton>
            </td>
            <td class="auto-style101">
                <asp:LinkButton ID="LinkButton71" runat="server" CssClass="auto-style17">金东旭</asp:LinkButton>
            </td>
            <td class="auto-style36">
                <asp:LinkButton ID="LinkButton74" runat="server" CssClass="auto-style17">金宝京</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style76">&nbsp;</td>
            <td class="auto-style123">
                <asp:LinkButton ID="LinkButton66" runat="server" CssClass="auto-style17">金泰宇_</asp:LinkButton>
            </td>
            <td class="auto-style29">
                <asp:LinkButton ID="LinkButton69" runat="server" CssClass="auto-style17">李笛</asp:LinkButton>
            </td>
            <td class="auto-style101">
                <asp:LinkButton ID="LinkButton89" runat="server" style="color: #669999">仁顺伊</asp:LinkButton>
            </td>
            <td class="auto-style36">
                <asp:LinkButton ID="LinkButton75" runat="server" CssClass="auto-style17">洪真英</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style76">&nbsp;</td>
            <td class="auto-style123">
                <asp:LinkButton ID="LinkButton67" runat="server" CssClass="auto-style17">李智贤</asp:LinkButton>
            </td>
            <td class="auto-style29">
                <asp:LinkButton ID="LinkButton70" runat="server" CssClass="auto-style17">金英淑</asp:LinkButton>
            </td>
            <td class="auto-style101">
                <asp:LinkButton ID="LinkButton73" runat="server" CssClass="auto-style17">张力尹</asp:LinkButton>
            </td>
            <td class="auto-style36">
                <asp:LinkButton ID="LinkButton76" runat="server" CssClass="auto-style17">李恩美</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style53"></td>
            <td class="auto-style60"></td>
            <td class="auto-style72"></td>
            <td class="auto-style131">
                </td>
            <td class="auto-style33">
                </td>
            <td class="auto-style104">
                </td>
            <td class="auto-style38">
                </td>
            <td class="auto-style35"></td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">
                &nbsp;</td>
            <td class="auto-style29">
                &nbsp;</td>
            <td class="auto-style101">
                &nbsp;</td>
            <td class="auto-style36">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123"><a name="8" style="color: #00CC66">日本歌手</a>
                &nbsp;</td>
            <td class="auto-style29">
                &nbsp;</td>
            <td class="auto-style101">
                &nbsp;</td>
            <td class="auto-style36">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">
                &nbsp;</td>
            <td class="auto-style29">
                &nbsp;</td>
            <td class="auto-style101">
                &nbsp;</td>
            <td class="auto-style36">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style53"></td>
            <td class="auto-style60"></td>
            <td class="auto-style72"></td>
            <td class="auto-style131">
                </td>
            <td class="auto-style33">
                </td>
            <td class="auto-style104">
                </td>
            <td class="auto-style38">
                </td>
            <td class="auto-style35"></td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style71">&nbsp;</td>
            <td class="auto-style123">
                <asp:ImageButton ID="ImageButton62" runat="server" Height="111px" ImageUrl="~/图片/22.jpg" Width="125px" />
            </td>
            <td class="auto-style29">
                <asp:ImageButton ID="ImageButton63" runat="server" Height="110px" ImageUrl="~/图片/33.jpg" Width="110px" />
            </td>
            <td class="auto-style101">
                <asp:ImageButton ID="ImageButton64" runat="server" Height="108px" ImageUrl="~/图片/44.jpg" Width="111px" />
            </td>
            <td class="auto-style36">
                <asp:ImageButton ID="ImageButton65" runat="server" Height="111px" ImageUrl="~/图片/55.jpg" Width="111px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style53"></td>
            <td class="auto-style60"></td>
            <td class="auto-style72"></td>
            <td class="auto-style131">
                <asp:LinkButton ID="LinkButton77" runat="server" CssClass="auto-style17">君之记忆</asp:LinkButton>
            </td>
            <td class="auto-style33">
                <asp:LinkButton ID="LinkButton80" runat="server" CssClass="auto-style17">井上杏美</asp:LinkButton>
            </td>
            <td class="auto-style104">
                <asp:LinkButton ID="LinkButton83" runat="server" CssClass="auto-style17">安室奈美惠</asp:LinkButton>
            </td>
            <td class="auto-style38">
                <asp:LinkButton ID="LinkButton86" runat="server" CssClass="auto-style17">MELODY_</asp:LinkButton>
            </td>
            <td class="auto-style35"></td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style76">&nbsp;</td>
            <td class="auto-style123">
                <asp:LinkButton ID="LinkButton78" runat="server" CssClass="auto-style17">铃木亚美</asp:LinkButton>
            </td>
            <td class="auto-style29">
                <asp:LinkButton ID="LinkButton81" runat="server" CssClass="auto-style17">志方晶子</asp:LinkButton>
            </td>
            <td class="auto-style101">
                <asp:LinkButton ID="LinkButton84" runat="server" CssClass="auto-style17">宇德敬子</asp:LinkButton>
            </td>
            <td class="auto-style36">
                <asp:LinkButton ID="LinkButton87" runat="server" CssClass="auto-style17">中孝介_</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style52">&nbsp;</td>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style76">&nbsp;</td>
            <td class="auto-style123">
                <asp:LinkButton ID="LinkButton79" runat="server" CssClass="auto-style17">伍代夏子_</asp:LinkButton>
            </td>
            <td class="auto-style29">
                <asp:LinkButton ID="LinkButton82" runat="server" CssClass="auto-style17">青山黛玛</asp:LinkButton>
            </td>
            <td class="auto-style101">
                <asp:LinkButton ID="LinkButton85" runat="server" CssClass="auto-style17">鬼束千寻</asp:LinkButton>
            </td>
            <td class="auto-style36">
                <asp:LinkButton ID="LinkButton88" runat="server" CssClass="auto-style17">玉置浩二</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
     </table>
         </div>
</asp:Content>

