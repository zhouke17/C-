<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PublicDynamic.aspx.cs" Inherits="PublicDynamic" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
    <title></title>
    <style type="text/css">
        * {
            margin: 0px;
            padding: 0px;
        }

        html, body {
            height: 100%;
            overflow: hidden;
        }

            html > body { /*-- for !IE6.0 --*/
                width: auto;
                height: auto;
                position: absolute;
                top: 0px;
                left: 0px;
                right: 0px;
                bottom: 0px;
            }

        body {
            border: 8px solid #ffffff;
            background-color: #ffffff;
            min-width: 230px;
        }

        #mainDiv {
            width: 100%;
            height: 100%;
            padding: 60px 0px 25px 0px;
        }

        #centerDiv {
            width: 100%;
            height: 100%;
            background-color: #00CCFF;
            padding-left: 158px;
        }

        #mainDiv > #centerDiv { /*-- for !IE6.0 --*/
            width: auto;
            height: auto;
            position: absolute;
            top: 56px;
            left: 0px;
            right: 16px;
            bottom: 4px;
        }

        #left {
            width: 158px;
            height: 100%;
            background: url(images/slide.jpg) repeat-y;
            position: absolute;
            left: 0px;
        }

        #lhead {
            background: url(images/left-head.jpg) left top no-repeat;
            height: 25px;
            font-size: 14px;
            color: #FF9933;
            text-align: center;
            line-height: 25px;
        }

        #right {
            width: 100%;
            height: 100%;
            background: #ffffff;
            position: absolute;
            overflow-y: auto;
            border: 1px #003366 solid;
            padding: 20px 0 0 10px;
            font-size: 12px;
            font-family: "宋体";
        }

        #centerDiv > #right {
            width: auto;
            height: auto;
            position: absolute;
            top: 0px;
            right: 0px;
            left: 158px;
            bottom: 0px;
        }

        #topDiv {
            width: 100%;
            height: 56px;
            background: url(images/head-bg.jpg) repeat-x;
            position: absolute;
            top: 0px;
            overflow: hidden;
        }
        
        #Div6 {
            width: 100%;
            height: 56px;
            background: url(images/head-bg.jpg) repeat-x;
            position: absolute;
            top: 0px;
            overflow: hidden;
        }

            #topDiv ul {
                list-style: none;
                font-size: 12px;
                width: 100%;
                margin: 0;
                padding: 0;
            }

                #topDiv ul li {
                    float: left;
                    width: 15%
                }

                    #topDiv ul li a {
                        display: block;
                        width: 100%;
                        height: 25px;
                        line-height: 25px;
                        background: url(images/menu-bg.jpg) repeat-x;
                        color: #FFFFFF;
                        direction: none;
                        text-align: center;
                        border-bottom: 1px #000066 solid;
                        border: 1px #06597D solid;
                    }

        #tmenu {
            width: 100%;
            position: absolute;
            left: 12%;
            bottom: 0;
            padding-left: 15%;
            margin-left: -15%;
        }
          #tmenu1 {
            width: 100%;
            position: absolute;
            left: 12%;
            bottom: 0;
            padding-left: 15%;
            margin-left: -15%;
        }

        #current {
            background: #ccc;
            height: 25px;
            line-height: 25px;
            margin: -20px 0 0 -10;
            overflow: hidden;
        }

        #bottomDiv {
            width: 100%;
            height: 20px;
            background: url(images/bottom.jpg) repeat-x;
            position: absolute;
            bottom: 0px;
            bottom: -1px; /*-- for IE6.0 --*/
        }

        #left ul {
            list-style: none;
            font-size: 12px;
            margin: 50px 0 0 8px;
        }

            #left ul li a {
                display: block;
                width: 140px;
                height: 25px;
                line-height: 25px;
                background: url(images/menu-bg.jpg) repeat-x;
                color: #FFFFFF;
                direction: none;
                text-align: center;
                border-bottom: 1px #000066 solid;
                border: 1px #06597D solid;
            }

                #left ul li a:hover {
                    background: url(images/menu-bg.jpg) 0px 25px;
                    color: #99FFCC;
                    direction: none;
                    text-align: center;
                    border-bottom: 1px #000066 solid;
                }

        #form {
            width: 80%;
            height: 99%;
            margin: 0 auto;
            _margin-left: 20%;
        }

        .style1 {
            text-align: center;
        }

        .style2 {
            font-size: larger;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="mainDiv">

            <div id="topDiv" class="style1" runat="server">
                <div id="tmenu">
                    <ul>
                        <li><a href="">公共动态</a></li>
                        <li><a href="PersonalDynamic.aspx">新动态</a></li>
                        <li><a href="MayKnow.aspx">找影友</a></li>
                        <li><a href="PersonalPage.aspx">个人主页</a></li>
                        <li><a href="DynamicManagement.aspx">动态管理</a></li>
                    </ul>
                </div>
                <strong><span class="style2" style="font-size: 30px">一起去看电影吧</span></strong>
            </div>
            <div id="Div6" class="style1" runat="server">
                <div id="tmenu1">      
                </div>
                <strong><span class="style2" style="font-size: 30px">
                <br />
                一起去看电影吧</span></strong>
            </div>
            <div id="centerDiv">
                <div id="left" runat="server">
                    <ul>
                        <li><a href="Login.aspx">登陆注册</a></li>
                        <br />
                        <br />
                    </ul>
                </div>
                <div id="right">
                    <div id="form">
                        <div id="content">
                            <%
                                GetCount();
                                for (int i = 0; i < fc; i++)
                                {
                                    GetContent();
                            %>

                            <div class="post_box">
                                <div class="post_meta"><strong>日期:</strong><% =pt[i].ToString() %> |</div>
                                <p><% =pc[i].ToString() %> </p>
                                <div class="cleaner_h20"></div>
                                <div class="cleaner"></div>

                            </div>
                            <% } %>
                        </div>
                        <!-- end of content -->
                    </div>
                </div>
            </div>
            <div id="bottomDiv">
                <div class="style1">
                .
                </div>
            </div>
        </div>

    </form>
</body>
</html>
