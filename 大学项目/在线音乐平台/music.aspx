<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="music.aspx.cs"  EnableEventValidation="false" Inherits="music" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <script type="text/javascript">
           function PlayMedia() {
               var mediaPlugin = document.getElementById("MediaPlayer");
               mediaPlugin.controls.play();
           }

           function PauseMedia() {
               var mediaPlugin = document.getElementById("MediaPlayer");
               mediaPlugin.controls.pause();
           }
  </script>
    <style type="text/css">
        .auto-style9 {
            width: 100%;
            height: 837px;
        }
        .auto-style10 {
            width: 431px;
        }
        .auto-style11 {
            width: 91px;
        }
        .auto-style12 {
            width: 273px;
        }
        .auto-style13 {
            width: 431px;
            height: 254px;
        }
        .auto-style14 {
            height: 254px;
        }
        #MediaPlayer1 {
            height: 203px;
            margin-top: 0px;
        }
        .auto-style15 {
            color: #FF0000;
        }
    .auto-style16 {
        color: #669999;
    }
    .auto-style17 {
        width: 431px;
        color: #669999;
    }
    .auto-style18 {
        width: 91px;
        color: #669999;
    }
    .auto-style19 {
        width: 431px;
        height: 20px;
    }
    .auto-style20 {
        width: 273px;
        height: 20px;
    }
    .auto-style21 {
        width: 91px;
        height: 20px;
    }
    .auto-style22 {
        height: 20px;
    }
        #MediaPlayer {
            height: 260px;
        }
       
        .auto-style23 {
            width: 431px;
            height: 112px;
        }
        .auto-style24 {
            height: 112px;
        }
       
        .auto-style25 {
            color: #00CC66;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <body>
    <div  style="background-image: url('图片/背景3.jpg'); background-size:cover;background-repeat: round;background-attachment: fixed;">
     <table class="auto-style9">
        <tr>
            <td class="auto-style23"></td>
            <td colspan="2" class="auto-style24">
    

 

            <td class="auto-style24"> </td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td colspan="2" class="auto-style14">
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
    </object>


 

            <td class="auto-style14"> </td>
        </tr>
        <tr>
            <td class="auto-style19"></td>
            <td class="auto-style20">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text="我的歌单"></asp:Label>
            </td>
            <td class="auto-style21"></td>
            <td class="auto-style22"></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style12">
                <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click" CssClass="auto-style25">庄心妍--心有所爱</asp:LinkButton>
            </td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style12">
                <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click" CssClass="auto-style25">苏打绿 - 小情歌</asp:LinkButton>
            </td>
            <td class="auto-style11"></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style12">
                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" CssClass="auto-style25">张学友-慢慢</asp:LinkButton>
            </td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style12">
                <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" CssClass="auto-style25">Maroon 5 - Moves Like Jagger</asp:LinkButton>
            </td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style12">
                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" CssClass="auto-style25">lenka_KnockKnock</asp:LinkButton>
            </td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style12">
                <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" CssClass="auto-style25">Adele_SomeoneLikeYou</asp:LinkButton>
            </td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style12">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="auto-style25">许嵩 - 江湖</asp:LinkButton>
            </td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" CssClass="auto-style25">薛之谦 - 绅士</asp:LinkButton>
            </td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
         </div>
        </body>
</asp:Content>

