<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PersonalPage.aspx.cs" Inherits="PersonInfor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 495px;
        }
        .auto-style2 {
            font-size: large;
            width: 164px;
        }
        .auto-style5 {
            width: 165px;
        }
        .auto-style9 {
            height: 19px;
            font-size: medium;
            width: 164px;
        }
        .auto-style18 {
            height: 20px;
            width: 165px;
        }
        .auto-style29 {
            width: 164px;
        }
        .auto-style30 {
            width: 164px;
            height: 20px;
            font-size: medium;
        }
        .auto-style31 {
           width: 495px;
        }
        .auto-style32 {
            font-size: large;
        }
        .auto-style33 {
            height: 22px;
        }
        .auto-style34 {
            height: 20px;
        }
        .auto-style35 {
            height: 22px;
            font-size: medium;
            width: 236px;
        }
        .auto-style36 {
            height: 20px;
            font-size: medium;
            width: 236px;
        }
        .auto-style37 {
            width: 236px;
        }
        .auto-style38 {
            color: #FF0000;
        }
        .auto-style41 {
            color: #FF66FF;
            font-size: medium;
        }
        .auto-style42 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" style="border: thin dashed #C0C0C0">
        <tr>
            <td class="auto-style2">个人信息：</td>
            <td class="auto-style29"><span class="auto-style41">欢迎</span><asp:Label ID="Label6" runat="server" Font-Size="Medium" ForeColor="#FF66FF" Text="Label"></asp:Label>
            </td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30">姓名 <asp:TextBox ID="TextBox1" runat="server" Width="96px"></asp:TextBox>
            </td>
            <td class="auto-style9"><span class="auto-style38">*</span>昵称<asp:TextBox ID="TextBox13" runat="server" Width="91px" Height="16px"></asp:TextBox>
            </td>
            <td class="auto-style5" rowspan="7">&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" Height="128px" Width="125px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30"><span class="auto-style38">*</span>性别<asp:TextBox ID="TextBox11" runat="server" Width="91px" Height="16px"></asp:TextBox>
            </td>
            <td class="auto-style30"><span class="auto-style38">*</span>邮箱<asp:TextBox ID="TextBox14" runat="server" Width="91px" Height="16px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30"><span class="auto-style38">*</span>年龄<asp:TextBox ID="TextBox12" runat="server" Width="91px" Height="16px"></asp:TextBox>
            </td>
            <td class="auto-style30">个性签名</td>
        </tr>
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style29" rowspan="4">
                <asp:TextBox ID="TextBox4" runat="server" Height="66px" Width="145px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style30">星座<asp:TextBox ID="TextBox2" runat="server" Width="96px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style5">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style30">爱好<asp:TextBox ID="TextBox3" runat="server" Width="96px"></asp:TextBox>
            </td>
            <td class="auto-style18">
&nbsp;
                <asp:Button ID="Button2" runat="server" Text="上传图片" Width="70px" OnClick="Button2_Click" />
            </td>
        </tr>
        </table>
<p>
</p>
<p style="height: 20px">
</p>
    <table class="auto-style31" style="border: thin dashed #C0C0C0">
        <tr class="auto-style32">
            <td class="auto-style37" style="border: thin none #C0C0C0">院校信息：</td>
            <td style="border: thin none #C0C0C0">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style37" style="border: thin none #C0C0C0">&nbsp;</td>
            <td style="border: thin none #C0C0C0">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35" style="border: thin none #C0C0C0">学校<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style33" style="border: thin none #C0C0C0"><span class="auto-style42">高中毕业院校</span><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style37" style="border: thin none #C0C0C0">&nbsp;</td>
            <td style="border: thin none #C0C0C0">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36" style="border: thin none #C0C0C0">院系<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style34" style="border: thin none #C0C0C0"><span class="auto-style42">高中毕业时间</span><asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style37" style="border: thin none #C0C0C0">&nbsp;</td>
            <td style="border: thin none #C0C0C0">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36" style="border: thin none #C0C0C0">年级<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style34" style="border: thin none #C0C0C0"><span class="auto-style42">家&nbsp;&nbsp;&nbsp;&nbsp; 乡</span>&nbsp;&nbsp; 
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
        </tr>
        </table>
<p style="height: 22px">
</p>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button_commit" runat="server" Text="提交信息" OnClick="Button_commit_Click" />
&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Visible="False" ForeColor="Red"></asp:Label>
</p>
    <br />
    <br />
</asp:Content>

