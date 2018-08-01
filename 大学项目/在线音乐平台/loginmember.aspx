<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="loginmember.aspx.cs" Inherits="loginmember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            width: 527px;
        }
        .auto-style10 {
            width: 527px;
            height: 23px;
        }
        .auto-style11 {
            height: 23px;
        }
        .auto-style12 {
            height: 23px;
            width: 105px;
        }
        .auto-style13 {
            width: 105px;
        }
        .auto-style14 {
            height: 23px;
            width: 234px;
        }
        .auto-style15 {
            width: 234px;
        }
    .auto-style16 {
        width: 527px;
        height: 25px;
    }
    .auto-style17 {
        width: 105px;
        height: 25px;
    }
    .auto-style18 {
        width: 234px;
        height: 25px;
    }
    .auto-style19 {
        height: 25px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div  style="background-image: url('图片/背景图片《2》.jpg'); background-size:cover;background-repeat: round;background-attachment: fixed; height: 465px;">
    <table class="auto-style1">
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
               <a href="loginmember.aspx">会员登录</a>
            </td>
            <td class="auto-style14">
                <a href="loginadmin.aspx">管理员登录</a>
            </td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style12">
                <asp:Label ID="Label1" runat="server" Text="账号："></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="Account" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Account" ErrorMessage="必须填写！" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style17">
                <asp:Label ID="Label2" runat="server" Text="密码："></asp:Label>
            </td>
            <td class="auto-style18">
                <asp:TextBox ID="PassWord" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PassWord" ErrorMessage="必须填写！" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style19"></td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style15">
                <asp:Button ID="Button1" runat="server" ForeColor="#00CC66" Text="登录" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style13">
              <a href="registermember.aspx" style="color: #669999">免费注册</a>
            </td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
          </div>
</asp:Content>

