<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>DAPARA : 상품 상세보기</title>

 		<!-- Google font -->
 		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

 		<!-- Bootstrap -->
 		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>

 		<!-- Slick -->
 		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slick.css"/>
 		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slick-theme.css"/>

 		<!-- nouislider -->
 		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nouislider.min.css"/>

 		<!-- Font Awesome Icon -->
 		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">

 		<!-- Custom stlylesheet -->
 		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/product.css"/>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
		
			<!-- jQuery Plugins -->
<script src="${pageContext.request.contextPath}js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}js/slick.min.js"></script>
<script src="${pageContext.request.contextPath}js/nouislider.min.js"></script>
<script src="${pageContext.request.contextPath}js/jquery.zoom.min.js"></script>
<script src="${pageContext.request.contextPath}js/main.js"></script>
		

		<script src="https://kit.fontawesome.com/c10cbac54f.js" crossorigin="anonymous"></script>

    </head>
	<body>
			<c:import url="../common/header.jsp"/>
		<!-- BREADCRUMB -->
		<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<ul class="breadcrumb-tree">
							<li><a href="#">Home</a></li>
							<li><a href="#">의류</a></li>
							<li class="active">명품 그 자체! 발렌시아가 후드티!</li>
						</ul>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- Product main img -->
					<div class="col-md-5 col-md-push-2">
						<div id="product-main-img">
							<div class="product-preview">
								<img src="${pageContext.request.contextPath}/resources/img/hood1.jpg" alt="">
							</div>

							<div class="product-preview">
								<img src="${pageContext.request.contextPath}/resources/img/hood4.jpg" alt="">
							</div>

							<div class="product-preview">
								<img src="${pageContext.request.contextPath}/resources/img/hood3.jpg" alt="">
							</div>

							<div class="product-preview">
								<img src="${pageContext.request.contextPath}/resources/img/hood4.jpg" alt="">
							</div>
						</div>
					</div>
					<!-- /Product main img -->

					<!-- Product thumb imgs -->
					<div class="col-md-2  col-md-pull-5">
						<div id="product-imgs">
							<div class="product-preview">
								<img src="${pageContext.request.contextPath}/resources/img/hood1.jpg" alt="">
							</div>

							<div class="product-preview">
								<img src="${pageContext.request.contextPath}/resources/img/hood4.jpg" alt="">
							</div>

							<div class="product-preview">
								<img src="${pageContext.request.contextPath}/resources/img/hood3.jpg" alt="">
							</div>

							<div class="product-preview">
								<img src="${pageContext.request.contextPath}/resources/img/hood4.jpg" alt="">
							</div>
						</div>
					</div>
					<!-- /Product thumb imgs -->

					<!-- Product details -->
					<div class="col-md-5">
						<div class="product-details">
							<h2 class="product-name">명품 그 자체! 발렌시아가 후드티!</h2>
							<div>
								
								<a class="review-link" href="#">10개의 리뷰가 있습니다! </a>
							</div>
							<div>
								<h3 class="product-price">399,900원 <del class="product-old-price"></del></h3>
							</div>
							<p>상품설명은 이곳에 들어가게 됩니다 이 후드티는 좀 따뜻한데 금방 헤질거같고 좀 구립니다. 대신 가격이 많이 비쌉니다 비싸고 따뜻해요 많이 사가세요 명품인척 하고있습니다. 길게보이려고 아무말이나 쓰는중입니다. 로렘입섬 찾아도 되는데 그냥 이편이 조금이라도 덜  귀찮은거같습니다. 잠이옵니다. 모든걸 내려놓고 한숨 푹 자고싶습니다 라는 생각을 뒤로하고 담배를 물며 버텨봅니다</p>

							<div class="product-options">
								<label>
									사이즈 
									<select class="input-select">
										<option value="0">XS</option>
										<option value="1">S</option>
										<option value="2">M</option>
										<option value="3">L</option>
										<option value="4">XL</option>
									</select>
								</label>
							
								<div class="qty-label">
									수량
									<div class="input-number">
										<input type="number" value="1" id="prodqty">
										<span class="qty-up">+</span>
										<span class="qty-down">-</span>
									</div>
								</div>
							</div>

							<div class="add-to-cart">
							
								<button class="add-to-cart-btn" id="addcart"><i class="fa fa-shopping-cart"></i> 장바구니에 담기 </button>
								<button class="add-to-cart-btn"><i class="far fa-credit-card"></i></i></i></i>&nbsp;&nbsp;즉시 구매하기&nbsp;&nbsp;</button>
						
							</div>

					

							<ul class="product-links">
								<li>카테고리 :</li>
								<li><a href="#">의류</a></li></ul>

							<ul class="product-links">
								<li>공유하기 :</li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-envelope"></i></a></li>
							</ul>

						</div>
					</div>
					<!-- /Product details -->

					<!-- Product tab -->
					<div class="col-md-12">
						<div id="product-tab">
							<!-- product tab nav -->
							<ul class="tab-nav">
								<li class="active"><a data-toggle="tab" href="#tab1">상품 상세정보</a></li>
								<li><a data-toggle="tab" href="#tab2">문의</a></li>
								<li><a data-toggle="tab" href="#tab3">리뷰(10)</a></li>
							</ul>
							<!-- /product tab nav -->

							<!-- product tab content -->
							<div class="tab-content">
								<!-- tab1  -->
								<div id="tab1" class="tab-pane fade in active">
									<div class="row">
										<div class="col-md-12">
											<p>이곳에는 판매자가 게시하는 상세정보 사진이 들어가게됩니다.</p>
										</div>
									</div>
								</div>
								<!-- /tab1  -->

								<!-- tab2  -->
								<div id="tab2" class="tab-pane fade in">
									<div class="row">
										<div class="col-md-12">
											<div class="tableArea" style="text-align: center;">
												<table cellspacing="100" id="listArea" align="center" style="width: max-content;">
													<thead>
														<tr>
															<th width="80px"  style="text-align: center; height: 40px; ">작성자</th>
															<th width="980px" style="text-align: center;">내용</th>

															<th width="80px"  style="text-align: center;  ">작성일</th>

														</tr>
													</thead>
													<tbody align="center">
														<tr>
															<td style="height: 50px;border-top:solid ; border-color: rgb(237, 237, 240);">장민수</td> 
															<td style="border-top:solid ; border-color: rgb(237, 237, 240); padding-left : 50px; padding-right : 50px; text-align : left">거짓말을.. 미쳤네요.. 사실과 다릅니다. 어제도 한진 배송 받았습니다. 남양주 배송 잘 되고 있거든요.. 만일 그렇다면 미리 연락을 주셨어야죠!!! 고객을 기만하고있네요..</td> 

															<td style="border-top:solid ; border-color: rgb(237, 237, 240);">2021-11-12</td> 

														</tr>
													

														<tr>
															<td style="height: 50px; border-top:solid ; border-color: rgb(237, 237, 240);">장민수</td> 
															<td style="border-top:solid ; border-color: rgb(237, 237, 240);">어디까지길어져어디까지길어디까지지길어져어디까지길어져어디까지길어져</td> 

															<td style="border-top:solid ; border-color: rgb(237, 237, 240);">2021-11-12</td> 

														</tr>

													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
								<!-- /tab2  -->

								<!-- tab3  -->
								<div id="tab3" class="tab-pane fade in">
									<div class="row">
										
										<!-- Reviews -->
										<div class="col-md-6" >
											<div class="tableArea" style="text-align: center;">
												<table cellspacing="100" id="listArea" align="center" style="width: max-content;">
													<thead>
														<tr>
															<th width="80px"  style="text-align: center;">작성자</th>
															<th width="200px"  style="text-align: center;">사진</th>
															
															<th width="782px" style="text-align: center;">내용</th>

															<th width="80px"  style="text-align: center;  ">작성일</th>

														</tr>
													</thead>
													<tbody align="center">
														<tr>
															<td style="height: 150px;border-top:solid ; border-color: rgb(237, 237, 240);">장민수</td> 
															<td style="height: 225px;border-top:solid ; border-color: rgb(237, 237, 240);">	<img src="${pageContext.request.contextPath}/resources/img/hood1.jpg" style="height:190px; width:180px"></td> 
															<td style="border-top:solid ; border-color: rgb(237, 237, 240); text-align:left; padding-left:20px;">어디까지길어져어디까지길어디까지지길어져어디까지길어져어디까지길어져</td> 

															<td style="border-top:solid ; border-color: rgb(237, 237, 240);">2021-11-12</td> 

														</tr>
													
	<tr>
															<td style="height: 150px;border-top:solid ; border-color: rgb(237, 237, 240);">장민수</td> 
															<td style="height: 225px;border-top:solid ; border-color: rgb(237, 237, 240);">	<img src="${pageContext.request.contextPath}/resources/img/hood2.jpg" style="height:190px; width:180px" ></td> 
															<td style="border-top:solid ; border-color: rgb(237, 237, 240); text-align:left; padding-left:20px;">어디까지길어져어디까지길어디까지지길어져어디까지길어져어디까지길어져</td> 

															<td style="border-top:solid ; border-color: rgb(237, 237, 240);">2021-11-12</td> 

														</tr>
														
														<tr>
														<td style="border-top:solid ; border-color: rgb(237, 237, 240);" ></td>
														<td style="border-top:solid ; border-color: rgb(237, 237, 240);"></td>
														<td style="border-top:solid ; border-color: rgb(237, 237, 240);"></td>
														<td style="border-top:solid ; border-color: rgb(237, 237, 240);"></td>
														
														
														</tr>
									

													</tbody>
												</table>
											</div>
										</div>
										<!-- /Reviews -->

									
									</div>
								</div>
								<!-- /tab3  -->
							</div>
							<!-- /product tab content  -->
						</div>
					</div>
					<!-- /product tab -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		
		<!-- Section -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<div class="col-md-12">
						<div class="section-title text-center">
							<h3 class="title">이런 상품들은 어떠신가요?</h3>
						</div>
					</div>

					<!-- product -->
					<div class="col-md-3 col-xs-6">
						<div class="product">
							<div class="product-img">
								<img src="${pageContext.request.contextPath}/resources/img/dpr2.jpg" alt="">
							
							</div>
							<div class="product-body">
								<p class="product-category">의류</p>
								<h3 class="product-name"><a href="#">가을밤당신을따뜻하게해주는후드티</a></h3>
								<h4 class="product-price">593,000원 </h4>
							
							
							</div>
							<div class="add-to-cart">
								<button class="add-to-cart-btn">보러가기</button>
							</div>
						</div>
					</div>
					<!-- /product -->

					<!-- product -->
					<div class="col-md-3 col-xs-6">
						<div class="product">
							<div class="product-img">
								<img src="${pageContext.request.contextPath}/resources/img/dpr3.jpg" alt="">
							
							</div>
							<div class="product-body">
								<p class="product-category">의류</p>
								<h3 class="product-name"><a href="#">할로윈파티용 망토</a></h3>
								<h4 class="product-price">99,000원</h4>
							
								
							</div>
							<div class="add-to-cart">
								<button class="add-to-cart-btn">보러가기</button>
							</div>
						</div>
					</div>
					<!-- /product -->

					<div class="clearfix visible-sm visible-xs"></div>

					<!-- product -->
					<div class="col-md-3 col-xs-6">
						<div class="product">
							<div class="product-img">
								<img src="${pageContext.request.contextPath}/resources/img/dpr4.jpg" alt="">
							</div>
							<div class="product-body">
								<p class="product-category">의류</p>
								<h3 class="product-name"><a href="#">푸른 바다를 녹여낸듯한 블루진</a></h3>
								<h4 class="product-price">885,990원</h4>
							
							
							</div>
							<div class="add-to-cart">
								<button class="add-to-cart-btn">보러가기</button>
							</div>
						</div>
					</div>
					<!-- /product -->

					<!-- product -->
					<div class="col-md-3 col-xs-6">
						<div class="product">
							<div class="product-img">
								<img src="${pageContext.request.contextPath}/resources/img/dpr5.jpg" alt="">
							</div>
							<div class="product-body">
								<p class="product-category">의류</p>
								<h3 class="product-name"><a href="#">붉은 단풍을 닮은 가디건</a></h3>
								<h4 class="product-price">1,140,800원</h4>
							
							</div>
							<div class="add-to-cart">
								<button class="add-to-cart-btn">보러가기</button>
							</div>
						</div>
					</div>
					<!-- /product -->

				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /Section -->

		
	<c:import url="../common/footer.jsp"/>
		
	

	</body>
	
	<script>
	
	

    $('#addcart').on('click', function(){
    	
		
		var params ={
				userId : // jstl로 세션에서 유저아이디 받아오기 $("#userID").val(),
				qty : $("#prodqty").val()
				prodno : // 제품에서 받아온 객체에서 productno 받아오기
				
   	 
   
		 $.ajax({
			 url : '/dpr/addcart.do',
			 type: 'post',
			 data : params,
			 success : function( data ) {
				 
			 if (data == '1') {
					 alert("장바구니에 등록되었습니다.");
				 } else {
					 alert("장바구니 등록에 실패하였습니다..");
				 }
			 }, error : function( code ) {
				 console.log( code );
			 }
		 });
	});
	 

	
	
	
	</script>
	
	
	
</html>
