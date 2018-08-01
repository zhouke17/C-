<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DynamicManagement.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="550px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="Dnumber" DataSourceID="SqlDataSource1" GridLines="None" Height="219px" Width="643px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="DTime" HeaderText="发表时间" SortExpression="DTime" />
                <asp:BoundField DataField="DContent" HeaderText="动态内容" SortExpression="DContent" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" DeleteCommand="DELETE FROM [Dynamic] WHERE [Dnumber] = @Dnumber" InsertCommand="INSERT INTO [Dynamic] ([DTime], [DContent], [Dnumber]) VALUES (@DTime, @DContent, @Dnumber)" SelectCommand="SELECT [DTime], [DContent], [Dnumber] FROM [Dynamic] WHERE ([UserID] = @UserID)" UpdateCommand="UPDATE [Dynamic] SET [DTime] = @DTime, [DContent] = @DContent WHERE [Dnumber] = @Dnumber">
            <DeleteParameters>
                <asp:Parameter Name="Dnumber" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="DTime" Type="String" />
                <asp:Parameter Name="DContent" Type="String" />
                <asp:Parameter Name="Dnumber" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="UserID" SessionField="UID" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="DTime" Type="String" />
                <asp:Parameter Name="DContent" Type="String" />
                <asp:Parameter Name="Dnumber" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        请输入动态内容进行查找：<br />&nbsp;<br /><asp:TextBox ID="TextBox1" runat="server" Height="17px"></asp:TextBox>
&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 21px" Text="搜索" />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="Dnumber" DataSourceID="SqlDataSource2" GridLines="None" Height="180px" Visible="False" Width="643px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="DTime" HeaderText="发表时间" SortExpression="DTime" />
                <asp:BoundField DataField="DContent" HeaderText="动态内容" SortExpression="DContent" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" DeleteCommand="DELETE FROM [Dynamic] WHERE [Dnumber] = @Dnumber" InsertCommand="INSERT INTO [Dynamic] ([Dnumber], [DTime], [DContent]) VALUES (@Dnumber, @DTime, @DContent)" SelectCommand="SELECT [Dnumber], [DTime], [DContent] FROM [Dynamic] WHERE (([UserID] = @UserID) AND ([DContent] LIKE '%' + @DContent + '%'))" UpdateCommand="UPDATE [Dynamic] SET [DTime] = @DTime, [DContent] = @DContent WHERE [Dnumber] = @Dnumber">
            <DeleteParameters>
                <asp:Parameter Name="Dnumber" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Dnumber" Type="String" />
                <asp:Parameter Name="DTime" Type="String" />
                <asp:Parameter Name="DContent" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="UserID" SessionField="UID" Type="String" />
                <asp:ControlParameter ControlID="TextBox1" Name="DContent" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="DTime" Type="String" />
                <asp:Parameter Name="DContent" Type="String" />
                <asp:Parameter Name="Dnumber" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </asp:Panel>
</asp:Content>

