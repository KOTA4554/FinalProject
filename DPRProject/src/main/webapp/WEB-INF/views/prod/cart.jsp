<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>DAPARA : 장바구니</title>
    <script src="https://kit.fontawesome.com/c10cbac54f.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
  
 	
 		<!-- Google font -->
 		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

 		<!-- Bootstrap -->
 		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}resources/css/bootstrap.min.css"/>

 	



    <style>

        

#order-section {
  padding: 30px 0;
}

#section-header {
  height: 50px;
}

#orderTitle {
  float: left;
}

#pageNav {
  float: right;
}

#pageNav label {
  font-weight: normal;
}

.fa-chevron-right {
  padding: 0 5px;
}

#th {

border-top: solid;
text-align: center;


}

#CIP{
    text-align: center; 
   
    border-top: solid;
    border-color: rgb(237, 237, 240);
   
    height: 100px;

    

}


#TII{
width: 100px;
height: 100px;
margin-bottom: 10px;
}

#brand{
font-size: 19px;
padding-left: 20px;

}

#prodname{
font-size: 20px;
padding-left: 20px;
}

#size{
font-size: 15px;
padding-left: 20px;

}

#sizebtn{
    background-color:white; 
    border-radius: 5px; 
    border : 1px solid rgb(237, 237, 240);
    height: 25px; 
    width: 75px;
    font-weight: lighter;
   
}

#rth{

    color: rgb(182, 179, 179);

}

#ftd{
    border-top: 3px solid rgb(237, 237, 240);

}



.input-number {
  position: relative;

}

.input-number input[type="number"]::-webkit-inner-spin-button, .input-number input[type="number"]::-webkit-outer-spin-button {
  -webkit-appearance: none;
  margin: 0;
}

.input-number input[type="number"] {
  -moz-appearance: textfield;
  height: 40px;
  width: 100px;
  border: 1px solid #E4E7ED;
  background-color: #FFF;
  padding: 0px 35px 0px 15px;

}

.input-number .qty-up, .input-number .qty-down {
  position: absolute;
  display: block;
  width: 20px;
  height:  20px;
  border: 1px solid #E4E7ED;
  background-color: #FFF;
  text-align: center;
  font-weight: 700;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  
 
}

.input-number .qty-up {
  right: 0;
  top: 0;
  border-bottom: 0px;
}

.input-number .qty-down {
  right: 0;
  bottom: 0;
  padding-bottom: 2px;
  
}

.input-number .qty-up:hover, .input-number .qty-down:hover {
  background-color: #E4E7ED;
  color: #D10024;
}




    </style>
</head>
<body>
	<c:import url="../common/header.jsp"/>
    <div style="padding-left: 17%; padding-top: 100px; padding-right: 17%;">
        <div id="section-header" ">
            <h2 id="orderTitle">
                <i class="fas fa-shopping-cart"></i>
                장바구니 (1)
            </h2>

            <div id="pageNav" style="padding-top: 50px;">
                <i class="fas fa-shopping-cart" style="  color: #d10024;"></i>
                <label style="  color: #d10024;">장바구니</label>
                <i class="fas fa-chevron-right"></i>
                <i class="fas fa-clipboard-list"></i>
                <label>주문서 작성</label>
                <i class="fas fa-chevron-right"></i>
                <i class="fas fa-check-circle"></i>
                <label>주문완료</label>
            </div>
        </div>
        
    <br><br>
<table cellspacing="0" style="display:flex">

<th id="th" style="width: 75px; height: 50px;"><input type="checkbox" name="Y"></i></th>
<th id="th" colspan="2" style="width: 1500px;">상품정보</th>
<th id="th" style="width: 100px; ">수량</th>
<th id="th" style="width: 300px;">가격</th>
<th id="th" style="width: 100px; text-align: left;">배송비</th>
</tr>


<tr>
<td id="CIP" style="height: 150px;"><input type="checkbox" name="Y"> </td>
<td id="CIP" style="padding-left: 10px; padding-right: 10px; padding-top: 10px;" > <img id="TII" src="./img/hood1.jpg"> </td>
<td id="CIP" style="width: 1000px; text-align: left; padding-right: 40px;" > <label id="brand" >BALENCIAGA</label><br> <label id="prodname"> 명품 그 자체! 발렌시아가 후드티!</label><br> <label id="size">사이즈 : XL <br> <button id="sizebtn">옵션변경</button> </td>
<td id="CIP" >  <div class="input-number"> 
    <input type="number" value="1" >
    <span class="qty-up">+</span>
    <span class="qty-down">-</span>
</div></td>
<td id="CIP">399,000원</td>
<td id="CIP" style="text-align: left;">3,000원</td>
</tr>




    
    <tr>

        <td id="ftd"></td>
        <td id="ftd"></td>
        <td id="ftd"></td>
        <td id="ftd"></td>
        <td id="ftd"></td>
        <td id="ftd"></td>


    </tr>


    </table>
<br>

<button id="sizebtn" style="width: 100px; height: 30px;">선택삭제</button>

    <br><br><br><br><br><br>



<table align="center">
    <tr>
        <th id="rth" style="text-align: center; width: 200px;">상품가격</th>
        <th id="rth" style="text-align: center; width: 40px;"></th>
        <th id="rth" style="text-align: center; width: 150px;">배송비</th>
        <th id="rth" style="text-align: center; width: 50px;"></th>
        <th id="rth" style="text-align: center; width: 200px;">총 결제금액</th>
    </tr>

    <tr>
        <td style="font-size: 25px; text-align: center;">399,000원</td>
        <td style="font-size: 40px;">+</td>
        <td style="text-align: center; font-size: 25px;">3,000원</td>
        <td style="font-size: 40px;">=</td>
        <td style="text-align: center; font-size: 25px; color: #D10024;">402,000원</td>
    </tr>





</table>


<div class="btns" align="center">
    <br><br><br>
    <button id="gpbtn" style="width: 240px; height: 60px; background-color: #D10024; color: white; font-size: 25px; border-color: #d10024; border-radius: 10px;">선택상품 주문</label>
</div>
</div>

    <br><br><br><br><br><br>

	<c:import url="../common/footer.jsp"/>
		


<script src="${pageContext.request.contextPath}js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}js/slick.min.js"></script>
<script src="${pageContext.request.contextPath}js/nouislider.min.js"></script>
<script src="${pageContext.request.contextPath}js/jquery.zoom.min.js"></script>
<script src="${pageContext.request.contextPath}js/main.js"></script>


</body>



</html>