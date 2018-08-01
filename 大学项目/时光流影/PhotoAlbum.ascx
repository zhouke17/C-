<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PhotoAlbum.ascx.cs" Inherits="PhotoAlbum" %>
<div style="margin:auto;">
<asp:DataList ID="DataList1" runat="server" RepeatColumns="4" Width="100%" 
        Height="291px" onselectedindexchanged="DataList1_SelectedIndexChanged">
            <ItemTemplate><div style="width:160px;margin:auto;height:120px;border:1px solid gray;">
            <div>
            <a href="<%#Eval("img2Photo")%>" target="_blank">
                <div style="color:Gray;text-align:center;height:119px;">
                    <a href='<%#Eval("img2Photo")%>' target="_blank">
                    <img style="border-style: none; border-color: inherit; border-width: medium; margin: 0px auto auto auto; padding: 0px; height: 117px; width: 155px;" 
                src="<%#Eval("img1Photo")%>"  />
                    </a>
                    <br />
                </div>
                </a>
                <br />
            </div>
        </div>
        
        </ItemTemplate>
</asp:DataList>
<div style="margin:auto;height:20px;padding:0px;text-align:right;padding:0px;">
<br />
<asp:LinkButton ID="lbnPrevPage" runat="server" CommandName="prev" OnCommand="Page_OnClick">上一页</asp:LinkButton>
<asp:Label ID="lbCurrentPage" runat="server" Text=""></asp:Label>
&nbsp;&nbsp;<asp:Label ID="lbTotal" runat="server" Text=""></asp:Label>
<asp:LinkButton ID="lbnNextPage" runat="server" CommandName="next" OnCommand="Page_OnClick">下一页</asp:LinkButton>
&nbsp;&nbsp;跳转至第<asp:DropDownList ID="lstPage" runat="server" OnSelectedIndexChanged="lstPage_SelectedIndexChanged1" AutoPostBack="True">
    </asp:DropDownList>页&nbsp;
</div>
</div>