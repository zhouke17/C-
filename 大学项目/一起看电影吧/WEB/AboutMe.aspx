<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AboutMe.aspx.cs" Inherits="AboutMe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="550px">
        <div id="content">
            <span class="auto-style1">与我相关</span>
            <h2>评论</h2>

            <%
                for (int i = 0; i < rnic.Count; i++)
                {
                    getComments();
            %>
            <%--            <div class="post_box">
                <div class="post_meta"><strong>日期:</strong> <% =time %> | <strong>作者:</strong> <% =nick %> |</div>
                <img src="<%=picpath%>" alt="image" />
                <p><% =content %></p>
                <div class="cleaner_h20"></div>
                <div class="cleaner"></div>
            </div>--%>
            <br />
            <br />

            <br />

            <div id="comment_section">
                <ol class="comments first_level">
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
    </asp:Panel>
</asp:Content>

