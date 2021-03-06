<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="com.dao.*,com.recommender.*,com.Bo.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	//这里是让我们的用户判断是否登录，如果没登录就自动跳转登录界面
	int loginSult = (Integer)session.getAttribute("loginResult");
	IndexBo indexBo = null;
	if(loginSult==0){
		//如果没登录就自动跳转
		response.sendRedirect("/BookShop/Login.jsp");
	}else{
		//如果登录了就把indexBo读取进来
		indexBo = (IndexBo)session.getAttribute("indexBo");
	}
%>

<html>
<head>
<title>Recommend</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Gardening Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.useso.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Niconne' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!--/script-->
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>

<script type="text/javascript">
	function jump(a){
		if(a==1){
		window.location="Recommend.jsp"; 	
		}else{
		window.location="Login.jsp"; 
		}
		
	}
</script>

</head>
<body>
	<!-- header-section-starts -->
	<div class="about-header-banner">
		<div class="container">
			<div class="home">
					<a href="index.jsp"><span class="glyphicon glyphicon-home"></span></a>
			</div>
			 
			<div class="header-top">
			<!--  
				<div class="social-icons">
					<i class="facebook"></i>
					<i class="twitter"></i>
					<i class="googlepluse"></i>
				</div>
				-->
				<span class="menu"><img src="images/nav.png" alt=""/></span>
				<div class="top-menu">
					<ul>
					<nav class="cl-effect-13">
				
						<li><a class="active" href="">Recommend</a></li>
						

						<li><a onclick="jump(<%=(Integer)session.getAttribute("loginResult") %>)">Login</a></li>
					
						<li><a onclick="jump(<% session.setAttribute("loginResult", 0);out.print((Integer)session.getAttribute("loginResult")); %>)">Logout</a></li>
					</nav>
					</ul>
				</div>
				<!-- script for menu -->
					<script> 
						$( "span.menu" ).click(function() {
						$( ".top-menu ul" ).slideToggle( 300, function() {
						 // Animation complete.
						});
						});
					</script>
				<!-- //script for menu -->
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
			<div class="banner-info text-center">
				<h1><a href="index.jsp">Recommend</a></h1>
			</div>
		</div>
	</div>
	<!-- header-section-ends -->
	<!-- content-section-starts -->
    <div class="content">
   	<div class="container">
	<div class="gallery-head" id="">
	<h3>推荐的图书</h3>
		 <div class="gallery-bottom">
					<div class="col-md-4 gallery-left">
						<a href="<%=indexBo.getClickUrlByIndex(0) %>">
							<img src="<%=indexBo.getImageUrlByIndex(0) %>" style="width:80%;height:80%" alt="<%=indexBo.getBookNameUrlByIndex(0) %>" />							
						</a>
					</div>
					<div class="col-md-4 gallery-left">
						<a href="<%=indexBo.getClickUrlByIndex(1) %>">
							<img src="<%=indexBo.getImageUrlByIndex(1) %>"  style="width:80%;height:80%" alt="<%=indexBo.getBookNameUrlByIndex(1) %>" />
						</a>
					</div>
					<div class="col-md-4 gallery-left">
						<a href="<%=indexBo.getClickUrlByIndex(2) %>">
							<img src="<%=indexBo.getImageUrlByIndex(2) %>"  style="width:80%;height:80%" alt="<%=indexBo.getBookNameUrlByIndex(2) %>" />
						</a>
					</div>
					<div class="col-md-4 gallery-left">
						<a href="<%=indexBo.getClickUrlByIndex(3) %>">
							<img src="<%=indexBo.getImageUrlByIndex(3) %>"  style="width:80%;height:80%" alt="<%=indexBo.getBookNameUrlByIndex(3) %>" />
						</a>
					</div>
					<div class="col-md-4 gallery-left">
						<a href="<%=indexBo.getClickUrlByIndex(4) %>">
							<img src="<%=indexBo.getImageUrlByIndex(4) %>"  style="width:80%;height:80%" alt="<%=indexBo.getBookNameUrlByIndex(4) %>" />
						</a>
					</div>
					<div class="col-md-4 gallery-left">
						<a href="<%=indexBo.getClickUrlByIndex(5) %>">
							<img src="<%=indexBo.getImageUrlByIndex(5) %>"  style="width:80%;height:80%" alt="<%=indexBo.getBookNameUrlByIndex(5) %>" />
						</a>
					</div>
					<div class="col-md-4 gallery-left">
						<a href="<%=indexBo.getClickUrlByIndex(6) %>">
							<img src="<%=indexBo.getImageUrlByIndex(6) %>"  style="width:80%;height:80%" alt="<%=indexBo.getBookNameUrlByIndex(6) %>" />
						</a>
					</div>
					<div class="col-md-4 gallery-left">
						<a href="<%=indexBo.getClickUrlByIndex(7) %>">
							<img src="<%=indexBo.getImageUrlByIndex(7) %>"  style="width:80%;height:80%" alt="<%=indexBo.getBookNameUrlByIndex(7) %>" />
						</a>
					</div>
					<div class="col-md-4 gallery-left">
						<a href="<%=indexBo.getClickUrlByIndex(8) %>">
							<img src="<%=indexBo.getImageUrlByIndex(8) %>"  style="width:80%;height:80%" alt="<%=indexBo.getBookNameUrlByIndex(8) %>" />
						</a>
					</div>
					<div class="clearfix"></div>
			</div>

<script src="js/jquery.chocolat.js"></script>
<link rel="stylesheet" href="css/chocolat.css" type="text/css"/>
 <!-- Javascript calls -->
	<script type="text/javascript" charset="utf-8">
		$(function() {
		 $('#portfolio a').Chocolat({overlayColor:'#000',leftImg:'images/leftw.gif',rightImg:'images/rightw.gif',closeImg:'images/closew.gif'});
	   });
</script>
	 </div>
</div>	

	</div>
   		<div class="gallery-top">
   			<div class="gallery">
		</div>
		</div>
   </div>
</div>
	<!-- content-section-ends -->
	<!--
	<div class="get-in-touch">
			<div class="container">
				<div class="col-md-3 gin">
					<h3>Get in Touch</h3>
					<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspeisse eget diam</p>
					<!-- 
					<div class="social-icons footer-icons">
						<i class="facebook"></i>
						<i class="twitter"></i>
						<i class="googlepluse"></i>
					</div>
					 -->
				</div>
				<!--
				<div class="col-md-3 address">
					<h3>Address</h3>
					<address>
						<p>10-765 mg-Road,
						<p>Washington, DC, United States,</p>
						<p>ud-19832-6578.</p>
						<p class="phone"><span>Phone</span> :+1 900 876 1234</p>
						<span class="phone">E-mail : <a href="mail-to:example@mail.com">example@mail.com</a></span>
					</address>
				</div>
				 -->
				 <!--  
				<div class="col-md-6 dal">
					<h3>Drop us a line</h3>
					<input type="text" class="text" value="First Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'First Name';}">
					<input type="text" class="text" value="Last Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Last Name';}">
					<input type="text" class="text" value="E-mail" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'E-mail';}">
					<input type="text" class="text" value="Phone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone';}">
					<textarea onfocus="if(this.value == 'Your Message') this.value='';" onblur="if(this.value == '') this.value='Your Message';" >Your Message</textarea>
					<input type="submit" value="SEND">
				</div>
				-->
				<div class="clearfix"></div>
			</div>
		</div>
		 -->
	<!-- footer-section -->
	<!--
	<div class="footer">
		<div class="container">
			<div class="copyright text-center">
				<p>Copyright &copy; 2015.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
			</div>
		</div>
	</div>
	-->
	<!-- footer-section -->
	<script type="text/javascript">
		$(document).ready(function() {
				/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
				*/
		$().UItoTop({ easingType: 'easeOutQuart' });
});
</script>
<a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!----> 

</body>
</html>