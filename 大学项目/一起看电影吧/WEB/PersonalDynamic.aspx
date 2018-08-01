<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PersonalDynamic.aspx.cs" Inherits="PersonalDynamic" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0px;
        }
        .auto-style2 {
            font-size: large;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="542px">
        <asp:TextBox ID="TextBox1" runat="server" Height="124px" Width="384px" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="请填写动态内容" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="a" Text="公开" />
        <asp:RadioButton ID="RadioButton2" runat="server" Checked="True" GroupName="a" Text="仅好友和自己可见" />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="发表" Width="116px" />
        <link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
        <br />
        <br />
        <div id="content">
            <%
                GetCount();
                for (; i < fc; i++)
                {
                    GetContent();
            %>

            <div class="post_box" runat ="server">
                <div class="post_meta"><strong>日期:</strong> <% =ti[i].ToString() %> | <strong>作者:</strong> <% =nick[i].ToString() %> |</div>
                <img width="80px" height="80px" src="<%=picpath[i].ToString() %>" alt="image" />
                <p><% =con[i].ToString() %></p>
                <div class="cleaner_h20"></div>
                <div class="cleaner"></div>
                <li class="auto-style1"><a href="Comments.aspx?Dnumber=<% =dnu[i].ToString() %>" style="font-size: 24px; color: #0000FF;">评论</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<% =pcou[i].ToString() %><span class="auto-style2">赞|</span></li>
            </div>
            <% } %>
        </div>
        <!-- end of content -->
    </asp:Panel>
</asp:Content>

