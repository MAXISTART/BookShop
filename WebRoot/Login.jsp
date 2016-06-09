<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   import="com.dao.*,com.recommender.*,com.Bo.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	int loginResult = (Integer)session.getAttribute("loginResult");
	System.out.println((Integer)session.getAttribute("ifUserError")+"");
	System.out.println("我的loginresult是"+loginResult+"");
	if(loginResult==1){
		session.setAttribute("Login_msg","你已经登录成功，请勿重复登录");
		System.out.println("我的Login_msg是"+session.getAttribute("Login_msg")+"");
		response.sendRedirect("/BookShop/Recommend.jsp");
	}else{
//		if((Integer)session.getAttribute("ifUserError")!=null || (Integer)session.getAttribute("ifUserError")==0){
//			System.out.println("我的ifUserError是"+(Integer)session.getAttribute("ifUserError")+"");
//			session.setAttribute("Login_msg","请登录");
//		}else{
//			session.setAttribute("Login_msg","你所输入的用户名不存在或者不存在相似用户");
//		}							
	}
%>


<html>
<head>
<title>Login</title>
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
	function loginConfirm(){
		
	}
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
						
						<li><a onclick="jump(<%=(Integer)session.getAttribute("loginResult") %>)">Recommend</a></li>
						
						
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
				<h1><a href="index.jsp">Login</a></h1>
			</div>
		</div>
	</div>
	<!-- header-section-ends -->
	 <!---start-content---->
		    <div class="contact_desc">
		        <div class="container">
			         <div class="contact-form">
				  	   <h2><%=session.getAttribute("Login_msg")%></h2>
					     <form method="post" action="doLogin" class="left_form">
					    	<div>
						    	<span><label>NAME</label></span>
						    	<span><input name="userName" type="text" class="textbox"></span>
						    </div>
						    <div>
						    	<span><label>PASSWORD</label></span>
						    	<span><input name="userEmail" type="password" class="textbox"></span>
						    </div>
						    <input type="submit" value="登录" class="myButton">

					    </form>
					    
					    <form class="right_form">
					    <!--  
					        <div>					    	
						    	<span><label>SUBJECT</label></span>
						    	<span><textarea name="userMsg"> </textarea></span>
						    </div>
						     -->
						   <div>
						   		<!-- <span><input type="submit" value="登录" class="myButton"></span> -->
						  </div>
					    </form>
					   
					    <div class="clearfix"></div>
				  </div>
				 <div class="content_bottom">
				 <!--
				 	<div class="company_address">
				     	<h3>Location</h3>
						    	<p>500 Lorem Ipsum Dolor Sit,</p>
						   		<p>22-56-2-9 Sit Amet, Lorem,</p>
						   		<p>USA</p>
				   		<p>Phone:(00) 222 666 444</p>
				   		<p>Fax: (000) 000 00 00 0</p>
				 	 	<p>Email: <span><a href="mailto:info@mycompany.com">info(at)mycompany.com</a></span></p>
				   		<p>Follow on: <span><a href="#">Facebook</a></span>, <span><a href="#">Twitter</a></span></p>
				     </div>
					 -->
					 <!--
				       <div class="contact_info">
    	 				<h3>Find Us Here</h3>
					    	  <div class="map">
							   	    <iframe width="100%" height="185" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265&amp;output=embed"></iframe><br><small><a href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265" style="color:#8C8061;text-align:left;font-size:1em">View Larger Map</a></small>
							  </div>
      				     </div>
						 -->
				      <div class="clearfix"></div>
	                </div>	
	             </div>  
	          </div>
	<!-- footer-section -->
	<div class="footer">
		<div class="container">
			<div class="copyright text-center">
				<p>华师网上书店</p>
			</div>
		</div>
	</div>
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