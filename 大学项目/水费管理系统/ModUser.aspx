<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="ModUser.aspx.cs" Inherits="ModUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div  style="background-image: url('image/1.jpg'); height:500px; width:784px; margin-left:120px; margin-top:0px">
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:waterfeeConnectionString5 %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [User_Info]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [User_Info] WHERE [UserID] = @original_UserID AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([UserPwd] = @original_UserPwd) OR ([UserPwd] IS NULL AND @original_UserPwd IS NULL)) AND (([UserMail] = @original_UserMail) OR ([UserMail] IS NULL AND @original_UserMail IS NULL)) AND (([UserPhone] = @original_UserPhone) OR ([UserPhone] IS NULL AND @original_UserPhone IS NULL))" InsertCommand="INSERT INTO [User_Info] ([UserID], [UserName], [UserPwd], [UserMail], [UserPhone]) VALUES (@UserID, @UserName, @UserPwd, @UserMail, @UserPhone)" ProviderName="System.Data.SqlClient" UpdateCommand="UPDATE [User_Info] SET [UserName] = @UserName, [UserPwd] = @UserPwd, [UserMail] = @UserMail, [UserPhone] = @UserPhone WHERE [UserID] = @original_UserID AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([UserPwd] = @original_UserPwd) OR ([UserPwd] IS NULL AND @original_UserPwd IS NULL)) AND (([UserMail] = @original_UserMail) OR ([UserMail] IS NULL AND @original_UserMail IS NULL)) AND (([UserPhone] = @original_UserPhone) OR ([UserPhone] IS NULL AND @original_UserPhone IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_UserID" Type="String" />
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_UserPwd" Type="String" />
            <asp:Parameter Name="original_UserMail" Type="String" />
            <asp:Parameter Name="original_UserPhone" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserID" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="UserPwd" Type="String" />
            <asp:Parameter Name="UserMail" Type="String" />
            <asp:Parameter Name="UserPhone" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="UserPwd" Type="String" />
            <asp:Parameter Name="UserMail" Type="String" />
            <asp:Parameter Name="UserPhone" Type="String" />
            <asp:Parameter Name="original_UserID" Type="String" />
            <asp:Parameter Name="original_UserName" Type="String" />
            <asp:Parameter Name="original_UserPwd" Type="String" />
            <asp:Parameter Name="original_UserMail" Type="String" />
            <asp:Parameter Name="original_UserPhone" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" CssClass="auto-style4" GridLines="None" Height="328px" Width="711px">
    <Columns>
        <asp:CommandField ShowSelectButton="True" ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="UserID" HeaderText="收费员ID" SortExpression="UserID" />
        <asp:BoundField DataField="UserName" HeaderText="收费员姓名" SortExpression="UserName" />
        <asp:BoundField DataField="UserPwd" HeaderText="收费员密码" SortExpression="UserPwd" />
        <asp:BoundField DataField="UserMail" HeaderText="收费员邮箱" SortExpression="UserMail" />
        <asp:BoundField DataField="UserPhone" HeaderText="收费员电话" SortExpression="UserPhone" />
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
<p>
</p>
         </div>
</asp:Content>

