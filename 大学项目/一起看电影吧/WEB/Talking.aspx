<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Talking.aspx.cs" Inherits="Talking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        body {
            width: 780px;
            margin: 0px auto;
        }

        h3 {
            margin: 10px;
            padding: 10px;
            text-align: center;
        }

        p.tc {
            text-align: center;
        }

        #pnl_chat {
            margin: 10px;
            padding: 10px;
            border: 1px solid #dadada;
            height: 300px;
        }

        #div_ctls {
            margin: 10px;
            padding: 10px;
            border: 1px solid #dadade;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="536px">
        <div>
            <div>
                <h3>简易聊天室<asp:ScriptManager
                    ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                    <asp:Timer ID="Timer1" runat="server" Interval="1000">
                    </asp:Timer>
                </h3>
                <asp:UpdatePanel ID="pnl_chat1" runat="server" ScrollBars="Vertical">
                    <ContentTemplate>
                        <asp:Panel ID="pnl_chat" runat="server" ScrollBars="Vertical" Height="383px">
                        </asp:Panel>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                    </Triggers>
                </asp:UpdatePanel>
                <div id="div_ctls">
                    <p>
                        <asp:TextBox ID="txt_word" runat="server" Width="400"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="发送" OnClick="Button1_Click" />
                        &nbsp;
                <asp:Button ID="Button2" runat="server" Text="刷新聊天记录" OnClick="Button2_Click1" />
                        &nbsp;
                <asp:Button ID="Button4" runat="server" Text="清空" OnClick="Button4_Click" />
                        &nbsp;
                    <asp:Button ID="Button5" runat="server" Text="退出聊天" OnClick="Button5_Click" />
                        &nbsp;
                <asp:Button ID="Button3" runat="server" Text="退出聊天并清除记录" OnClick="Button3_Click" />
                    </p>
                </div>
            </div>
        </div>
    </asp:Panel>
</asp:Content>

