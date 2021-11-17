<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 : DAPARA</title>
	
	<!-- css -->
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/myPage.css"/>

</head>
<body>
	<c:import url="../common/header.jsp"/>
	
	<!-- myPage 주문목록 / 배송조회 -->
		<div id=myPage>

			<div class="container">
				
				<div id="section-header">
					<h2 id="mypageTitle">
						MY페이지
					</h2>
				</div>

				<div id="myPageBody">

					<div id="sideMenu">
	
						<div id="infoDiv">
							<div>user01 님</div>
							<button type="button" id="myInfoBtn" onclick="goMyInfo();">회원정보 수정</button>
						</div>
	
						<div id="sideMenuList">
							<ul>
								<li class="listTitle">
									MY 쇼핑
									<ul>
										<li class="menu">
											<a href="${pageContext.request.contextPath}/myPage/myPage.do">주문목록 / 배송조회</a>
										</li>
									</ul>
								</li>
							</ul>
							<ul>
								<li class="listTitle">
									MY 활동
									<ul>
										<li class="menu"><a href="">문의내역 확인</a></li>
										<li class="menu"><a href="">리뷰 관리</a></li>
									</ul>
								</li>
							</ul>
						</div>
	
					</div>
	
					<div id="orderListArea">
	
						<div id="deliCountSection">
							<div id="deliCount">
								<table id="deliCountTable">
									<tr>
										<td>배송중</td>
										<td>취소/교환/반품</td>
									</tr>
	
									<tr>
										<td class="iconTr">
											<i class="fas fa-truck"></i>
											<span>0</span> <!-- userId가 user01인 회원의 배송중 상태 개수 -->
										</td>
										<td class="iconTr">
											<i class="fas fa-undo-alt"></i>
											<span>0</span> <!-- userId가 user01인 회원의 취소 반품 교환 상태 개수 -->
										</td>
									</tr>
								</table>
							</div>
	
							<div id="searchDate">
								<div id="btnArea">
									<button type="button" class="dateBtn">1개월</button>
									<button type="button" class="dateBtn">3개월</button>
									<button type="button" class="dateBtn">6개월</button>
									<button type="button" class="dateBtn">1년</button>
								</div>
								<div id="calArea">
									<input type="date" name="" id=""> - 
									<input type="date" name="" id="">
									<button type="button" id="searchBtn">조회</button>
								</div>
							</div>
	
						</div>
	
						<div id="orderList">
							<div id="orderList-header">
								<h3 id="orderListTitle">
									주문목록
								</h3>
							</div>
	
							<!--forEach-->
							<div class="ordersArea">
								<div class="orderAreaHead">
									<p class="orderDate">2021.11.16</p> <!-- order.getOrderDate -->
									<span class="orderNo">주문번호 : <span>00000</span></span> <!-- order.getOrderNo -->
									<input type="hidden" name="detailNo" value="" /> <!-- orderDetail.getDetailNo -->
								</div>
								<table class="orderTable">
									<tr>
										<td rowspan="4" class="productImg"><img src="" alt="상품이미지" width=100 height=100></td>
										<td style="width : 450px; font-weight: bold;">
											브랜드명
											<input type="hidden" name="productNo" value="" /> <!-- orderDetail.getProductNo -->
										</td>
										<td rowspan="4" align="center" style="border-left: 1px solid lightgray;">
											<p>판매자ID</p> <!-- seller.getSellerId -->
											<p>02-111-1111</p> <!-- seller.getSellerPhone -->
											<button type="button" class="qnaBtn">문의하기</button>
										</td>
										<td rowspan="4" align="center" class="btnArea2">
											<button type="button">배송 조회</button>
											<button type="button">취소, 교환, 반품 신청</button>
											<!-- processCode가 4 인 orderDetail일 경우 -->
											<button type="button">구매 확정</button>
											<!-- processCode가 5 인 orderDetail일 경우 -->
											<button type="button">리뷰 작성</button>
										</td>
									</tr>
									<tr>
										<td>상품명</td>
									</tr>
									<tr>
										<td>옵션 : L</td>
									</tr>
									<tr>
										<td>400000원 1개</td>
									</tr>
								</table>
							</div>
						</div>
	
					</div>
				</div>
				

			</div>

		</div>
	
	
	<c:import url="../common/footer.jsp"/>
</body>
	<!-- script -->
	<script>

		fuction goMyInfo(){
			location.href="${pageContext.request.contextPath}/myPage/myInfo.do";
		}
		
	</script>	
</html>