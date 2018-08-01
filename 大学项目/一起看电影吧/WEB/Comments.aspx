<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Comments.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="550px">
        <div id="content">
            <%GetContent();
                GetCount();%>
            <div class="post_box">
                <div class="post_meta"><strong>日期:</strong> <% =time %> | <strong>作者:</strong> <% =nick %> |</div>
                <img width="80px" height="80px" src="<%=picpath%>" alt="image" />
                <p><% =content %></p>
                <div class="cleaner_h20"></div>
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="X-Large" ForeColor="Blue" OnClick="praise" CausesValidation="False">赞</asp:LinkButton>
                <div class="cleaner"></div>
            </div>
            <br />
            <br />

            <br />

            <h2>评论</h2>
            <div id="comment_section">
                <ol class="comments first_level">
                    <%
                        for (int i = 0; i < cc; i++)
                        {
                            getComments();
                    %>

                    <li>
                        <div class="comment_box commentbox1">
                            <div class="comment_text">
                                <div class="comment_author">昵称：<%=rnic[i].ToString()%>| <span class="date">日期：<%=rtim[i].ToString()%>| </span></div>
                                <p><%=rcon[i].ToString()%></p>
                            </div>
                            <div class="cleaner"></div>
                        </div>

                    </li>
                    <%} %>
                </ol>
            </div>
        </div>
        <br />
        <span class="auto-style1">请填写评论：</span><br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="102px" TextMode="MultiLine" Width="377px"></asp:TextBox>
        <!-- end of content -->

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="请填写评论内容" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="发表" />

    </asp:Panel>
</asp:Content>
