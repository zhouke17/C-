<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddUser.aspx.cs" Inherits="AddUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div  style="background-image: url('image/1.jpg'); height:500px; width:784px; margin-left:120px; margin-top:0px">
    
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="Label1" runat="server" Text="收费员ID："></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtID" runat="server" CssClass="auto-style4" Height="19px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtID" ErrorMessage="必须输入ID" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="Label5" runat="server" Text="收费员姓名："></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="必须输入姓名" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="Label2" runat="server" Text="收费员密码："></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPwd" ErrorMessage="必须输入密码" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="Label3" runat="server" Text="收费员邮箱："></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMail" ErrorMessage="必须输入邮箱" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="Label4" runat="server" Text="收费员电话："></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPhone" ErrorMessage="必须输入电话" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="Label6" runat="server" Text="添加时间："></asp:Label>
        </td>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="重置" />
        </td>
        <td>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="添加" />
        </td>
    </tr>
</table>
         </div>
</asp:Content>

