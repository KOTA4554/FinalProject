<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>main page</title>

		<!-- Google font -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css"/>

		<!-- Slick -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/slick.css"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/slick-theme.css"/>

		<!-- nouislider -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/nouislider.min.css"/>

		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css"/>

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/common.css"/>
		
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
		
		<!-- datepicker 사용 sources -->
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
</head>
		<!-- HEADER -->
		<header>
			<!-- TOP HEADER -->
			<div id="top-header">
				<div class="container">
					<ul class="header-links pull-right">
					<c:if test="${empty seller}">
						<li><a href="${pageContext.request.contextPath}/member/memberLogin.do"><i class="fas fa-key"></i> 로그인</a></li>
						<li><a href="${pageContext.request.contextPath}/member/memberSignUp.do"><i class="fa fa-user-o"></i> 회원가입</a></li>
					</c:if>
		   			<c:if test="${!empty seller}">
		   				<li><i class="fa fa-user-o"></i><a>(seller) ${seller.sellerId} 님 안녕하세요.</a></li>
		   				<li><i class="fas fa-sign-out-alt"></i><a href="${pageContext.request.contextPath}/member/logout.do">로그아웃</a></li>
		   			</c:if>
					</ul>
				</div>
			</div>
			<!-- /TOP HEADER -->

			<!-- MAIN HEADER -->
			<c:if test="${empty seller}">
			<div id="header">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<!-- LOGO -->
						<div class="col-md-3">
							<div class="header-logo">
								<a href="#" class="logo">
									<img src="${pageContext.request.contextPath}/resources/img/logo.png" alt="">
								</a>
							</div>
						</div>
						<!-- /LOGO -->

						<!-- SEARCH BAR -->
						<div class="col-md-6">
							<div class="header-search">
								<form>
									<input class="input" placeholder="검색어를 입력하세요.">
									<button class="search-btn">Search</button>
								</form>
							</div>
						</div>
						<!-- /SEARCH BAR -->

						<!-- ACCOUNT -->
						<div class="col-md-3 clearfix">
							<div class="header-ctn">
								<!-- Wishlist -->
								<div>
									<a href="#">
										<i class="fas fa-user"></i>
										<span>My Page</span>
										<!-- <div class="qty">2</div> -->
									</a>
								</div>
								<!-- /Wishlist -->

								<!-- Cart -->
								<div class="dropdown">
									<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
										<i class="fa fa-shopping-cart"></i>
										<span>Cart</span>
										<div class="qty">3</div>
									</a>
									<div class="cart-dropdown">
										<div class="cart-list">
											<div class="product-widget">
												<div class="product-img">
													<img src="${pageContext.request.contextPath }/resources/img/product01.png" alt="">
												</div>
												<div class="product-body">
													<h3 class="product-name"><a href="#">product name goes here</a></h3>
													<h4 class="product-price"><span class="qty">1x</span>$980.00</h4>
												</div>
												<button class="delete"><i class="fa fa-close"></i></button>
											</div>

											<div class="product-widget">
												<div class="product-img">
													<img src="${pageContext.request.contextPath }/resources/img/product02.png" alt="">
												</div>
												<div class="product-body">
													<h3 class="product-name"><a href="#">product name goes here</a></h3>
													<h4 class="product-price"><span class="qty">3x</span>$980.00</h4>
												</div>
												<button class="delete"><i class="fa fa-close"></i></button>
											</div>
										</div>
										<div class="cart-summary">
											<small>3 Item(s) selected</small>
											<h5>SUBTOTAL: $2940.00</h5>
										</div>
										<div class="cart-btns">
											<a href="#">View Cart</a>
											<a href="#">Checkout  <i class="fa fa-arrow-circle-right"></i></a>
										</div>
									</div>
								</div>
								<!-- /Cart -->

								<!-- Menu Toogle -->
								<div class="menu-toggle">
									<a href="#">
										<i class="fa fa-bars"></i>
										<span>Menu</span>
									</a>
								</div>
								<!-- /Menu Toogle -->
							</div>
						</div>
						<!-- /ACCOUNT -->
					</div>
					<!-- row -->
				</div>
				<!-- container -->
			</div>
			<!-- /MAIN HEADER -->
		</header>
		<!-- /HEADER -->

		<!-- NAVIGATION -->
	    <nav id="navigation">
	       <!-- container -->
	       <div class="container">
	          <!-- responsive-nav -->
	          <div id="responsive-nav">
	             <!-- NAV -->
	             
	             <div id="menu">
	             
	             <ul class="main-nav nav navbar-nav">
	                <li class="active"><a href="#">BEST</a></li>
	                <li><a href="${pageContext.request.contextPath}/product/clothes.do">의류</a>
	                   <ul>
	                      <li><a href="/product/list?c1=0&c2=1">탑</a></li>&nbsp;
	                      <li><a href="/product/list?c1=0&c2=2">니트웨어</a></li>&nbsp;
	                      <li><a href="/product/list?c1=0&c2=3">셔츠/자켓</a></li>&nbsp;
	                      <li><a href="/product/list?c1=0&c2=4">셔츠</a></li>&nbsp;
	                      <li><a href="/product/list?c1=0&c2=5">수트</a></li>&nbsp;
	                      <li><a href="/product/list?c1=0&c2=6">팬츠</a></li>&nbsp;
	                      <li><a href="/product/list?c1=0&c2=7">언더웨어</a></li>&nbsp;
	                      <li><a href="/product/list?c1=0&c2=8">비치웨어</a></li>&nbsp;
	                      <li><a href="/product/list?c1=0&c2=9">기능성의류</a></li>&nbsp;
	                    </ul>
	                </li>
	                <li><a href="/product/shoes">슈즈</a></li>
	                     
	                <li><a href="${pageContext.request.contextPath}/product/bagpack.do">가방</a></li>
	                <li><a href="${pageContext.request.contextPath}/product/accessories.do">액세서리</a></li>
	                <li><a href="${pageContext.request.contextPath}/product/jewellery.do">쥬얼리</a></li>
	                <li><a href="${pageContext.request.contextPath}/product/clothes.do">SALES</a></li>
	             </ul>
	             </div>
	             </div>
	               <!-- /NAV -->
	            </div>
	            <!-- /responsive-nav -->
	         </div>
	         <!-- /container -->
	      </nav>
	      <!-- /NAVIGATION -->
		</c:if>
		
		<c:if test="${!empty seller}">
		<nav id="navigation">
			<!-- container -->
			<div class="container">
				<!-- responsive-nav -->
				<div id="responsive-nav">
					<!-- NAV -->
					<ul class="main-nav nav navbar-nav">
						<li class="active"><a href="#">HOME</a></li>
						<li><a href="#">상품관리</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/seller/addProduct.do">상품 등록</a></li>
								<li><a href="">상품 조회</a></li>
								<li><a href="">상품 삭제</a></li>
							</ul>
						</li>
						<li><a href="#">클레임관리</a>
							<ul>
								<li><a href="">문의 관리</a></li>
								<li><a href="">리뷰 관리</a></li>
							</ul>
						</li>
						<li><a href="#">정산조회</a>
							<ul>
								<li><a href="">판매 현황</a></li>
								<li><a href="">정산 내역</a></li>
							</ul>
						</li>
						<li><a href="#">통계</a>
						</li>
					</ul>
					<!-- /NAV -->
				</div>
				<!-- /responsive-nav -->
			</div>
			<!-- /container -->
		</nav>
		</c:if>
		<!-- /NAVIGATION -->