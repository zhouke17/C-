<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Manage.aspx.cs" Inherits="Manage1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="AutoUserID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="AutoUserID" HeaderText="原始ID" ReadOnly="True" SortExpression="AutoUserID" />
                <asp:BoundField DataField="UserID" HeaderText="用户ID" SortExpression="UserID" />
                <asp:BoundField DataField="Name" HeaderText="姓名" SortExpression="Name" />
                <asp:BoundField DataField="Sex" HeaderText="性别" SortExpression="Sex" />
                <asp:BoundField DataField="Age" HeaderText="年龄" SortExpression="Age" />
                <asp:BoundField DataField="Graduatedschool" HeaderText="毕业学校" SortExpression="Graduatedschool" />
                <asp:BoundField DataField="Email" HeaderText="邮箱" SortExpression="Email" />
                <asp:BoundField DataField="HeadPic" HeaderText="头像" SortExpression="HeadPic" />
                <asp:BoundField DataField="Home" HeaderText="家庭住址" SortExpression="Home" />
                <asp:BoundField DataField="Grade" HeaderText="成绩" SortExpression="Grade" />
                <asp:BoundField DataField="NickName" HeaderText="昵称" SortExpression="NickName" />
                <asp:ButtonField HeaderText="删除操作" Text="删除" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT [AutoUserID], [UserID], [Name], [Sex], [Age], [Graduatedschool], [Email], [HeadPic], [Home], [Grade], [NickName] FROM [User]"></asp:SqlDataSource>
    
    </form>
</body>
</html>
