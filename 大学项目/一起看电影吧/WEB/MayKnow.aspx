<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="MayKnow.aspx.cs" Inherits="MayKnow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="532px">
    <div>
        可能认识的人:<asp:Label ID="Label1" runat="server" Text="Label">学院</asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AutoUserID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="AutoUserID" HeaderText="AutoUserID" ReadOnly="True" SortExpression="AutoUserID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Graduatedschool" HeaderText="Graduatedschool" SortExpression="Graduatedschool" />
                <asp:BoundField DataField="NickName" HeaderText="NickName" SortExpression="NickName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("AutoUserID") %>' OnCommand="Button1_Command" Text="添加" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField></asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT [AutoUserID], [Name], [Sex], [Age], [Graduatedschool], [NickName], [Email] FROM [User] WHERE ([Graduatedschool] LIKE '%' + @Graduatedschool + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="Graduatedschool" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        </div>
</asp:Panel>
</asp:Content>

