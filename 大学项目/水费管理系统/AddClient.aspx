<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddClient.aspx.cs" Inherits="AddClient"  Debug="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style5 {
            height: 23px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div  style="background-image: url('image/12.jpg'); height:500px; width:784px; margin-left:120px; margin-top:0px">
    
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="用户ID："></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtID" ErrorMessage="必须填写用户ID" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="用户名："></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="必须填写用户名" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>用户地址：</td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="必须填写用户地址" runat="server" ControlToValidate="txtAddress" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style5">
                <asp:Label ID="Label4" runat="server" Text="用户电话："></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPhone" ErrorMessage="必须填写用户电话" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="重置" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="保存" />
            </td>
        </tr>
    </table>
         </div>
</asp:Content>

