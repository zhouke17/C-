<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="PhotoAlbum.ascx" TagName="PhotoAlbum" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
            background-color: #00FF00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Menu ID="Menu1" runat="server">
            <Items>
                <asp:MenuItem NavigateUrl="~/FirstPage.aspx" Text="返回主页" Value="返回主页"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Person.aspx" Text="返回" Value="返回"></asp:MenuItem>
            </Items>
        </asp:Menu>
        <asp:Button ID="Button2" runat="server" CssClass="auto-style1" OnClick="Button2_Click" Text="修改相册" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <uc1:PhotoAlbum ID="PhotoAlbum" runat="server" />
    
    </div>
    </form>
</body>
</html>
