<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <script type="text/javascript">
        //账号输入格式提示
        function cls() {
            var obj = document.getElementById('TextBox3');
            obj.style.color = '#000';
        with (event.srcElement)
            if (value == defaultValue) value = ""
        }
        function res() {
            var obj = document.getElementById('TextBox3');
            obj.style.color = 'Gray';
        with (event.srcElement)
            if (value == "") value = defaultValue
        }

        ////密码输入格式提示
        //function cls2() {
        //    var obj = document.getElementById('TextBox4');
        //    obj.style.color = '#000';          
        //    with (event.srcElement)
        //        if (value == defaultValue) value = ""
        //}
        //function res2() {
        //    var obj = document.getElementById('TextBox4');
        //    obj.style.color = 'Gray';
        //    with (event.srcElement)
        //        if (value == "") value = defaultValue
        //}
        ////确认密码输入格式提示
        //function cls3() {
        //    var obj = document.getElementById('TextBox5');
        //    obj.style.color = '#000';
        //    with (event.srcElement)
        //        if (value == defaultValue) value = ""
        //}
        //function res3() {
        //    var obj = document.getElementById('TextBox5');
        //    obj.style.color = 'Gray';
        //    with (event.srcElement)
        //        if (value == "") value = defaultValue
        //}


        //昵称输入格式提示
        function cls4() {
            var obj = document.getElementById('TextBox6');
            obj.style.color = '#000';
            with (event.srcElement)
                if (value == defaultValue) value = ""
        }
        function res4() {
            var obj = document.getElementById('TextBox6');
            obj.style.color = 'Gray';
            with (event.srcElement)
                if (value == "") value = defaultValue
        }

        //邮箱输入格式提示
        function cls5() {
            var obj = document.getElementById('TextBox7');
            obj.style.color = '#000';
            with (event.srcElement)
                if (value == defaultValue) value = ""
        }
        function res5() {
            var obj = document.getElementById('TextBox7');
            obj.style.color = 'Gray';
            with (event.srcElement)
                if (value == "") value = defaultValue
        }



       
    </script>




    <style type="text/css">
        .auto-style1 {
            width: 155%;
            height: 138px;
        }
        .auto-style2 {
            height: 90px;
        }
        .auto-style7 {
            height: 90px;
            width: 8px;
        }
        .auto-style9 {
            width: 8px;
        }
        .auto-style10 {
            height: 90px;
            width: 439px;
        }
        .auto-style11 {
            height: 23px;
            width: 8px;
        }
        .auto-style12 {
            height: 23px;
        }
        .auto-style14 {
            height: 204px;
            width: 8px;
        }
        .auto-style20 {
            width: 417px;
        }
        .auto-style21 {
            height: 55px;
            width: 84px;
        }
        .auto-style24 {
            height: 23px;
            width: 21px;
        }
        .auto-style25 {
            height: 204px;
            width: 21px;
        }
        .auto-style27 {
        }
        .auto-style28 {
            height: 55px;
            width: 55px;
        }
        .auto-style29 {
            height: 65px;
        }
        .auto-style38 {
            height: 23px;
            width: 43px;
        }
        .auto-style39 {
            height: 204px;
            width: 43px;
        }
        .auto-style41 {
            width: 43px;
        }
        .auto-style43 {
            height: 23px;
            width: 210px;
        }
        .auto-style44 {
            height: 204px;
            width: 210px;
        }
        .auto-style50 {
            width: 8px;
            height: 250px;
        }
        .auto-style51 {
            width: 21px;
            height: 250px;
        }
        .auto-style52 {
            width: 210px;
            height: 250px;
        }
        .auto-style57 {
            height: 30px;
        }
        .auto-style58 {
            width: 324%;
            height: 30px;
        }
        .auto-style60 {
            width: 102%;
            height: 14px;
        }
        .auto-style61 {
            width: 172px;
        }
        .auto-style62 {
            font-size: x-large;
            width: 142px;
            height: 28px;
        }
        .auto-style64 {
            width: 172px;
            height: 60px;
        }
        .auto-style65 {
            width: 386px;
        }
        .auto-style66 {
            width: 533px;
        }
        .auto-style67 {
            width: 172px;
            height: 20px;
        }
        .auto-style68 {
            width: 210px;
        }
        .auto-style69 {
            width: 127%;
            height: 162px;
        }
        .auto-style70 {
            height: 50px;
            width: 504px;
        }
        .auto-style71 {
            width: 301%;
            height: 265px;
        }
        .auto-style72 {
            width: 222px;
        }
        .auto-style73 {
            width: 375px;
        }
        .auto-style74 {
            width: 222px;
            height: 34px;
        }
        .auto-style75 {
            width: 375px;
            height: 34px;
        }
        .auto-style76 {
            height: 34px;
            width: 21px;
        }
        .auto-style77 {
            width: 21px;
        }
        .auto-style78 {
            width: 222px;
            height: 38px;
        }
        .auto-style79 {
            width: 375px;
            height: 38px;
        }
        .auto-style80 {
            width: 21px;
            height: 38px;
        }
        .auto-style81 {
            width: 222px;
            height: 45px;
        }
        .auto-style82 {
            width: 21px;
            height: 45px;
        }
        .auto-style83 {
            height: 23px;
            width: 2px;
        }
        .auto-style84 {
            height: 204px;
            width: 2px;
        }
        .auto-style85 {
            width: 2px;
        }
        .auto-style87 {
            height: 23px;
            width: 23px;
        }
        .auto-style88 {
            width: 23px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style7">&nbsp; &nbsp;</td>
            <td class="auto-style10" style="font-size: 60px">
                <asp:Image ID="Image1" runat="server" Height="110px" ImageUrl="~/images/t01755313e5ac54b57e.jpg" Width="334px" style="margin-left: 0px" />
&nbsp;
            </td>
            <td class="auto-style2" colspan="8" </td><asp:Image ID="Image4" runat="server" Height="117px" ImageUrl="~/images/一起看电影吧.gif" Width="508px" />
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style24" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style43"></td>
            <td class="auto-style83"></td>
            <td class="auto-style12"></td>
            <td class="auto-style38"></td>
            <td class="auto-style87"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style14" style="border-style: dashed none none dashed; border-top-width: thin; border-top-color: #C0C0C0; border-left-width: thin; border-left-color: #C0C0C0"></td>
            <td class="auto-style25" colspan="2">
                <table class="auto-style20">
                    <tr>
                        <td class="auto-style29" colspan="2" style="border-style: dashed dashed none dashed; border-width: medium; border-color: #C0C0C0;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 账号&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="180px"></asp:TextBox>
                            <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="Label5" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style29" colspan="2" style="border-right-style: dashed; border-left-style: dashed; border-width: medium; border-color: #C0C0C0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 密码&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="180px" TextMode="Password"></asp:TextBox>
                           <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="Label6" Visible="False"></asp:Label>  
                        
                            <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label8" runat="server" BackColor="White" ForeColor="Red" Text="Label8" Visible="False"></asp:Label>
                              <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="21px" RepeatDirection="Horizontal" Width="190px">
                                <asp:ListItem Value="用户" Selected="True"></asp:ListItem>
                                <asp:ListItem Value="管理员"></asp:ListItem>
                            </asp:RadioButtonList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
&nbsp;&nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style28" style="border-right-style: none; border-left-style: dashed; border-width: medium; border-color: #C0C0C0; border-bottom-style: dashed;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td class="auto-style21" style="border-bottom-style: dashed; border-width: medium; border-color: #C0C0C0; border-right-style: dashed;">
                            <asp:Button ID="Button_login" runat="server" BorderStyle="None" Font-Size="Medium" Height="29px" Text="登录" Width="94px" style="margin-left: 0px" BackColor="#CCCCCC" ForeColor="Black" OnClick="Button_login_Click" CausesValidation="False" />
                        </td>
                    </tr>
                </table>
            </td>
            <td class="auto-style44" style="border: medium dashed #C0C0C0; text-align: center;">
                <table class="auto-style58">
                    <tr>
                        <td class="auto-style64" style="background-image: none">
                            &nbsp;&nbsp;&nbsp;
                            <asp:Image ID="Image2" runat="server" Height="85px" ImageUrl="~/images/logo2.jpg" Width="94px" />
                        </td>
                        <td class="auto-style65" rowspan="4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style67"></td>
                    </tr>
                    <tr>
                        <td class="auto-style61">
                            <table class="auto-style60">
                                <tr>
                                    <td class="auto-style62"><strong>&nbsp; 我要注册 </strong>  </td>   </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style61">&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td class="auto-style84"></td>
            <td class="auto-style39">
                            <table class="auto-style69">
                                <tr>
                                    <td class="auto-style70">&nbsp;账号：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                        <%--<asp:TextBox ID="TextBox3" runat="server" Font-Size="Small" ForeColor="#999999" Height="25px" Width="180px">请您使用手机号码注册</asp:TextBox>--%>

                                        <asp:TextBox ID="TextBox3" runat="server" Font-Size="Small" Text="请您使用手机号码注册"  Height="25px" Width="180px" Style="color: Gray"
                                        CssClass="inputcss" onfocus="cls()" onblur="res()">
                                        </asp:TextBox>
                                    &nbsp;
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="您输入的账号不合法！" ValidationExpression="^1[3578][0123456789]\d{8}$" ForeColor="Red"></asp:RegularExpressionValidator>
                                        &nbsp;&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style70">密码：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                        <asp:TextBox ID="TextBox4" runat="server" Font-Size="Small" ForeColor="Black" Height="25px" Width="180px" TextMode="Password"></asp:TextBox>
                                        

                                          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="密码为6-12个数字或字母组成！" ForeColor="Red" ValidationExpression="[0-9A-Za-z]{6,12}$"></asp:RegularExpressionValidator>

                                          &nbsp;
                                        </td>
                                </tr>
                                <tr>
                                    <td class="auto-style70">确认密码：&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server" Font-Size="Small" ForeColor="Black" Height="25px" Width="180px" TextMode="Password"></asp:TextBox>
                            
                                          &nbsp;
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="两次输入的密码不相同！" ForeColor="Red"></asp:CompareValidator>
                                        <br />
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                </tr>
                            </table>
                        </td>
            
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td colspan="2" class="auto-style27">&nbsp;</td>
            <td class="auto-style68">&nbsp;</td>
            <td class="auto-style85">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style88">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50"></td>
            <td colspan="2" class="auto-style51">
                <asp:Image ID="Image3" runat="server" Height="289px" ImageUrl="~/images/t01fbb95a5f9510b782.jpg" Width="492px" />
            </td>
            <td class="auto-style52" style="border: medium dashed #C0C0C0">
                <table class="auto-style71">
                    <tr>
                        <td class="auto-style72">&nbsp;</td>
                        <td class="auto-style73">昵称：&nbsp;&nbsp; <%--<asp:TextBox ID="TextBox6" runat="server" Font-Size="Small" ForeColor="#999999" Height="25px" Width="185px">不超过20个字符的数字字母汉字</asp:TextBox>--%>
                             <asp:TextBox ID="TextBox6" runat="server" Font-Size="Small" Text="不超过20个数字字母汉字"  Height="25px" Width="180px" Style="color: Gray"
                                        CssClass="inputcss" onfocus="cls4()" onblur="res4()" MaxLength="20"></asp:TextBox>
                                    </td>
                        <td class="auto-style77">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style78">&nbsp;</td>
                        <td class="auto-style79">性别：<asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="a" Text="男" />
                            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="a" Text="女" />
                            &nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td class="auto-style80"></td>
                    </tr>
                    <tr>
                        <td class="auto-style81"></td>
                       <td class="auto-style73">年龄：&nbsp;&nbsp;  
                                        
                          <%--  <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True"            
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged">         
                        </asp:DropDownList>年 
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True"              
                        onselectedindexchanged="DropDownList3_SelectedIndexChanged1">         
                        </asp:DropDownList>月
                        <asp:DropDownList ID="DropDownList4" runat="server">        
                        </asp:DropDownList>日
                        </td>--%>

                           <%-- <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                            年<asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                            月<asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                            日</td>--%>


                           <asp:DropDownList ID="DropDownList1" runat="server">
                               <asp:ListItem>15</asp:ListItem>
                               <asp:ListItem>16</asp:ListItem>
                               <asp:ListItem>17</asp:ListItem>
                               <asp:ListItem>18</asp:ListItem>
                               <asp:ListItem>19</asp:ListItem>
                               <asp:ListItem Selected="True">20</asp:ListItem>
                               <asp:ListItem>21</asp:ListItem>
                               <asp:ListItem>22</asp:ListItem>
                               <asp:ListItem>23</asp:ListItem>
                               <asp:ListItem>24</asp:ListItem>
                               <asp:ListItem>25</asp:ListItem>
                               <asp:ListItem>26</asp:ListItem>
                               <asp:ListItem>27</asp:ListItem>
                               <asp:ListItem>28</asp:ListItem>
                               <asp:ListItem>29</asp:ListItem>
                               <asp:ListItem>30</asp:ListItem>
                               <asp:ListItem>31</asp:ListItem>
                               <asp:ListItem>32</asp:ListItem>
                               <asp:ListItem>33</asp:ListItem>
                               <asp:ListItem>34</asp:ListItem>
                               <asp:ListItem>35</asp:ListItem>
                           </asp:DropDownList>岁


                        <td class="auto-style82">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style74"></td>
                        <td class="auto-style75">邮箱：&nbsp;&nbsp;<%-- <asp:TextBox ID="TextBox7" runat="server" Font-Size="Small" ForeColor="#999999" Height="25px" Width="185px">请输入qq邮箱地址</asp:TextBox>--%>
                         <asp:TextBox ID="TextBox7" runat="server" Font-Size="Small" Text="请输入qq邮箱地址"  Height="25px" Width="180px" Style="color: Gray"
                                        CssClass="inputcss" onfocus="cls5()" onblur="res5()">
                                        </asp:TextBox>
                                        
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox7" ErrorMessage="邮箱格式不正确！" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        
                        </td>
                        <td class="auto-style76"></td>
                    </tr>
                    <tr>
                        <td class="auto-style72">&nbsp;</td>
                        <td class="auto-style73">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button_Register" runat="server"  BackColor="#CCCCCC" BorderStyle="None" Font-Size="Medium" ForeColor="Black" Height="29px" Text="注册" Width="94px" OnClick="Button_Register_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style77">&nbsp;</td>
                    </tr>
                </table>
            </td>
          
        </tr>
        <tr>
            <td class="auto-style57" colspan="10" style="background-image: url('images/blue bottom.png')"><table class="auto-style58">
                <tr>
                    <td class="auto-style66">&nbsp;</td>
                    <td>&nbsp;软酷&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
    </body>
</html>
