<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PayRecord.aspx.cs" Inherits="PayRecord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style5 {
            height: 39px;
        }

        .auto-style7 {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="background-image: url('image/12.jpg'); height: 500px; width: 784px; margin-left: 120px; margin-top: 0px">

        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>按用户名查询：</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="用户名："></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>预交费用：</td>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="交费日期："></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="用水量："></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="用水价格："></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style7">
                    <asp:Label ID="Label8" runat="server" Text="上次余额："></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="本次结余："></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style5">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

