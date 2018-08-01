<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registeradmin.aspx.cs" Inherits="registeradmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            width: 168px;
        }
        .auto-style14 {
            width: 168px;
            height: 25px;
        }
        .auto-style25 {
            width: 953px;
        }
        .auto-style27 {
            width: 953px;
            height: 25px;
        }
        .auto-style28 {
            width: 12px;
        }
        .auto-style30 {
            width: 12px;
            height: 25px;
        }
        .auto-style31 {
            width: 136px;
        }
        .auto-style32 {
            width: 136px;
            height: 25px;
        }
        .auto-style40 {
            height: 25px;
        }
        .auto-style41 {
            width: 11px;
        }
        .auto-style42 {
            width: 11px;
            height: 25px;
        }
        .auto-style43 {
            width: 244px;
        }
        .auto-style44 {
            width: 244px;
            height: 25px;
        }
        .auto-style45 {
            width: 244px;
            height: 20px;
        }
        .auto-style46 {
            width: 11px;
            height: 20px;
        }
        .auto-style47 {
            height: 20px;
        }
        .auto-style48 {
            width: 12px;
            height: 20px;
        }
        .auto-style49 {
            width: 136px;
            height: 20px;
        }
        .auto-style50 {
            width: 168px;
            height: 20px;
        }
        .auto-style51 {
            width: 953px;
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <body>
      <div  style="background-image: url('图片/背景图片《1》6135393cbe403fccfadf2ae5afc4a735a1dae79f2952c-o0HADY_fw658.jpg');background-position:center;background-size:cover;background-repeat:no-repeat;background-attachment:scroll; height: 344px; width: 686px; margin-left: 378px;">
    <table  class="auto-style1" >
        <tr>
            <td class="auto-style43">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style25">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style45"></td>
            <td class="auto-style46"></td>
            <td class="auto-style47"></td>
            <td class="auto-style48"></td>
            <td class="auto-style49"></td>
            <td class="auto-style50"></td>
            <td class="auto-style51">
                </td>
        </tr>
        <tr>
            <td class="auto-style43">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style25">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style45"></td>
            <td class="auto-style46"></td>
            <td class="auto-style47"></td>
            <td class="auto-style48"></td>
            <td class="auto-style49"></td>
            <td class="auto-style50"></td>
            <td class="auto-style51">
                </td>
        </tr>
        <tr>
            <td class="auto-style43">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style25">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style43">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style25">
                <a href="registeradmin.aspx" style="color: #00CC66">
                <asp:Button ID="Button1" runat="server" ForeColor="#00CC66" OnClick="Button1_Click1" Text="管理员注册" />
                </a>
            </td>
        </tr>
        <tr>
            <td class="auto-style43">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style11">
                <asp:Label ID="Label1" runat="server" Text="账号："></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="账号必须填写！" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style44">&nbsp;</td>
            <td class="auto-style42">&nbsp;</td>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style32"></td>
            <td class="auto-style14">
                <asp:Label ID="Label2" runat="server" Text="密码："></asp:Label>
            </td>
            <td class="auto-style27">
                <asp:TextBox ID="TextBox2" runat="server" Height="19px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="密码必须填写！" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style43">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style11">
                <asp:Label ID="Label3" runat="server" Text="昵称："></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="密码必须填写！" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style43">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style11">
                <asp:Label ID="Label4" runat="server" Text="权限："></asp:Label>
            </td>
            <td class="auto-style25">
                <asp:TextBox ID="TextBox4" runat="server" Height="16px" Width="137px"></asp:TextBox>
                <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="超级管理员or普通管理员"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="权限务必填写！" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
   </div>
        </body>
</asp:Content>

