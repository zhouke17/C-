<%@ Page Title="" Language="C#" MasterPageFile="~/Login.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            height: 25px;
        }
    </style>
</asp:Content>
  
   
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div  style="background-image: url('image/65.jpg'); height:500px; width:784px; margin-left:120px; margin-top:0px">&nbsp;<table class="auto-style1" style="height: 385px">
        <tr>
            <td colspan="6">
                <asp:Label ID="Label1" runat="server" style="font-size: x-large; text-decoration: underline; font-weight: 700; color: #800000" Text="选择您的身份是："></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="收费员" />
            </td>
            <td class="auto-style4">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="管理员" />
            </td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
    </table>
    </div>
</asp:Content>

