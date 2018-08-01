<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Friends.aspx.cs" Inherits="Friends" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            top: 0px;
            left: 0px;
            width: 378px;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="528px">
        <asp:Button ID="Button2" runat="server" Text="添加好友" OnClick="Button2_Click" />
        <asp:Button ID="Button6" runat="server" Text="移入黑名单" OnClick="Button6_Click" />
        <asp:Button ID="Button7" runat="server" Text="移出黑名单" OnClick="Button7_Click" />
        <asp:Button ID="Button17" runat="server" Text="删除好友" OnClick="Button17_Click" />
        <div id="div1" runat="server">
            好友昵称：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查找" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AutoUserID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="AutoUserID" HeaderText="AutoUserID" ReadOnly="True" SortExpression="AutoUserID" InsertVisible="False" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                    <asp:BoundField DataField="Graduatedschool" HeaderText="Graduatedschool" SortExpression="Graduatedschool" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="NickName" HeaderText="NickName" SortExpression="NickName" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="Button15" runat="server" CommandArgument='<%# Eval("AutoUserID") %>' OnCommand="Button5_Command" Text="添加" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT [AutoUserID], [Name], [Sex], [Age], [Graduatedschool], [Email], [NickName] FROM [User] WHERE ([NickName] LIKE '%' + @NickName + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="NickName" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>

        <div id="div2" runat="server">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="FriAutoID">
                <Columns>
                    <asp:BoundField DataField="FriAutoID" HeaderText="FriAutoID" SortExpression="FriAutoID" ReadOnly="True" InsertVisible="False" />
                    <asp:BoundField DataField="FriendNick" HeaderText="FriendNick" SortExpression="FriendNick" />
                    <asp:BoundField DataField="FriendNotes" HeaderText="FriendNotes" SortExpression="FriendNotes" />
                    <asp:BoundField DataField="FriendState" HeaderText="FriendState" SortExpression="FriendState" />
                    <asp:BoundField DataField="FriendClassification" HeaderText="FriendClassification" SortExpression="FriendClassification" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="Button16" runat="server" CommandArgument='<%# Eval("FriAutoID") %>' OnCommand="Button6_Command" Text="移入黑名单" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT [FriAutoID], [FriendNick], [FriendState], [FriendNotes], [FriendClassification] FROM [Friends] WHERE (([UserID] = @UserID) AND ([FriendClassification] LIKE '%' + @FriendClassification + '%'))">
                <SelectParameters>
                    <asp:SessionParameter Name="UserID" SessionField="UID" Type="String" />
                    <asp:Parameter DefaultValue="白名单" Name="FriendClassification" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>

        <div id="div3" runat="server">
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" DataKeyNames="FriAutoID">
                <Columns>
                    <asp:BoundField DataField="FriAutoID" HeaderText="FriAutoID" SortExpression="FriAutoID" ReadOnly="True" />
                    <asp:BoundField DataField="FriendNick" HeaderText="FriendNick" SortExpression="FriendNick" />
                    <asp:BoundField DataField="FriendNotes" HeaderText="FriendNotes" SortExpression="FriendNotes" />
                    <asp:BoundField DataField="FriendState" HeaderText="FriendState" SortExpression="FriendState" />
                    <asp:BoundField DataField="FriendClassification" HeaderText="FriendClassification" SortExpression="FriendClassification" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="Button14" runat="server" CommandArgument='<%# Eval("FriAutoID") %>' OnCommand="Button10_Command" Text="移出黑名单" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField></asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT [FriAutoID], [FriendNick], [FriendNotes], [FriendState], [FriendClassification] FROM [Friends] WHERE (([UserID] = @UserID) AND ([FriendClassification] LIKE '%' + @FriendClassification + '%'))">
                <SelectParameters>
                    <asp:SessionParameter Name="UserID" SessionField="UID" Type="String" />
                    <asp:Parameter DefaultValue="黑名单" Name="FriendClassification" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>

        <div id="div4" runat="server">

            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="FriAutoID" DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:BoundField DataField="FriAutoID" HeaderText="FriAutoID" InsertVisible="False" ReadOnly="True" SortExpression="FriAutoID" />
                    <asp:BoundField DataField="FriendNick" HeaderText="FriendNick" SortExpression="FriendNick" />
                    <asp:BoundField DataField="FriendNotes" HeaderText="FriendNotes" SortExpression="FriendNotes" />
                    <asp:BoundField DataField="FriendState" HeaderText="FriendState" SortExpression="FriendState" />
                    <asp:BoundField DataField="FriendClassification" HeaderText="FriendClassification" SortExpression="FriendClassification" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:conn %>" DeleteCommand="DELETE FROM [Friends] WHERE [FriAutoID] = @original_FriAutoID AND [FriendNick] = @original_FriendNick AND (([FriendNotes] = @original_FriendNotes) OR ([FriendNotes] IS NULL AND @original_FriendNotes IS NULL)) AND (([FriendState] = @original_FriendState) OR ([FriendState] IS NULL AND @original_FriendState IS NULL)) AND (([FriendClassification] = @original_FriendClassification) OR ([FriendClassification] IS NULL AND @original_FriendClassification IS NULL))" InsertCommand="INSERT INTO [Friends] ([FriendNick], [FriendNotes], [FriendState], [FriendClassification]) VALUES (@FriendNick, @FriendNotes, @FriendState, @FriendClassification)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [FriAutoID], [FriendNick], [FriendNotes], [FriendState], [FriendClassification] FROM [Friends] WHERE ([UserID] = @UserID)" UpdateCommand="UPDATE [Friends] SET [FriendNick] = @FriendNick, [FriendNotes] = @FriendNotes, [FriendState] = @FriendState, [FriendClassification] = @FriendClassification WHERE [FriAutoID] = @original_FriAutoID AND [FriendNick] = @original_FriendNick AND (([FriendNotes] = @original_FriendNotes) OR ([FriendNotes] IS NULL AND @original_FriendNotes IS NULL)) AND (([FriendState] = @original_FriendState) OR ([FriendState] IS NULL AND @original_FriendState IS NULL)) AND (([FriendClassification] = @original_FriendClassification) OR ([FriendClassification] IS NULL AND @original_FriendClassification IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_FriAutoID" Type="Int32" />
                    <asp:Parameter Name="original_FriendNick" Type="String" />
                    <asp:Parameter Name="original_FriendNotes" Type="String" />
                    <asp:Parameter Name="original_FriendState" Type="String" />
                    <asp:Parameter Name="original_FriendClassification" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FriendNick" Type="String" />
                    <asp:Parameter Name="FriendNotes" Type="String" />
                    <asp:Parameter Name="FriendState" Type="String" />
                    <asp:Parameter Name="FriendClassification" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="UserID" SessionField="UID" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FriendNick" Type="String" />
                    <asp:Parameter Name="FriendNotes" Type="String" />
                    <asp:Parameter Name="FriendState" Type="String" />
                    <asp:Parameter Name="FriendClassification" Type="String" />
                    <asp:Parameter Name="original_FriAutoID" Type="Int32" />
                    <asp:Parameter Name="original_FriendNick" Type="String" />
                    <asp:Parameter Name="original_FriendNotes" Type="String" />
                    <asp:Parameter Name="original_FriendState" Type="String" />
                    <asp:Parameter Name="original_FriendClassification" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>

            </div>
        <div>
            我的好友：<br />
            <asp:ScriptManager
                ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div>
                        <%
                            for (int i = 0; i < friendsW.Count; i++)
                            {
                                friend = (friend)friendsW[i];
                                state(friend);
                        %>
                        <div class="auto-style1">
                            <div>
                                 <img width="30px" height="30px" src="<% = friend.FriendUrl %>" alt="image" />
                             </div>
                            <div>

                                <p>
                                    <% =friend.Friendnick %>
                                </p>
                                <p>
                                    <% =friend.Friendnotes %>
                                </p>

                                <p>
                                    <% =friend.FriendState %>
                                </p>

                                <a href="Talking.aspx?Mname=<% =friend.FriuserID %>&Fname=<% =UserID %>&url=<% =friend.FriendUrl %>">
                                    <p>
                                        <% =text %>
                                    </p>
                                </a>

                                <a href="Talking.aspx?Mname=<% =UserID %>&Fname=<% =friend.FriuserID %>&url=<% =friend.FriendUrl %>">
                                    <p>
                                        聊天 
                                    </p>
                                </a>
                            </div>
                        </div>

                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <% } %>
                    </div>

                    黑名单：<br />
                    <div>
                        <%
                            for (int i = 0; i < friendsB.Count; i++)
                            {
                                friend = (friend)friendsB[i];
                                state(friend);
                        %>
                        <div class="auto-style1">
                            <div>
                                <img width="30px" height="30px" src="<% = friend.FriendUrl %>" alt="image" />
                            </div>
                            <div><% =i %>
                                <p>
                                    <% =friend.Friendnick %>
                                </p>
                                <p>
                                    <% =friend.Friendnotes %>
                                </p>
                                <p>
                                    <% =friend.FriendState %>
                                </p>
                            </div>
                        </div>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <% } %>
                    </div>

                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                </Triggers>
            </asp:UpdatePanel>

        </div>
        <asp:Timer ID="Timer1" runat="server" Interval="30000">
        </asp:Timer>
    </asp:Panel>
</asp:Content>

