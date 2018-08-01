<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Master.aspx.cs" Inherits="Master" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            height: 103px;
        }
        .auto-style5 {
            height: 131px;
        }
        .auto-style6 {
            height: 83px;
        }
        .auto-style7 {
            height: 131px;
            width: 235px;
        }
        .auto-style8 {
            height: 83px;
            width: 235px;
        }
        .auto-style9 {
            height: 103px;
            width: 235px;
        }
        .auto-style10 {
            height: 103px;
            width: 413px;
        }
        .auto-style11 {
            height: 608px;
        }
    </style>
</head>
<body class="auto-style11">
    <form id="form1" runat="server">
        <div  style="background-image: url('image/64.jpg'); height:600px; width:auto; margin-left:0px; margin-top:0px">&nbsp;<table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label3" runat="server" style="font-size: large; font-weight: 700; color: #FF0066" Text="欢迎来到管理员界面!"></asp:Label>
                </td>
                <td class="auto-style5"></td>
                <td class="auto-style5" colspan="3"></td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style6">
                    <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>
                </td>
                <td class="auto-style6" colspan="3">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="必须输入用户名" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="密码："></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtPwd" runat="server" ForeColor="Red" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" ErrorMessage="必须输入密码" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登录" />
                </td>
                <td class="auto-style4"></td>
            </tr>

        </table>
             </div>
    </form>
</body>
</html>
