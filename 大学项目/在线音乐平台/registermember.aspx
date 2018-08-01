<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registermember.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            height: 20px;
        }
        .auto-style10 {
            height: 20px;
            width: 427px;
        }
        .auto-style11 {
            width: 427px;
        }
        .auto-style12 {
            height: 20px;
            width: 82px;
        }
        .auto-style13 {
            width: 82px;
        }
        .auto-style14 {
            width: 427px;
            height: 23px;
        }
        .auto-style15 {
            width: 82px;
            height: 23px;
        }
        .auto-style16 {
            height: 23px;
        }
        .auto-style17 {
            width: 427px;
            height: 25px;
        }
        .auto-style18 {
            width: 82px;
            height: 25px;
        }
        .auto-style19 {
            height: 25px;
        }
        .auto-style20 {
            width: 427px;
            height: 24px;
        }
        .auto-style21 {
            width: 82px;
            height: 24px;
        }
        .auto-style22 {
            height: 24px;
        }
        .auto-style28 {
            height: 20px;
            width: 240px;
        }
        .auto-style29 {
            height: 25px;
            width: 240px;
        }
        .auto-style30 {
            height: 24px;
            width: 240px;
        }
        .auto-style32 {
            height: 23px;
            width: 240px;
        }
        .auto-style33 {
            width: 240px;
        }
        .auto-style34 {
            height: 20px;
            width: 379px;
        }
        .auto-style35 {
        height: 25px;
        width: 379px;
    }
        .auto-style36 {
        height: 24px;
        width: 379px;
    }
        .auto-style37 {
            width: 379px;
        }
        .auto-style38 {
        height: 23px;
        width: 379px;
    }
        .auto-style39 {
            color: #00CC66;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div  style="background-image: url('图片/背景3.jpg'); background-size:cover;background-repeat: round;background-attachment: fixed; height: 641px;">
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style34">
                &nbsp;</td>
            <td class="auto-style28">
                
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style34">
                &nbsp;</td>
            <td class="auto-style28">
                
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style34">
                &nbsp;</td>
            <td class="auto-style28">
                
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style34">
                &nbsp;</td>
            <td class="auto-style28">
                
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style34">
                &nbsp;</td>
            <td class="auto-style28">
                
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style34">
                &nbsp;</td>
            <td class="auto-style28">
                
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style34">
                &nbsp;</td>
            <td class="auto-style28">
                
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style34">
                &nbsp;</td>
            <td class="auto-style28">
                
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style34">
                &nbsp;</td>
            <td class="auto-style28">
                
                &nbsp;</td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style12">
              &nbsp;<a href="registmember.aspx"><span class="auto-style39">注册会员</span></a>   

            </td>
            <td class="auto-style34">
                &nbsp;</td>
            <td class="auto-style28">
                
                <a href="registeradmin.aspx"><span class="auto-style39">注册管理员</span></a>
            </td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17"></td>
            <td class="auto-style18">
                <asp:Label ID="Label1" runat="server" Text="账号:"></asp:Label>
            </td>
            <td class="auto-style35">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="账号必须填写！" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style29">
                </td>
            <td class="auto-style19">
                </td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style21">
                <asp:Label ID="Label2" runat="server" Text="密码:"></asp:Label>
            </td>
            <td class="auto-style36">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox2" ErrorMessage="密码必须填写！" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style30">
                &nbsp;</td>
            <td class="auto-style22">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17"></td>
            <td class="auto-style18">
                <asp:Label ID="Label3" runat="server" Text="昵称:"></asp:Label>
            </td>
            <td class="auto-style35">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox3" ErrorMessage="昵称必须填写！" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style29">
                </td>
            <td class="auto-style19">
                </td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style15">
                <asp:Label ID="Label4" runat="server" Text="真实姓名:"></asp:Label>
            </td>
            <td class="auto-style38">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="姓名必须填写！" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style32">
                </td>
            <td class="auto-style16">
                </td>
        </tr>
        <tr>
            <td class="auto-style20"></td>
            <td class="auto-style21">
                <asp:Label ID="Label5" runat="server" Text="性别:"></asp:Label>
            </td>
            <td class="auto-style36">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox8" ErrorMessage="性别务必填！" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style30">
                &nbsp;</td>
            <td class="auto-style22">
                </td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style15">
                <asp:Label ID="Label6" runat="server" Text="邮箱:"></asp:Label>
            </td>
            <td class="auto-style38">
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="邮箱必须填写！" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style32">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="格式不正确！" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox6"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style16">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13">
                <asp:Label ID="Label7" runat="server" Text="生日:"></asp:Label>
            </td>
            <td class="auto-style37">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="生日必须填写！" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style33">
                <asp:Button ID="Button1" runat="server" ForeColor="#00CC66" Text="注册" OnClick="Button1_Click1" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

