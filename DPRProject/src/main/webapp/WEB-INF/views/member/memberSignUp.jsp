<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>
.input {
	width: 80%;
}
div.guide {
	margin: 10px;
	font-size: 12px;
	display: none;
}
div.ok { color: green; }
div.error, div.invalid, div.pattern { color: red; }
.col-md-5 order-details {
	border: 1px solid gray;
}
</style>
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
						<h3 class="breadcrumb-header">회원가입</h3>
						<ul class="breadcrumb-tree">
							<li><a href="#">Home</a></li>
							<li class="active">회원가입</li>
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

					<div class="col-md-7">
					<form name="signUpForm" id="signUpForm" action="sellerSignUpEnd.do" method="post" onsubmit="return validate();">
						<!-- Billing Details -->
						<div class="billing-details">
							<div class="section-title">
								<h3 class="title">판매자 회원가입</h3>
							</div>
							<div class="form-group">
								<i class="far fa-id-card fa-lg"></i>
								<input class="input" type="text" name="sellerId" id="sellerId" placeholder="아이디를 입력하세요" required>								
								<div class="guide invalid Id">5글자 이상 입력해주세요.</div>
								<div class="guide ok Id">사용 가능한 아이디입니다.</div>
								<div class="guide error Id">사용할 수 없는 아이디입니다.</div>
								<div class="guide pattern Id">영문 또는 숫자만 사용 가능합니다.</div>
								<input type="hidden" name="idDuplicateCheck" id="idDuplicateCheck" value="0"/>
							</div>
							<div class="form-group">
								<i class="fas fa-lock fa-lg"></i>
								<input class="input" type="password" name="sellerPw" id="sellerPw" placeholder="비밀번호를 입력하세요." required>
							</div>
							<div class="form-group">
								<i class="fas fa-lock fa-lg"></i>
								<input class="input" type="password" name="pwValidate" id="pwValidate" placeholder="비밀번호를 한번 더 입력하세요." required>
								<div class="guide invalid Pw">비밀번호가 일치하지 않습니다.</div>
								<div class="guide ok Pw">비밀번호가 일치합니다.</div>
							</div>
							<div class="form-group">
								<i class="fas fa-building fa-lg"></i>
								<input class="input" type="text" name="sellerNo" onKeyup="addHypenRegisterNo(this);" placeholder="사업자번호를 입력하세요." required>
							</div>
							<div class="form-group">
								<i class="fas fa-tag fa-lg"></i>
								<input class="input" type="text" name="sellerCompany" placeholder="회사명을 입력하세요." required>
							</div>
							<div class="form-group">
								<i class="fas fa-user-tag fa-lg"></i>
								<input class="input" type="text" name="sellerName" placeholder="대표자명을 입력하세요." required>
							</div>
							<div class="form-group">
								<i class="fas fa-home fa-lg"></i>
								<input class="input" type="text" name="zipCode" id="zipCode" placeholder="우편번호" disabled>
								<button type="button" onclick="searchAddress();">주소 검색</button>
								<input class="input" type="text" name="searchAddr" id="searchAddr" placeholder="검색을 통해 주소를 입력하세요." disabled required>
								<input class="input" type="text" name="detailAddr" id="detailAddr" placeholder="상세 주소를 입력하세요.">
								<input class="input" type="text" name="sellerAddress" id="sellerAddress" disabled>
							</div>
							<div class="form-group">
								<i class="fas fa-phone fa-lg"></i>
								<input class="input" type="text" name="sellerPhone" onKeyup="addHypenPhone(this);" placeholder="연락처를 '-' 없이 입력하세요." required>
							</div>
							<input type="submit" class="primary-btn order-submit" value="회원가입">
						</form>

						</div>
						<!-- /Billing Details -->

					</div>

					<!-- Order Details -->
					<div class="col-md-5 order-details">
						<div class="section-title text-center">
							<h3 class="title">회원 약관</h3>
						</div>
						<div class="order-summary">
							<div class="order-col">
								<div><strong>PRODUCT</strong></div>
								<div><strong>TOTAL</strong></div>
							</div>
							<div class="order-products">
								<div class="order-col">
									<div>1x Product Name Goes Here</div>
									<div>$980.00</div>
								</div>
								<div class="order-col">
									<div>2x Product Name Goes Here</div>
									<div>$980.00</div>
								</div>
							</div>
							<div class="order-col">
								<div>Shiping</div>
								<div><strong>FREE</strong></div>
							</div>
							<div class="order-col">
								<div><strong>TOTAL</strong></div>
								<div><strong class="order-total">$2940.00</strong></div>
							</div>
						</div>
						<div class="payment-method">
							<div class="input-radio">
								<input type="radio" name="payment" id="payment-1">
								<label for="payment-1">
									<span></span>
									Direct Bank Transfer
								</label>
								<div class="caption">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								</div>
							</div>
							<div class="input-radio">
								<input type="radio" name="payment" id="payment-2">
								<label for="payment-2">
									<span></span>
									Cheque Payment
								</label>
								<div class="caption">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								</div>
							</div>
							<div class="input-radio">
								<input type="radio" name="payment" id="payment-3">
								<label for="payment-3">
									<span></span>
									Paypal System
								</label>
								<div class="caption">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								</div>
							</div>
						</div>
						<div class="input-checkbox">
							<input type="checkbox" id="terms">
							<label for="terms">
								<span></span>
								I've read and accept the <a href="#">terms & conditions</a>
							</label>
						</div>
						<!-- <input type="submit" class="primary-btn order-submit" value="회원가입"> -->
					</div>
					<!-- /Order Details -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->
		
		<script>
		function addHypenRegisterNo(obj) {
		    var number = obj.value.replace(/[^0-9]/g, "");
		    var registerNo = "";

		    if(number.length < 4) {
		        return number;
		    } else if(number.length < 5) {
		    	registerNo += number.substr(0, 3);
		    	registerNo += "-";
		    	registerNo += number.substr(3);
		    } else if(number.length < 10) {
		    	registerNo += number.substr(0, 3);
		    	registerNo += "-";
		    	registerNo += number.substr(3, 2);
		    	registerNo += "-";
		    	registerNo += number.substr(5);
		    } else {
		    	registerNo += number.substr(0, 3);
		    	registerNo += "-";
		    	registerNo += number.substr(3, 2);
		    	registerNo += "-";
		    	registerNo += number.substr(5, 5);
		    }
		    obj.value = registerNo;
		}
		
		function addHypenPhone(obj) {
		    var number = obj.value.replace(/[^0-9]/g, "");
		    var phone = "";

		    if(number.length < 4) {
		        return number;
		    } else if(number.length < 7) {
		        phone += number.substr(0, 3);
		        phone += "-";
		        phone += number.substr(3);
		    } else if(number.length < 11) {
		        phone += number.substr(0, 3);
		        phone += "-";
		        phone += number.substr(3, 3);
		        phone += "-";
		        phone += number.substr(6);
		    } else {
		        phone += number.substr(0, 3);
		        phone += "-";
		        phone += number.substr(3, 4);
		        phone += "-";
		        phone += number.substr(7, 4);
		    }
		    obj.value = phone;
		}
		
		// -- 주소 검색 및 최종 DB 주소 조합 (" / " 로 구분)
		$(function(){
			$("#detailAddr").on("keyup", function(){
				var zipCode = $('#zipCode').val();
				var searchAddr = $('#searchAddr').val();
				var detailAddr = $('#detailAddr').val();
				
				$("#sellerAddress").val(zipCode + " / " + searchAddr + " / " + detailAddr);
			});
		});
		
	    function searchAddress(){
			new daum.Postcode({
		        oncomplete: function(data) {
	                var fullAddr = '';
	                var extraAddr = '';

	                if (data.userSelectedType === 'R') { 
	                    fullAddr = data.roadAddress;
	                } else { 
	                    fullAddr = data.jibunAddress;
	                }

	                if(data.userSelectedType === 'R'){
	                    if(data.bname !== ''){
	                        extraAddr += data.bname;
	                    }
	                    if(data.buildingName !== ''){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
	                }

	                $('#zipCode').val(data.zonecode); 
	                $('#searchAddr').val(fullAddr);
	                $("#sellerAddress").val(data.zonecode + " / " + fullAddr + " / ");
	                $('#detailAddr').focus();
	            }
		    }).open();	    	
	    }
		
		$(function(){
			// 중복확인 및 정규식 적용 script
			$("#sellerId").on("keyup", function(){
		        var sellerId = $(this).val().trim();
		        var idPattern = /^[a-zA-Z0-9]+$/;
		        
		        if(sellerId.length == 0){ 
		        	$(".guide.error.Id").hide();
		        	$(".guide.ok.Id").hide();
		        	$(".guide.pattern.Id").hide();
		        	$(".guide.invalid.Id").hide();
		        	$("#idDuplicateCheck").val(0);
		        } else if(idPattern.test(sellerId) == false){
		        	$(".guide.error.Id").hide();
		        	$(".guide.ok.Id").hide();
		        	$(".guide.pattern.Id").show();
		        	$(".guide.invalid.Id").hide();
		        	$("#idDuplicateCheck").val(0);
		        } else if(sellerId.length < 5) {
		        	$(".guide.error.Id").hide();
		        	$(".guide.ok.Id").hide();
		        	$(".guide.pattern.Id").hide();
		        	$(".guide.invalid.Id").show();
		        	$("#idDuplicateCheck").val(0);
		        	return;     	
		        } else {
			        $.ajax({
			            url  : "${pageContext.request.contextPath}/member/checkSellerDuplicate.do",
			            data : {sellerId:sellerId},
			            dataType: "json",
			            success : function(data){
			                console.log(data);
			                if(data == true) {
			                    $(".guide.error.Id").hide();
			                    $(".guide.invalid.Id").hide();
			                    $(".guide.ok.Id").show();
			                    $(".guide.pattern.Id").hide();
			                    $("#idDuplicateCheck").val(1);
			                } else {
			                    $(".guide.error.Id").show();
			                    $(".guide.invalid.Id").hide();
			                    $(".guide.ok.Id").hide();
			                    $(".guide.pattern.Id").hide();
			                    $("#idDuplicateCheck").val(0);
			                }
			            }, error : function(jqxhr, textStatus, errorThrown){
			                console.log("ajax 처리 실패");
			                console.log(jqxhr);
			                console.log(textStatus);
			                console.log(errorThrown);
			            }
		        	});
		     	}
			});	// -- 아이디 중복확인 종료
			
			$("#pwValidate, #sellerPw").on("keyup", function(){
				var pw1 = $("#sellerPw").val(), pw2 = $("#pwValidate").val();
				if(pw1 != pw2){
                    $(".guide.invalid.Pw").show();
                    $(".guide.ok.Pw").hide();
				} else {
					$(".guide.ok.Pw").show();
					$(".guide.invalid.Pw").hide();
				}
			});
		});
		
		function validate(){
			var pw1 = $("#sellerPw").val();
			var pw2 = $("#pwValidate").val();
			
		    if($("#idDuplicateCheck").val() == 0 || pw1 != pw2){
		        alert("아이디 또는 비밀번호를 다시 확인해주세요.");
		        return false;
		    } else {	    	
				return true;
		    }
		}
		</script>
		
		
		
<c:import url="../common/footer.jsp"/>
</body>
</html>