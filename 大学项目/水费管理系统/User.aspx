<%@ Page Title="" Language="C#" MasterPageFile="~/Login.master" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            height: 181px;
        }
        .auto-style10 {
            height: 181px;
            width: 179px;
        }
        .auto-style11 {
            height: 109px;
            width: 179px;
        }
        .auto-style12 {
            height: 109px;
        }
        .auto-style13 {
            height: 145px;
            width: 179px;
        }
        .auto-style14 {
            height: 145px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div  style="background-image: url('image/65.jpg'); height:500px; width:784px; margin-left:120px; margin-top:0px">&nbsp;<table class="auto-style1">
        <tr>
            <td class="auto-style13">
                <asp:Label ID="Label2" runat="server" Text="欢迎来到收费员界面！"></asp:Label>
            </td>
            <td class="auto-style14"></td>
            <td class="auto-style14" colspan="3"></td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12">
                <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>
            </td>
            <td class="auto-style12" colspan="3">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="必须输入用户名" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style4">
                <asp:Label ID="Label3" runat="server" Text="密码："></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" ErrorMessage="必须输入密码" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登录" />
            </td>
            <td class="auto-style4"></td>
        </tr>
    </table>
    </div>
</asp:Content>

