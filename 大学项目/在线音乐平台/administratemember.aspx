<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="administratemember.aspx.cs" Inherits="administrateadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style11 {
            width: 522px;
        }
        .auto-style12 {
            width: 19px;
        }
        .auto-style13 {
            width: 20px;
        }
        .auto-style14 {
            width: 387px;
        }
        .auto-style15 {
            width: 131px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style9">
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">
                <asp:Label ID="Label1" runat="server" ForeColor="#00CC66" Text="管理我的会员："></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MusicConnectionString %>" DeleteCommand="DELETE FROM [admin] WHERE [id] = @original_id AND [account] = @original_account AND [password] = @original_password AND [nickname] = @original_nickname AND [permissions] = @original_permissions" InsertCommand="INSERT INTO [admin] ([account], [password], [nickname], [permissions]) VALUES (@account, @password, @nickname, @permissions)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [admin]" UpdateCommand="UPDATE [admin] SET [account] = @account, [password] = @password, [nickname] = @nickname, [permissions] = @permissions WHERE [id] = @original_id AND [account] = @original_account AND [password] = @original_password AND [nickname] = @original_nickname AND [permissions] = @original_permissions">
                    <DeleteParameters>
                        <asp:Parameter Name="original_id" Type="Int32" />
                        <asp:Parameter Name="original_account" Type="String" />
                        <asp:Parameter Name="original_password" Type="String" />
                        <asp:Parameter Name="original_nickname" Type="String" />
                        <asp:Parameter Name="original_permissions" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="account" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="nickname" Type="String" />
                        <asp:Parameter Name="permissions" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="account" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="nickname" Type="String" />
                        <asp:Parameter Name="permissions" Type="String" />
                        <asp:Parameter Name="original_id" Type="Int32" />
                        <asp:Parameter Name="original_account" Type="String" />
                        <asp:Parameter Name="original_password" Type="String" />
                        <asp:Parameter Name="original_nickname" Type="String" />
                        <asp:Parameter Name="original_permissions" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style11">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="margin-left: 23px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="id" HeaderText="编号" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="account" HeaderText="账号" SortExpression="account" />
                        <asp:BoundField DataField="password" HeaderText="密码" SortExpression="password" />
                        <asp:BoundField DataField="nickname" HeaderText="昵称" SortExpression="nickname" />
                        <asp:BoundField DataField="permissions" HeaderText="权限" SortExpression="permissions" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

