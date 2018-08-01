<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="主页.aspx.cs" Inherits="Self_serveTravelSystem.Self_serveTravel.主页" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
<!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html"><span>T</span>ravel</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li class="scroll hvr-underline-from-center"><a href="index.html">主页</a></li>
			    <li><a class="scroll hvr-underline-from-center" href="旅游公司主页.aspx">旅游公司主页</a></li>
				<li><a class="scroll hvr-underline-from-center" href="#team">旅游路线</a></li>

				<li><a class="scroll hvr-underline-from-center" href="#portfolio">Portfolio</a></li>
			
				<li><a class="hvr-underline-from-center" href="#contact">Contact</a></li>
          </ul>
        </div>
      </div>
    </nav>
<!-- /Fixed navbar -->	
<!-- /banner -->
<div class="banner">
	<div class="slider">
  <div class="slider__slide slider__slide--active" data-slide="1">
    <div class="slider__wrap">
      <div class="slider__back"></div>
    </div>
    <div class="slider__inner">
      <div class="slider__content">
        <h3>阳光明媚   <br> 何不外出郊游 </h3><a class="go-to-next">next</a>
		
      </div>
    </div>
  </div>
  <div class="slider__slide" data-slide="2">
    <div class="slider__wrap">
      <div class="slider__back"></div>
    </div>
    <div class="slider__inner">
      <div class="slider__content">
       <h3>更合理的旅游路线  <br> 更便捷的旅游服务</h3><a class="go-to-next">next</a>
	   
      </div>
    </div>
  </div>
  <div class="slider__slide" data-slide="3">
    <div class="slider__wrap">
      <div class="slider__back"></div>
    </div>
    <div class="slider__inner">
      <div class="slider__content">
        <h3>更优美的风景  <br>更广阔的天地 </h3><a class="go-to-next">next</a>
		
      </div>
    </div>
  </div>
  <div class="slider__indicators"></div>
		
	</div>	
</div>
<!-- //banner -->
	
	<!-- /services -->
	<div class="services" id="service">

		</div>
	</div>
	<!-- //services -->

<a href="#myPage" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

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
        });
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
</body>
</html>