<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PayFee.aspx.cs" Inherits="PayFee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
            width: 180px;
        }
        .auto-style7 {
            width: 180px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div  style="background-image: url('image/12.jpg'); height:500px; width:784px; margin-left:120px; margin-top:0px">
  
    <table class="auto-style1">
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style6">
                <asp:Label ID="Label7" runat="server" Text="交费用户ID："></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtID" ErrorMessage="必须输入用户ID" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style6">
                <asp:Label ID="Label2" runat="server" Text="交费用户名："></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="必须填写用户名" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label3" runat="server" Text="预交费用："></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPay" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPay" ErrorMessage="必须填写预交费用" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label4" runat="server" Text="用水量："></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAmount" ErrorMessage="必须填写用水量" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label5" runat="server" Text="用水价格："></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPrice" ErrorMessage="必须填写水价" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label6" runat="server" Text="余额："></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbMsg" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="重置" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="提交" />
            </td>
        </tr>
    </table>
    </div>

</asp:Content>

