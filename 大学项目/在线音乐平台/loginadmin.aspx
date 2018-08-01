<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="loginadmin.aspx.cs" Inherits="loginadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            width: 272px;
        }
        .auto-style11 {
            width: 92px;
        }
        .auto-style12 {
            width: 114px;
        }
        .auto-style13 {
            width: 154px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div  style="background-image: url('图片/背景图片《2》.jpg'); background-size:cover;background-repeat: round;background-attachment: fixed; height: 465px;">
     <table align="left" class="auto-style9">
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="管理员登录" style="color: #00CC66"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">账号：</td>
            <td class="auto-style13">
                <asp:TextBox ID="Account" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Account" ErrorMessage="账号务必填写！" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">密码：</td>
            <td class="auto-style13">
                <asp:TextBox ID="PassWord" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PassWord" ErrorMessage="密码务必填写" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="color: #00CC66" Text="登录" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">
                <a href="registeradmin.aspx" style="color: #00CC66">免费注册</a>
            </td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        </div>
</asp:Content>

