<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="com.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%   Dao dao = new Dao(); 
  // session.setAttribute("loginResult", new Integer(1));

%>
<html>
<head>
<title>Home</title>
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

<script type="text/javascript">
	function tiaozhuan(a){
		window.location="just.jsp?a="+a;  
	}
</script>
 
</head>
<body>
	<!-- header-section-starts -->
	<div class="header-banner">
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
						<!--  我们把判断的结果放进loginResult并且存进session然后onclick的时候传参，用js进行判断-->
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
				<h1><a href="index.jsp">SCNU-bookShop</a></h1>  
			</div>
			<div class="header-bottom-grids text-center">
				<div class="header-bottom-grid1">
				
				
					<span class="glyphicon glyphicon-leaf"><img src="images/t4.jpg"  style="width:80%;height:80%"/></span>					
					<h4  onclick="tiaozhuan(<%= dao.tyrString %>)"><!--要修改的文本--> Dry </h4>
				</div>
				<div class="header-bottom-grid2">
					<span class="glyphicon glyphicon-certificate"><img src="images/t5.jpg" style="width:80%;height:80%" /></span>
					<h4>READ MORE BOOKS</h4>
				</div>
				<div class="header-bottom-grid3">
					<span class="glyphicon glyphicon-tree-deciduous"><img src="images/t6.jpg" style="width:80%;height:80%" /></span>
					<h4>YUN PIAO</h4>
				</div>
				<div class="header-bottom-grid4">
					<span class="glyphicon glyphicon-screenshot"><img src="images/t7.jpg" style="width:80%;height:80%" /></span>
					<h4>SELLING</h4>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- header-section-ends -->
	<!-- content-section-starts -->
	<div class="services">
		<div class="container">
			<div class="services-top-grids text-center">
				<div class="secvice-top-grid-1">
				<!--这里修改文字-->
				
					<h3>阿根廷斯特朗-著</h3>
					<p>很多年过去了，两个可爱的孩子已经长大成人，哈利依然继续奔波在美丽的约克郡乡间。
爱吃薯条的小胖狗，对哈利冷若冰霜的流浪猫，还有让他在音乐会上如坐针毡的跳蚤们……</p>
					<div class="icon1">
						<i class="icon1"></i>
					</div>
				</div>
				<div class="secvice-top-grid-2">
					<h3>马迪-著</h3>
					<p>这是一个构思了42年的故事。
这是一个仅用12天就写成的故事。
这是一个让数亿读者感动落泪的故事。
这是一部有着相当自传性质的儿童小说，作家精确地“摹拟”一个五岁男孩的口吻，记录了一段温馨而伤感的生活片断。</p>
					<div class="icon1">
						<i class="icon2"></i>
					</div>
				</div>
				<div class="secvice-top-grid-3">
					<h3>叶政委-著</h3>
					<p>自1997年初版以来，《云漂》一直是全世界编剧的第一必读经典，至今，仍属于美国亚马逊最畅销图书中的Top 1%。集结了罗伯特?麦基30年的授课经验</p>
					<div class="icon1">
						<i class="icon3"></i>
					</div>
				</div>
				<div class="secvice-top-grid-4">
					<h3>孙伟-著</h3>
					<p>毛主席一生与名山有缘,此次登临最大的感受是毛主席其实也是个营销奇才,所谓“二流企业卖产品,一流企业卖思想”所谓“二流企业卖产品,一流企业卖思想”,毛泽东思想的很多精华</p>
					<div class="icon1">
						<i class="icon4"></i>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="services-bottom-grids">
				<div class="col-md-3 services-bottom-left">
					<img src="images/s1.jpg" alt="" />
				</div>
				<div class="col-md-6 services-bottom-middle text-center">
					<h3>杂志封面推荐</h3>
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>
				</div>
				<div class="col-md-3 services-bottom-right">
					<img src="images/s2.jpg" alt="" />
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--  
	<div class="items">
		<div class="container">
			<div class="col-md-4 item-1">
				<img src="images/i1.jpg" alt="" />
				<h3>Duis autem vel eum</h3>
			</div>
			<div class="col-md-4 item-2">
				<img src="images/i2.jpg" alt="" />
				<h3>Duis autem vel eum</h3>
			</div>
			<div class="col-md-4 item-3 text-center">
				<h4>Claritas est etiam processus dynamicus</h4>
				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	-->
			<!-- testimonials -->
	<div class="testimonials">
		<div class="container">
			<div class="testimonial-info">
				<h3>名言警句 </h3>
				<h5>Cras porttitor imperdiet volutpat nulla malesuada lectus eros <span>ut convallis felis consectetur ut </span></h5>
			</div>
			<div class="testimonial-grids">
				<div class="testimonial-grid">
					<p><span>"</span> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fermentum iaculis diam quis sodales. Vestibulum eu dui tellus. In viverra porttitor auctor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas<span> "</span></p>
				</div>
			</div>
		</div>
	</div>
	<!-- //testimonials -->
    <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >手机网站模板</a></div>
	<!-- news -->
	<div class="news" id="news">
		<div class="container">
			<div class="news-text">
				<h3>新闻</h3>
				<h5>关注文学时事热评<span>news on literature </span></h5>
			</div>
			<div class="news-grids">
				<div class="col-md-3 news-grid wow bounceIn animated" data-wow-delay="0.4s" style="visibility: visible; -webkit-animation-delay: 0.4s;">
					<a href="single.html">作家被放大解读 文学无标准答案</a>
					<span>8.00 - 10.00 | JUN 09,2014</span>
					<a class="mask" href="single.html"><img src="images/img1.jpg" class="img-responsive zoom-img" alt="" /></a>
					<div class="news-info">
						<p>“很多事情我在写的时候并没有想象，他们来问我，(我)发现问题好深奥，如果不承认(这层意思)显得我很浅薄，如果说实话大家会很失望</p>
						<a class="button" href="single.html"><img src="images/read.png" alt=""></a>
					</div>
				</div>
				<div class="col-md-3 news-grid wow bounceIn animated" data-wow-delay="0.4s" style="visibility: visible; -webkit-animation-delay: 0.4s;">
					<a href="single.html">35位现代文化名人“亮相”国博</a>
					<span>10.00 - 12.00 | SEP 24,2014</span>
					<a class="mask" href="single.html"><img src="images/img2.jpg" class="img-responsive zoom-img" alt="" /></a>
					<div class="news-info">
						<p>国家博物馆精心打造的“中国现代文化名人蜡像艺术展”首次亮相，35位现代文化名人走出厚重历史，鲜活地“站”在大家眼前。</p>
						<a class="button" href="single.html"><img src="images/read.png" alt=""></a>
					</div>
				</div>
				<div class="col-md-3 news-grid wow bounceIn animated" data-wow-delay="0.4s" style="visibility: visible; -webkit-animation-delay: 0.4s;">
					<a href="single.html">贾平凹谈创作过程</a>
					<span>9.00 - 10.00 | FEB 15,2014</span>
					<a class="mask" href="single.html"><img src="images/img3.jpg" class="img-responsive zoom-img" alt="" /></a>
					<div class="news-info">
						<p>贾平凹说：“写完《古炉》后，我曾经结识了山区一位乡镇干部，她不知从哪儿获得了我的手机号，先是给我发短信，我以为她是一位业余作者</p>
						<a class="button" href="single.html"><img src="images/read.png" alt=""></a>
					</div>
				</div>
				<div class="col-md-3 news-grid wow bounceIn animated" data-wow-delay="0.4s" style="visibility: visible; -webkit-animation-delay: 0.4s;">
					<a href="single.html">白描谈《秘境》</a>
					<span>11.00 - 10.00 | JUN 10,2014</span>
					<a class="mask" href="single.html"><img src="images/img4.jpg" class="img-responsive zoom-img" alt="" /></a>
					<div class="news-info">
						<p>白描的新书为我们描绘了现实社会的众生相，围绕‘玉’，他写了各色人物、见闻。我想，只有对玉爱到了骨缝里，才能写出这样的文章.</p>
						<a class="button" href="single.html"><img src="images/read.png" alt=""></a>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //news -->
	<!-- content-section-ends -->
	<!-- 
	<div class="get-in-touch">
			<div class="container">
				<div class="col-md-3 gin">
					<h3>Get in Touch</h3>
					<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspeisse eget diam</p>
					<div class="social-icons footer-icons">
						<i class="facebook"></i>
						<i class="twitter"></i>
						<i class="googlepluse"></i>
					</div>
					<div class="clearfix"></div>
				</div>
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
				<div class="col-md-6 dal">
					<h3>Drop us a line</h3>
					<input type="text" class="text" value="First Name" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'First Name';}">
					<input type="text" class="text" value="Last Name" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Last Name';}">
					<input type="text" class="text" value="E-mail" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'E-mail';}">
					<input type="text" class="text" value="Phone" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Phone';}">
					<textarea onFocus="if(this.value == 'Your Message') this.value='';" onBlur="if(this.value == '') this.value='Your Message';" >Your Message</textarea>
					<input type="submit" value="SEND">
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	<!-- footer-section -->
	 -->
	<div class="footer">
		<div class="container">
			<div class="copyright text-center">
				<p>欢迎来到华师网上商城 </p>
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