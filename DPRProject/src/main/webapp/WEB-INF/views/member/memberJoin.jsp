<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원가입</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>
div#userId-container {
	position: relative;
	padding: 0px
}

div#userId-container span.state {
	display: none;
}

div#userId-container span.error, span.invalid {
	color: red;
}

</style>

</head>
<body>
	<c:import url="../common/header.jsp" />

	<!-- BREADCRUMB -->
	<div id="breadcrumb" class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-12">
					<h3 class="breadcrumb-header">회원가입</h3>
					<ul class="breadcrumb-tree">
						<li><a href="${pageContext.request.contextPath}">Home</a></li>
						<li class="active">Checkout</li>
					</ul>
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /BREADCRUMB -->

	<!-- SECTION -->
	<div class="Section">
		<!-- container -->
		<div id="MemberJoin">
			<!-- row -->
			<div class="row">

				<form name="memberEnrollFrm" action="memberEnrollEnd.do" method="post" style="margin-left:20%;" onsubmit="return fn_enroll_validate();">				
					<!-- 회원가입 -->
					<div class="billing-details">
						<div class="section-title">
							<h3 class="title">회원가입</h3>
						</div>
						<div class="form-group" id="userId-container">
							<input class="form-control" type="text" name="userId"
								placeholder="아이디를 입력해 주세요" id="userId" required> 
								<span class="state ok">사용 가능</span> 
								<span class="state error">사용 불가</span> 
								<span class="state invalid">4글자 미만</span>
								<input type="hidden" name="idCheckDuplicate" id="idCheckDuplicate" value="0" />
						</div>
						<div class="form-group">
							<input class="input" type="password" name="userPw" id="userPw"
								placeholder="비밀번호를 입력해 주세요" required>
						</div>
						<div class="form-group">
							<input class="input" type="password" name="userPw2 "id="userPw2"
								placeholder="비밀번호를 다시한번 입력해 주세요" required>
						</div>
						<div class="form-group">
							<input class="input" type="text" name="userName"
								placeholder="이름을 입력해주세요">
						</div>
						<div class="form-group">
							<input class="input" type="text" name="userBirthDate" placeholder="생년월일을 입력해주세요">
						</div>
						<div class="form-group">
							<label class="selection"> 
								<input type="radio" name="userGender" value="M" checked/><span>남자</span>
							</label> 
							<label class="selection"> 
								<input type="radio" name="userGender" value="F" /><span>여자</span>
							</label>
						</div>
						<div class="form-group">
							<input type="text" id="zipCode" name="userAddress" class="input"> 
							<input type="button" value="우편번호 찾기" style="cursor:pointer;" onclick="searchZipCode()" />
						</div>
						<div class="form-group">
							<input type="text" id="userAddress1" name="userAddress" class="input"/>
						</div>
						<div class="form-group">
							<input type="text" id="userAddress2" name="userAddress"class="input"/>
						</div>
						<div class="form-group">
							<input type="text" id="detailAddr" placeholder="상세주소 입력해 주세요" class="input"/>
						</div>
						<div class="form-group">
							<input class="input" type="tel" name="userPhone"
								placeholder="전화번호 입력">
						</div>
						<div class="form-group">
							<input type="text" name="userEmail" placeholder="이메일을 입력해주세요" class="input">
						</div>
					</div>
					<input type="submit" class="btn success" value="가입" />
					<input type="reset" class="btn cancel" value="취소"/>
				
				</form>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<script>
			$(function(){
				$("#userId").on("keyup", function(){
					var userId = $(this).val().trim();
					var idPattern = /^[a-zA-Z0-9]+$/;
					
					if(userId.length == 0){
						$(".state.error").hide();
						$(".state.ok").hide();
						$(".sate.invalid").hide();
						$("#idCheckDuplicate").val(0);
					} else if(idPattern.test(userId) == false){
						$(".state.error").hide();
						$(".state.ok").hide();
						$(".sate.invalid").hide();
						$("#idCheckDuplicate").val(0);
					} else if(userId.length<4){
						$(".state.error").hide();
						$(".state.ok").hide();
						$(".sate.invalid").hide();
						$("#idCheckDuplicate").val(0);
						return;
					} else {
						$.ajax({
							url : "${pageContext.request.contextPath}/member/checkIdDuplicate.do",
							data : {userId:userId},
							dataType: "json",
							success : function(data){
								console.log(data);
								if(data == true){
									$(".state.error").hide();
									$(".state.ok").show();
									$(".state.invalid").hide();
									$("#idCheckDuplicate").val(1);
								} else {
									$(".state.error").show();
									$(".state.ok").hide();
									$(".state.invalid").hide();
									$("#idCheckDuplicate").val(0);
								}
							}, error : function(jqxhr, textStatus, errorThrown){
								console.log("ajax 처리 실패");
								console.log(jqxhr);
								console.log(textStatus);
								console.log(errorThrown);
							}
						});
					}
				});	
			});
		
		</script>
&nbsp;&nbsp;
<c:import url="../common/footer.jsp" />
</body>
</html>














