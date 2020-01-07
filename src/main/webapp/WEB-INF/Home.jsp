<!-- <!DOCTYPE html>
<html>
<body>

<form action="/OnlineShopping/addtocart" method="post">
<center><h4 style="color:red">${message} </h4> </center>  
Choose your favorite subject:
<button name="item" type="submit" value="shirt">shirt</button>
</form>

</body>
</html>-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>hsShopping</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="aStar Fashion Template Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="resources/styles/bootstrap-4.1.3/bootstrap.css">
<link
	href="resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
	href="resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css"
	href="resources/styles/main_styles.css">
<link rel="stylesheet" type="text/css"
	href="resources/styles/responsive.css">
<!-- newly imported css file for dropdown menus -->
<link rel="stylesheet" type="text/css"
	href="resources/styles/dropdownmenus.css">
<style type="text/css">
.itemBtn {
	width: 120px;
	height: 40px;
	background-color: #bbe432;
}
</style>

</head>
<body>
	<div class="super_container">

		<!-- Header -->
		<center>
			<h4 style="color: red">${message}</h4>
		</center>
		<header class="header">
			<div
				class="header_content d-flex flex-row align-items-center justify-content-start">
				<!-- Hamburger -->
				<div class="hamburger menu_mm">
					<i class="fa fa-bars menu_mm" aria-hidden="true"></i>
				</div>

				<!-- Logo -->
				<div class="header_logo">
					<a href="#"><div>
							hs<span>shop</span>
						</div></a>
				</div>

				<!-- Navigation -->
				<nav class="header_nav">
					<ul
						class="d-flex flex-row align-items-center justify-content-start">
						<li><a href="index.html">home</a></li>
						<li><a href="#"><button class="dropdown-btn">CLOTHES
								</a> <i class="fa fa-caret-down"></i>
							</button>
							<div class="dropdown-container">
								<a href="categories.html">Shirts</a> <a href="categories.html">Pants</a>
								<a href="categories.html">T-Shirts</a> <a href="categories.html">Jeans</a>
								<a href="categories.html">Footwear</a>
							</div></li>

						<li><a href="#"><button class="dropdown-btn">Kitchen</a>
							<i class="fa fa-caret-down"></i>
							</button>
							<div class="dropdown-container">
								<a href="categories.html">Plates</a> <a href="categories.html">Glasses</a>
								<a href="categories.html">Bowls</a> <a href="categories.html">Spoons</a>
								<a href="categories.html">Others</a>
							</div></li>

						<li><a href="#"><button class="dropdown-btn">Electronics</a>
							<i class="fa fa-caret-down"></i>
							</button>
							<div class="dropdown-container">
								<a href="categories.html">Mobiles</a> <a href="categories.html">Laptops</a>
								<a href="categories.html">Tvs</a> <a href="categories.html">Watches</a>
								<a href="categories.html">Others</a>
							</div></li>

						<li><a href="#">contact</a></li>
					</ul>
				</nav>

				<!-- Cart -->
				<div
					class="cart d-flex flex-row align-items-center justify-content-start">
					<div class="cart_icon">
						<a href="cart.html"> <img src="images/bag.png" alt="img">
							<div class="cart_num"></div>
						</a>
					</div>
				</div>

			</div>
		</header>

		<!-- Menu -->

		<div
			class="menu d-flex flex-column align-items-start justify-content-start menu_mm trans_400">
			<div class="menu_close_container">
				<div class="menu_close">
					<div></div>
					<div></div>
				</div>
			</div>
			<div
				class="menu_top d-flex flex-row align-items-center justify-content-start">

			</div>
			<nav class="menu_nav">
				<ul class="menu_mm">
					<li class="menu_mm"><a href="index.html">home</a></li>
					<li class="menu_mm"><a href="#"><button
								class="dropdown-btn">CLOTHES</a> <i
						class="fa fa-caret-down"></i>
						</button>
						<div class="dropdown-container">
							<a href="categories.html">Shirts</a> <a href="categories.html">Pants</a>
							<a href="categories.html">T-Shirts</a> <a href="categories.html">Jeans</a>
							<a href="categories.html">Footwear</a>
						</div></li>

					<li class="menu_mm"><a href="#"><button
								class="dropdown-btn">Kitchen</a> <i
						class="fa fa-caret-down"></i>
						</button>
						<div class="dropdown-container">
							<a href="categories.html">Plates</a> <a href="categories.html">Glasses</a>
							<a href="categories.html">Bowls</a> <a href="categories.html">Spoons</a>
							<a href="categories.html">Others</a>
						</div></li>

					<li class="menu_mm"><a href="#"><button
								class="dropdown-btn">Electronics</a> <i
						class="fa fa-caret-down"></i>
						</button>
						<div class="dropdown-container">
							<a href="categories.html">Mobiles</a> <a href="categories.html">Laptops</a>
							<a href="categories.html">Tvs</a> <a href="categories.html">Watches</a>
							<a href="categories.html">Others</a>
						</div></li>

					<li class="menu_mm"><a href="contact.html">contact</a></li>
				</ul>
			</nav>
		</div>

		<!-- Sidebar -->

		<div class="sidebar">

			<!-- Logo -->
			<div class="sidebar_logo">
				<a href="#"><div>
						hs<span>shop</span>
					</div></a>
			</div>

			<!-- Sidebar Navigation -->
			<nav class="sidebar_nav">
				<ul>
					<li><a href="index.html">home<i class="fa fa-angle-right"
							aria-hidden="true"></i></a></li>
					<li><a href="#"><button class="dropdown-btn">CLOTHES
							</a> <i class="fa fa-caret-down"></i>
						</button>
						<div class="dropdown-container">
							<a href="categories.html">Shirts</a> <a href="categories.html">Pants</a>
							<a href="categories.html">T-Shirts</a> <a href="categories.html">Jeans</a>
							<a href="categories.html">Footwear</a>
						</div></li>

					<li><a href="#"><button class="dropdown-btn">Kitchen</a>
						<i class="fa fa-caret-down"></i>
						</button>
						<div class="dropdown-container">
							<a href="categories.html">Plates</a> <a href="categories.html">Glasses</a>
							<a href="categories.html">Bowls</a> <a href="categories.html">Spoons</a>
							<a href="categories.html">Others</a>
						</div></li>

					<li><a href="#"><button class="dropdown-btn">Electronics</a>
						<i class="fa fa-caret-down"></i>
						</button>
						<div class="dropdown-container">
							<a href="categories.html">Mobiles</a> <a href="categories.html">Laptops</a>
							<a href="categories.html">Tvs</a> <a href="categories.html">Watches</a>
							<a href="categories.html">Others</a>
						</div></li>

					<li><a href="#">contact<i class="fa fa-angle-right"
							aria-hidden="true"></i></a></li>
				</ul>
			</nav>


			<!-- Cart -->
			<div
				class="cart d-flex flex-row align-items-center justify-content-start">
				<div class="cart_icon">
					<a href="/OnlineShopping/cart"> <img
						src="resources/images/bag.png" alt="">
						<div class="cart_num"></div>
					</a>
				</div>
				<div class="cart_text">bagTotal:</div>
				<div class="cart_price"></div>
			</div>
		</div>

		<!-- Home -->

		<div class="home">

			<!-- Home Slider -->
			<div class="home_slider_container">
				<div class="owl-carousel owl-theme home_slider">

					<!-- Slide -->
					<div class="owl-item">
						<div class="background_image"
							style="background-image:url(${pageContext.request.contextPath}/resources/images/home_slider_1.jpg)"
							alt="img"></div>
						<div class="home_content_container">
							<div class="home_content">
								<div
									class="home_discount d-flex flex-row align-items-end justify-content-start">
									<div class="home_discount_num">50</div>
									<div class="home_discount_text">Discount on the</div>
								</div>
								<div class="home_title">New Collection</div>
							</div>
						</div>
					</div>

					<!-- Slide -->
					<div class="owl-item">
						<div class="background_image"
							style="background-image:url(${pageContext.request.contextPath}/resources/images/home_slider_1.jpg)"></div>
						<div class="home_content_container">
							<div class="home_content">
								<div
									class="home_discount d-flex flex-row align-items-end justify-content-start">
									<div class="home_discount_num">50</div>
									<div class="home_discount_text">Discount on the</div>
								</div>
								<div class="home_title">New Collection</div>
								<div class="button button_1 home_button trans_200">
									<a href="categories.html">Shop NOW!</a>
								</div>
							</div>
						</div>
					</div>

					<!-- Slide -->
					<div class="owl-item">
						<div class="background_image"
							style="background-image:url(${pageContext.request.contextPath}/resources/images/home_slider_1.jpg)"></div>
						<div class="home_content_container">
							<div class="home_content">
								<div
									class="home_discount d-flex flex-row align-items-end justify-content-start">
									<div class="home_discount_num">50</div>
									<div class="home_discount_text">Discount on the</div>
								</div>
								<div class="home_title">New Collection</div>
								<div class="button button_1 home_button trans_200">
									<a href="categories.html">Shop NOW!</a>
								</div>
							</div>
						</div>
					</div>

				</div>

				<!-- Home Slider Navigation -->
				<div class="home_slider_nav home_slider_prev trans_200">
					<div
						class=" d-flex flex-column align-items-center justify-content-center">
						<img style="background-color: green"
							src="resources/images/prev.png" alt="">
					</div>
				</div>
				<div class="home_slider_nav home_slider_next trans_200">
					<div
						class=" d-flex flex-column align-items-center justify-content-center">
						<img style="background-color: green"
							src="resources/images/next.png" alt="">
					</div>
				</div>

			</div>
		</div>

		<!-- Boxes -->

		<div class="boxes">
			<div class="section_container">
				<div class="container">
					<div class="row">

						<!-- Box -->
						<div class="col-lg-4 box_col">
							<div class="box">
								<div class="box_image">
									<img src="resources/images/box_1.jpg" alt="">
								</div>
								<div class="box_title trans_200">
									<a href="categories.html">summer collection</a>
								</div>
							</div>
						</div>

						<!-- Box -->
						<div class="col-lg-4 box_col">
							<div class="box">
								<div class="box_image">
									<img src="resources/images/box_2.jpg" alt="">
								</div>
								<div class="box_title trans_200">
									<a href="categories.html">eyewear collection</a>
								</div>
							</div>
						</div>

						<!-- Box -->
						<div class="col-lg-4 box_col">
							<div class="box">
								<div class="box_image">
									<img src="resources/images/box_3.jpg" alt="">
								</div>
								<div class="box_title trans_200">
									<a href="categories.html">basic pieces</a>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>

		<!-- Categories -->

		<div class="categories">
			<div class="section_container">
				<div class="container">
					<div class="row">
						<div class="col text-center">
							<div class="categories_list_container">
								<ul
									class="categories_list d-flex flex-row align-items-center justify-content-start">
									<li><a href="categories.html">new arrivals</a></li>
									<li><a href="categories.html">recommended</a></li>
									<li><a href="categories.html">best sellers</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Products -->
		<!-- Form start -->


		<div class="products">
			<div class="section_container">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="products_container grid">


								<!-- Product -->
								<form action="/OnlineShopping/addtocart" method=post>
									<div class="product grid-item hot">
										<div class="product_inner">
											<div class="product_image">
												<img src="resources/images/product_1.jpg" alt="">
												<div class="product_tag">hot</div>
											</div>
											<div class="product_content text-center">
												<div class="product_title">
													<a href="product.html">jeans</a>
												</div>
												<div class="product_price">&#x20B9;500</div>
												<button class="itemBtn" onclick="addedToCart()" name="item"
													type="submit" value="jeans">add to cart</button>
											</div>
										</div>
									</div>

									<!-- Product -->
									<div class="product grid-item">
										<div class="product_inner">
											<div class="product_image">
												<img src="resources/images/product_2.jpg" alt="shirt">
											</div>
											<div class="product_content text-center">
												<div class="product_title">
													<a href="product.html">women slipper</a>
												</div>
												<div class="product_price">&#x20B9;150</div>
												<button class="itemBtn" onclick="addedToCart()" name="item"
													type="submit" value="slipper">add to cart</button>

											</div>
										</div>
									</div>

									<!-- Product -->
									<div class="product grid-item sale">
										<div class="product_inner">
											<div class="product_image">
												<img src="resources/images/product_3.jpg" alt="">
												<div class="product_tag">sale</div>
											</div>
											<div class="product_content text-center">
												<div class="product_title">
													<a href="product.html">jacket</a>
												</div>
												<div class="product_price">&#x20B9;100</div>
												<button class="itemBtn" onclick="addedToCart()" name="item"
													type="submit" value="jacket">add to cart</button>
											</div>
										</div>
									</div>

									<!-- Product -->
									<div class="product grid-item">
										<div class="product_inner">
											<div class="product_image">
												<img src="resources/images/product_4.jpg" alt="">
											</div>
											<div class="product_content text-center">
												<div class="product_title">
													<a href="product.html">hand bag</a>
												</div>
												<div class="product_price">&#x20B9;300</div>
												<button class="itemBtn" onclick="addedToCart()" name="item"
													type="submit" value="bag">add to cart</button>
											</div>
										</div>
									</div>

									<!-- Product -->

									<div class="product grid-item">
										<div class="product_inner">
											<div class="product_image">
												<img src="resources/images/product_5.jpg" alt="">
											</div>
											<div class="product_content text-center">
												<div class="product_title">
													<a href="product.html">shoe</a>
												</div>
												<div class="product_price">&#x20B9;500</div>
												<button class="itemBtn" onclick="addedToCart()" name="item"
													type="submit" value="shoe">add to cart</button>
											</div>
										</div>
									</div>

									<!-- Product -->
									<div class="product grid-item new">
										<div class="product_inner">
											<div class="product_image">
												<img src="resources/images/product_6.jpg" alt="">
												<div class="product_tag">new</div>
											</div>
											<div class="product_content text-center">
												<div class="product_title">
													<a href="product.html">carry bag</a>
												</div>
												<div class="product_price">&#x20B9;250</div>
												<button class="itemBtn" onclick="addedToCart()" name="item"
													type="submit" value="carry_bag">add to cart</button>
											</div>
										</div>
									</div>

									<!-- Product -->
									<div class="product grid-item">
										<div class="product_inner">
											<div class="product_image">
												<img src="resources/images/product_7.jpg" alt="">
											</div>
											<div class="product_content text-center">
												<div class="product_title">
													<a href="product.html">jeans</a>
												</div>
												<div class="product_price">&#x20B9;400</div>
												<button class="itemBtn" onclick="addedToCart()" name="item"
													type="submit" value="jeans1">add to cart</button>
											</div>
										</div>
									</div>

									<!-- Product -->
									<div class="product grid-item sale">
										<div class="product_inner">
											<div class="product_image">
												<img src="resources/images/product_8.jpg" alt="">
												<div class="product_tag">sale</div>
											</div>
											<div class="product_content text-center">
												<div class="product_title">
													<a href="product.html">Top</a>
												</div>
												<div class="product_price">
													&#x20B9;10
												</div>
												<button class="itemBtn" onclick="addedToCart()" name="item"
													type="submit" value="top">add to cart</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Newsletter-->

		<div class="newsletter">
			<div class="parallax_background parallax-window"
				data-parallax="scroll"
				data-image-src="resources/images/newsletter.jpg" data-speed="0.8"></div>
			<div class="container">
				<div class="row">
					<div class="col-lg-8 offset-lg-2">
						<div class="newsletter_content text-center">
							<div class="newsletter_title_container">
								<div class="newsletter_title">subscribe to get our free
									products</div>
								<div class="newsletter_subtitle">we won't spam, we
									promise!</div>
							</div>
							<div class="newsletter_form_container">
								<form action="#" id="newsletter_form" class="newsletter_form">
									<input type="email" class="newsletter_input"
										placeholder="your e-mail here" required="required">
									<button class="newsletter_button">submit</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Footer -->

		<footer class="footer">
			<div class="footer_content">
				<div class="section_container">
					<div class="container">
						<div class="row">

							<!-- About -->
							<div class="col-xxl-3 col-md-6 footer_col">
								<div class="footer_about">
									<!-- Logo -->
									<div class="footer_logo">
										<a href="#"><div>
												hs<span>shop</span>
											</div></a>
									</div>
								</div>
							</div>
						</div>
						<br />
						<div class="row">

							<!-- Blog -->
							<div class="col-xxl-5 col-md-6 footer_col">

								<div class="footer_blog">
									<div class="footer_title">blog</div>
									<div class="footer_blog_container">

										<!-- Blog Item -->
										<div
											class="footer_blog_item d-flex flex-row align-items-start justify-content-start">
											<div class="footer_blog_image">
												<a href="blog.html"><img
													src="resources/images/footer_blog_1.jpg" alt=""></a>
											</div>
											<div class="footer_blog_content">
												<div class="footer_blog_title">
													<a href="blog.html">what shoes to wear</a>
												</div>
												<div class="footer_blog_date">june 06, 2018</div>
												<div class="footer_blog_link">
													<a href="blog.html">Read More</a>
												</div>
											</div>
										</div>

										<!-- Blog Item -->
										<div
											class="footer_blog_item d-flex flex-row align-items-start justify-content-start">
											<div class="footer_blog_image">
												<a href="blog.html"><img
													src="resources/images/footer_blog_2.jpg" alt=""></a>
											</div>
											<div class="footer_blog_content">
												<div class="footer_blog_title">
													<a href="blog.html">trends this year</a>
												</div>
												<div class="footer_blog_date">june 06, 2018</div>
												<div class="footer_blog_link">
													<a href="blog.html">Read More</a>
												</div>
											</div>
										</div>

									</div>
								</div>
							</div>

							<!-- Contact -->
							<div class="col-xxl-3 col-md-6 footer_col">
								<div class="footer_contact">
									<div class="footer_title">contact</div>
									<div class="footer_contact_list">
										<ul>
											<li
												class="d-flex flex-row align-items-start justify-content-start"><span>C.</span>
												<div>Healthsignz Technologies Pvt Ltd</div></li>
											<li
												class="d-flex flex-row align-items-start justify-content-start"><span>A.</span>
												<div>HSR Layout</div></li>
											<li
												class="d-flex flex-row align-items-start justify-content-start"><span>T.</span>
												<div>+91 1234567890</div></li>
											<li
												class="d-flex flex-row align-items-start justify-content-start"><span>E.</span>
												<div>kc@hs.com</div></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>



			<!-- Credits -->
			<div class="credits">
				<div class="section_container">
					<div class="container">
						<div class="row">
							<div class="col">
								<div
									class="credits_content d-flex flex-row align-items-center justify-content-end">
									<div class="credits_text">
										Copyright &copy;
										<script>
											document.write(new Date()
													.getFullYear());
										</script>
										All rights reserved | This <u><b>hsShop</b></u> is made by <a
											href="#" target="_blank">Kishore & Chinna</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>


	<!-- function added to cart script -->
	<script>
		function addedToCart() {
			alert("Item added into Cart!");
		}
	</script>

	<!--dropdown menu -->
	<script>
		var dropdown = document.getElementsByClassName("dropdown-btn");
		var i;

		for (i = 0; i < dropdown.length; i++) {
			dropdown[i].addEventListener("click", function() {
				this.classList.toggle("active");
				var dropdownContent = this.nextElementSibling;
				if (dropdownContent.style.display === "block") {
					dropdownContent.style.display = "none";
				} else {
					dropdownContent.style.display = "block";
				}
			});
		}
	</script>
	<script src="resources/js/jquery-3.2.1.min.js"></script>
	<script src="resources/styles/bootstrap-4.1.3/popper.js"></script>
	<script src="resources/styles/bootstrap-4.1.3/bootstrap.min.js"></script>
	<script src="resources/plugins/greensock/TweenMax.min.js"></script>
	<script src="resources/plugins/greensock/TimelineMax.min.js"></script>
	<script src="resources/plugins/scrollmagic/ScrollMagic.min.js"></script>
	<script src="resources/plugins/greensock/animation.gsap.min.js"></script>
	<script src="resources/plugins/greensock/ScrollToPlugin.min.js"></script>
	<script src="resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="resources/plugins/easing/easing.js"></script>
	<script src="resources/plugins/parallax-js-master/parallax.min.js"></script>
	<script src="resources/plugins/Isotope/isotope.pkgd.min.js"></script>
	<script src="resources/plugins/Isotope/fitcolumns.js"></script>
	<script src="resources/js/custom.js"></script>
</body>
</html>