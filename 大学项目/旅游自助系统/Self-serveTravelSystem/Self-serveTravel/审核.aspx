<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="审核.aspx.cs" Inherits="Self_serveTravelSystem.Self_serveTravel.审核" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <meta name="view port" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visionary Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- css links -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/lightbox.css"> 

<link href="css/slider.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- /css links -->
<!-- font files -->
<link href="http://localhost:28905/fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
<link href="http://localhost:28905/fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,600,600i" rel="stylesheet">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 369px;
        }
        .auto-style27 {
            height: 5px;
        }
        .auto-style69 {
            height: 12px;
        }
        .auto-style149 {
            width: 75px;
            height: 5px;
        }
        .auto-style150 {
            height: 12px;
            width: 75px;
        }
        .auto-style170 {
            width: 250px;
            height: 5px;
        }
        .auto-style171 {
            height: 12px;
            width: 250px;
        }
        .auto-style172 {
            width: 269px;
            height: 5px;
        }
        .auto-style173 {
            height: 12px;
            width: 269px;
        }
        .auto-style174 {
            height: 61px;
        }
        .auto-style175 {
            height: 26px;
        }
        .auto-style181 {
            height: 35px;
            width: 250px;
        }
        .auto-style182 {
            height: 35px;
            width: 75px;
        }
        .auto-style183 {
            height: 35px;
            width: 279px;
        }
        .auto-style188 {
            height: 35px;
        }
        .auto-style189 {
            height: 26px;
            width: 313px;
        }
        .auto-style191 {
            height: 26px;
            width: 250px;
        }
        .auto-style192 {
            height: 26px;
            width: 75px;
        }
        .auto-style193 {
            height: 26px;
            width: 279px;
        }
        .auto-style194 {
            height: 26px;
            width: 244px;
        }
        .auto-style195 {
            height: 12px;
            width: 132px;
        }
        .auto-style196 {
            height: 26px;
            width: 132px;
        }
    </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
    <form id="form1" runat="server">
<!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html"><span>V</span>isionary</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li class="scroll hvr-underline-from-center"><a href="审核.aspx">审核</a></li>
				<li><a class="scroll hvr-underline-from-center" href="上传.aspx">上传</a></li>
			    <li><a class="scroll hvr-underline-from-center" href="修改.aspx">修改</a></li>
				<li><a class="scroll hvr-underline-from-center" href="注册.aspx">注册</a></li>
				<li><a class="scroll hvr-underline-from-center" href="主页.aspx">主页</a></li>	
          </ul>
        </div>
      </div>
    </nav>
<!-- /Fixed navbar -->	

	
	<!-- /services -->
	<div class="services" id="service">
		<div class="container">
			 
			
		    <table class="auto-style1">
                <tr>
                    <td class="auto-style170" rowspan="6">
                        &nbsp;</td>
                    <td class="auto-style149" rowspan="6">
                        &nbsp;</td>
                    <td class="auto-style172" colspan="3" rowspan="6">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="246px" Width="583px" AllowSorting="True">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="游客编号" HeaderText="游客编号" SortExpression="游客编号" />
                                <asp:BoundField DataField="游客姓名" HeaderText="游客姓名" SortExpression="游客姓名" />
                                <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
                                <asp:BoundField DataField="联系电话" HeaderText="联系电话" SortExpression="联系电话" />
                                <asp:BoundField DataField="公司编号" HeaderText="公司编号" SortExpression="公司编号" />
                                <asp:BoundField DataField="公司名称" HeaderText="公司名称" SortExpression="公司名称" />
                                <asp:BoundField DataField="线路编号" HeaderText="线路编号" SortExpression="线路编号" />
                                <asp:BoundField DataField="景点编号" HeaderText="景点编号" SortExpression="景点编号" />
                                <asp:BoundField DataField="景点名称" HeaderText="景点名称" SortExpression="景点名称" />
                                <asp:BoundField DataField="游览时间" HeaderText="游览时间" SortExpression="游览时间" />
                                <asp:BoundField DataField="审核结果" HeaderText="审核结果" SortExpression="审核结果" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:旅游自助系统ConnectionString %>" SelectCommand="SELECT * FROM [旅游预约表]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style172" rowspan="6">
                        &nbsp;</td>
                    <td class="auto-style172" rowspan="6">
                        &nbsp;</td>
                    <td class="auto-style27">
                        &nbsp;</td>
                    <td class="auto-style27" rowspan="6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style175">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style174">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style181">
                        </td>
                    <td class="auto-style182">
                        </td>
                    <td class="auto-style183">
                        </td>
                    <td class="auto-style188" colspan="2">
                        <asp:Button ID="Button3" runat="server" ForeColor="#0066FF" OnClick="Button3_Click" Text="审核结果" />
                    </td>
                    <td class="auto-style188">
                        &nbsp;</td>
                    <td class="auto-style188">
                        &nbsp;</td>
                    <td class="auto-style188">
                        </td>
                    <td class="auto-style188">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style191">
                        </td>
                    <td class="auto-style192">
                        </td>
                    <td class="auto-style193">
                        &nbsp;<asp:Label ID="Label1" runat="server" ForeColor="#0066FF" style="font-weight: 700" Text="游客姓名："></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="102px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style196">
                        <asp:Button ID="Button1" runat="server" ForeColor="#0066FF" Text="通过" OnClick="Button1_Click" Width="67px" />
                    </td>
                    <td class="auto-style194">
                        &nbsp;&nbsp;
                    </td>
                    <td class="auto-style189">
                    </td>
                    <td class="auto-style189">
                    </td>
                    <td class="auto-style175">
                        </td>
                    <td class="auto-style175">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style171">&nbsp;</td>
                    <td class="auto-style150">&nbsp;</td>
                    <td class="auto-style173">&nbsp;</td>
                    <td class="auto-style195">
                        <asp:Button ID="Button2" runat="server" Text="不通过" ForeColor="#0066FF" OnClick="Button2_Click" Width="65px" />
                    </td>
                    <td class="auto-style173">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style173">&nbsp;</td>
                    <td class="auto-style173">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                    <td class="auto-style69">&nbsp;</td>
                </tr>
            </table>
			 
			
		</div>
	</div>
	<!-- //services -->

<!-- js files -->
<script src="js/jquery-2.2.3.min.js"></script> 
<!-- js files  -->
<script type="text/javascript" src="js/modernizr.custom.js"></script> 
<!-- /js files -->
<script src="js/index.js"></script>
<script>
    $(document).ready(function () {
        // Add smooth scrolling to all links in navbar + footer link
        $(".navbar a, footer a[href='#myPage']").on('click', function (event) {

            // Store hash
            var hash = this.hash;

            // Using jQuery's animate() method to add smooth page scroll
            // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
            $('html, body').animate({
                scrollTop: $(hash).offset().top
            }, 900, function () {

                // Add hash (#) to URL when done scrolling (default click behavior)
                window.location.hash = hash;
            });
        });
    })
</script>
<script>
    $(window).scroll(function () {
        $(".slideanim").each(function () {
            var pos = $(this).offset().top;

            var winTop = $(window).scrollTop();
            if (pos < winTop + 600) {
                $(this).addClass("slide");
            }
        });
    });
</script>
<script src="js/lightbox-plus-jquery.min.js"> </script>

<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
        });.
    });
</script>
<!-- start-smoth-scrolling -->
	<!-- required-js-files-->
							<link href="css/owl.carousel.css" rel="stylesheet">
							    <script src="js/owl.carousel.js"></script>
							        <script>
							            $(document).ready(function () {
							                $("#owl-demo").owlCarousel({
							                    items: 1,
							                    lazyLoad: true,
							                    autoPlay: true,
							                    navigation: false,
							                    navigationText: false,
							                    pagination: true,
							                });
							            });
							    </script>
								 <!--//required-js-files-->

			<!-- search-jQuery -->
			
			<script src="js/simplePlayer.js"></script>
			<script>
			    $("document").ready(function () {
			        $("#video").simplePlayer();
			    });
			</script>


<script src="js/bootstrap.js"></script>
<!-- /js files -->
    </form>
</body>
</html>
