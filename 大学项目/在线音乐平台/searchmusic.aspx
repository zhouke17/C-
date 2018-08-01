<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="searchmusic.aspx.cs" Inherits="searchmusic" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            color: #00CC66;
        }
        .auto-style12 {
            width: 627px;
        }
        .auto-style13 {
            width: 165px;
        }
        .auto-style14 {
            color: #00CC66;
            width: 165px;
        }
        .auto-style15 {
            width: 285px;
        }
        .auto-style16 {
            width: 251px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div  style="background-image: url('图片/背景图片《2》.jpg'); background-size:cover;background-repeat: round;background-attachment: fixed; height: 465px;">
    
     <table class="auto-style9">
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="歌曲搜索"></asp:Label>
            </td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style16">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MusicConnectionString %>" SelectCommand="SELECT * FROM [music]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True">
                    <asp:ListItem>歌手名</asp:ListItem>
                    <asp:ListItem>歌曲名</asp:ListItem>
                    <asp:ListItem>歌曲位置</asp:ListItem>
                    <asp:ListItem>语言</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">
                <asp:Label ID="Label7" runat="server" ForeColor="#00CC66" Text="输入您想要的歌曲信息"></asp:Label>
            </td>
            <td class="auto-style16">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style15">
                <asp:Button ID="Button1" runat="server" ForeColor="#00CC66" OnClick="Button1_Click" Text="search" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">
                <asp:Label ID="Label2" runat="server" CssClass="auto-style10" Text="歌曲名:"></asp:Label>
            </td>
            <td class="auto-style16">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">
                <asp:Label ID="Label3" runat="server" CssClass="auto-style10" Text="歌手名："></asp:Label>
            </td>
            <td class="auto-style16">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">
                <asp:Label ID="Label4" runat="server" CssClass="auto-style10" Text="歌曲位置："></asp:Label>
            </td>
            <td class="auto-style16">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style14">
                <asp:Label ID="Label5" runat="server" CssClass="auto-style10" Text="歌曲语言："></asp:Label>
            </td>
            <td class="auto-style16">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        </div>
</asp:Content>

