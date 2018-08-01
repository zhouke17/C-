<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ModClient.aspx.cs" Inherits="ModClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <div  style="background-image: url('image/12.jpg'); height:500px; width:784px; margin-left:120px; margin-top:0px">
  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:waterfeeConnectionString2 %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Client_1]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Client_1] WHERE [ClientID] = @original_ClientID AND (([ClientName] = @original_ClientName) OR ([ClientName] IS NULL AND @original_ClientName IS NULL)) AND (([ClientAddress] = @original_ClientAddress) OR ([ClientAddress] IS NULL AND @original_ClientAddress IS NULL)) AND (([ClientPhone] = @original_ClientPhone) OR ([ClientPhone] IS NULL AND @original_ClientPhone IS NULL)) AND (([ClientAddTime] = @original_ClientAddTime) OR ([ClientAddTime] IS NULL AND @original_ClientAddTime IS NULL))" InsertCommand="INSERT INTO [Client_1] ([ClientID], [ClientName], [ClientAddress], [ClientPhone], [ClientAddTime]) VALUES (@ClientID, @ClientName, @ClientAddress, @ClientPhone, @ClientAddTime)" UpdateCommand="UPDATE [Client_1] SET [ClientName] = @ClientName, [ClientAddress] = @ClientAddress, [ClientPhone] = @ClientPhone, [ClientAddTime] = @ClientAddTime WHERE [ClientID] = @original_ClientID AND (([ClientName] = @original_ClientName) OR ([ClientName] IS NULL AND @original_ClientName IS NULL)) AND (([ClientAddress] = @original_ClientAddress) OR ([ClientAddress] IS NULL AND @original_ClientAddress IS NULL)) AND (([ClientPhone] = @original_ClientPhone) OR ([ClientPhone] IS NULL AND @original_ClientPhone IS NULL)) AND (([ClientAddTime] = @original_ClientAddTime) OR ([ClientAddTime] IS NULL AND @original_ClientAddTime IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_ClientID" Type="Int32" />
        <asp:Parameter Name="original_ClientName" Type="String" />
        <asp:Parameter Name="original_ClientAddress" Type="String" />
        <asp:Parameter Name="original_ClientPhone" Type="String" />
        <asp:Parameter Name="original_ClientAddTime" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ClientID" Type="Int32" />
        <asp:Parameter Name="ClientName" Type="String" />
        <asp:Parameter Name="ClientAddress" Type="String" />
        <asp:Parameter Name="ClientPhone" Type="String" />
        <asp:Parameter Name="ClientAddTime" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="ClientName" Type="String" />
        <asp:Parameter Name="ClientAddress" Type="String" />
        <asp:Parameter Name="ClientPhone" Type="String" />
        <asp:Parameter Name="ClientAddTime" Type="String" />
        <asp:Parameter Name="original_ClientID" Type="Int32" />
        <asp:Parameter Name="original_ClientName" Type="String" />
        <asp:Parameter Name="original_ClientAddress" Type="String" />
        <asp:Parameter Name="original_ClientPhone" Type="String" />
        <asp:Parameter Name="original_ClientAddTime" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ClientID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="ClientID" HeaderText="用户ID" ReadOnly="True" SortExpression="ClientID" />
        <asp:BoundField DataField="ClientName" HeaderText="用户名" SortExpression="ClientName" />
        <asp:BoundField DataField="ClientAddress" HeaderText="用户地址" SortExpression="ClientAddress" />
        <asp:BoundField DataField="ClientPhone" HeaderText="用户电话" SortExpression="ClientPhone" />
        <asp:BoundField DataField="ClientAddTime" HeaderText="用户添加时间" SortExpression="ClientAddTime" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
        </div>

</asp:Content>

