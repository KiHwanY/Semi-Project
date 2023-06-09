<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Hplan</title>
<%@ include file="../include/header.jsp" %>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Anton' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Neucha' rel='stylesheet' type='text/css'>
 <script src="https://cpwebassets.codepen.io/assets/editor/iframe/iframeRefreshCSS-44fe83e49b63affec96918c9af88c0d80b209a862cf87ac46bc933074b8c557d.js"></script>
 <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
 <style type="text/css">
 *{margin:0; padding:0; list-style:none;}
a{text-decoration:none;	color:#666;}
a:hover{color:#1bc1a3;}
body, hmtl{background: #ecf0f1; font-family: 'Anton', sans-serif;}
	
a {text-decoration-line: none; }

#home{
position: absolute;
width: 40px;
height: 34px;
left: 0px;
top: 45px;

font-style: normal;
font-weight: 400;
font-size: 10px;
line-height: 29px;
color: black;
}
p {
font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 3px;
line-height: 18px;
}
h1, h2{text-shadow:none; text-align:center;}
h1{	color: #666; text-transform:uppercase;	font-size:36px;}
h2{ color: #7f8c8d; font-family: Neucha, Arial, sans serif; font-size:18px; margin-bottom:30px;} 
table span{ font-size: 18px; color: #999999;}
#container {margin-left: 200px; width: 1200px;}
#pf_img {float: left;}

#line {color: gray; opacity: 50%; margin-left: 40px; padding-left: 49px;}

#tableDistance{margin-left: 100px; padding-left: 100px;}
select {width: 233px; height: 21px; border: 1px solid gray; font-family: inherit;}
input {width: 233px; height: 17px; border: 1px solid gray; font-family: inherit;}
.TOTAL {font-size: 25px; padding-left: 100px; color: #000000;}
#review{width: 500px; height:100px; border: none; margin-top: 100px;}
#reDirectMessage{color: red; font-size: 11px;}
#content{
	width : 1200px;
	height: 200px;
	resize: none;
}

</style>
</head>
<body>
<%@ include file="../include/menu.jsp" %>
<form method="post" id="productCart" name="productCart">
<div id="container">

	<div id="contents">


	<!-- 상단 제품 정보(detail)  -->
		<div class="detail">
			<div class="detailArea ">
			
				<!-- 이미지 영역 -->
				<div id="pf_img" name="pf_img">
					<img src="/upload/${dto.pf_img}"
					alt="대표이미지" width="470px;" height="470px;" />
				</div>
				<!-- 카테고리 -->
					<div>
					<table id="cate_name" frame="void">
						
						<tbody>
							<tr>
								<th><span style="padding-left: 20px;">CATEGORY</span></th>
									<td>
										<span style="padding-left: 45px;">
											<span style="padding-left: 75px;" >${dto.cate_name}</span>
										</span>
									</td>
								</tr>
						</tbody>
					</table>
				</div>	
				<!-- 구분선 -->
				<span id="line">
					───────────────────────────────────
				</span>
				<!-- 제품명  -->
				<div>
					<table id="p_name" frame="void">
						
						<tbody>
							<tr>
								<td style="padding-left: 110px;">
									<span>
										<span style="padding-left: 75px; font-size: 10px;">${dto.p_name}</span>
									</span>
									</td>
								</tr>
						</tbody>
					</table>
				</div>	
				
				
				<!-- 구분선 -->
				<span id="line">
					───────────────────────────────────
				</span>
					<!-- detailText -->
				<div class="detailText">
					<div>
						<table id="p_info" frame="void" style="margin:10px 0 10px 0;">
							
							<tbody>
								<tr>
									<th><span style="padding-left: 20px;">Info</span></th>
									<td style="padding-left: 65px;" align="left">
										<span>
											<span style=" font-size: 10px;">${dto.p_info}</span>
										</span>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<!-- 구분선 -->
				<span id="line">
					───────────────────────────────────
				</span>


				<!-- detailText -->
				<div class="detailText">
					<div>
						<table id="p_price" frame="void" style="margin:10px 0 10px 0;">
							
							<tbody>
								<tr>
									<th><span style="padding-left: 20px;">PRICE</span></th>
									<td style="padding-left: 65px;">
										<span>
											<span style="padding-left: 75px; color: #000000; font-size: 20px;">${dto.p_price}원</span>
										</span>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					

					<!-- 상품옵션 -->
					<table id="tableDistance" frame="void" style="margin-bottom: 10px;">
						<tbody>
							<tr>
								<th><span style="padding-left: 20px;">Color</span></th>
								<td style="padding-left: 35px; ">
								<span>
									<span style="padding-left: 5px;">
									<select name="color_option">
											<option value="default" selected>-[필수] 옵션을 선택해 주세요 -</option>
											<option disabled="disabled" >-------------------</option>
											<option value="One Color style">One Color style</option>
									</select>
									</span>
								</span>
								</td>
							</tr>
					
							<tr>
								<th><span  style="padding-left: 20px;">SIZE</span></th>
								<td style="padding-left: 35px; ">
								<span>
									<span style="padding-left: 5px;">
									<select name="size_option">
											<option value="default" selected>-[필수] 옵션을 선택해 주세요 -</option>
											<option disabled="disabled" >-------------------</option>
											<option value="M">M(90~95)</option>
											<option value="L">L(100~105)</option>
											<option value="XL">XL(105~FRLL)</option>
									</select>
									</span>
								</span>
								</td>
							</tr>
							<tr>
								<th><span style="padding-left: 20px;">AMOUNT</span></th>
								<td style="padding-left: 35px; ">
								<span>
									<span style="padding-left: 5px;">
									
									<input type="number"  id="amount" name="amount">
									</span>
								</span>
								</td>
							</tr>
						</tbody>
					</table>
					<!-- //상품옵션 -->
					
					<!-- 구분선 -->
					<span id="line">
						───────────────────────────────────
					</span>
					
					<!-- 여백 -->
					<table style="margin-bottom: 3px"/>
				

					<!-- total 금액 표출-->
					<table>
						
						<tr>
							<td  class="addToCart" id="tableDistance" width="20px" style="padding-left: 25px;">
								<br></br><br><br>
								<input type="hidden" id="product_id" name="product_id" value="${dto.product_id}">
								<button type="button" id="btnCartinsert" name="btnCartinsert">
									<img src="../joinimg/cartimg.png" alt="상품 담기" width="100" height="40"/>
								</button>
							</td>
							<td  class="buyNow" id="tableDistance"  >
								<br></br><br><br>
								<a href="${path}/product_servlet/product_list.do">
									<img src="../joinimg/listbtn.png" alt="뒤로가기" width="100" height="40" />
								</a>
							</td>
							<td  class="buyNow" id="tableDistance"  >
								<br></br><br><br>
								
									<button class="btn btn-outline-secondary"><a href="#btnSave">REVIEW</a></button>
								
							</td>
						</tr>
					</table>
				
						
				</div>
				<!-- //detailText -->

			</div>
			<!-- //detail Area -->
			
		</div>
		<!-- //상단 제품 정보(detail) -->
			<br><hr>



	
		<!-- 하단부 -->
		<div style="padding-top: 50px; margin-top: 50px;" align="center">
			
			
			<!-- 상품상세정보 -->
			<img src="/upload/${dto.product_img}" width="1000px;"  alt="상품상세정보" />


		
				
			
		</div>
		<!-- //하단부 -->
	</div>
	
	<!-- contents -->
	
</div>
</div>
</form>
<div style="position: fixed; bottom: 40px; right: 5px">
<a href="#p_img">TOP</a>
</div>
<table border="1" style="width: 100%;">
 <tr class="mb-3" align="center">
  <td><input class="form-control" id="writer" name ="writer" placeholder="ID"></td>
  <td >
  <button type="button" id="btnSave" class="btn btn-dark" >작성하기</button>
  </td>
 </tr>
 <tr>
  <td class="mb-3"><textarea class="form-control" id="content" rows="5" name="content" placeholder="내용을 작성하세요..!"></textarea></td>
 </tr>
</table>
<div style="position: fixed; bottom: 40px; right: 5px">
<a href="#productCart">TOP</a>
</div>
<!-- 댓글 목록을 출력할 영역 -->
<input type="hidden" id="comment_num" name="comment_num">
<div id="commentList"></div>


<script type="text/javascript">
$(function() {
	comment_list();
	$("#btnSave").click(function() {
		var writer = $("#writer").val();
		var content =$("#content").val();
		if(writer == ""){
			alert("ID를 입력하세요.");
			return false;
		}
		if(content == ""){
			alert("내용을 입력하세요.");
			return false;
		}
		
		comment_add();
	});
	
	
	$("#btnCartinsert").click(function() {
var form1 = document.productCart;

		if(form1.color_option.value == "default"){
			alert("색상을 선택하세요.");
			return false;
		}
		if(form1.size_option.value == "default"){
			alert("사이즈를 선택하세요.");
			return false;
		}
		if(!form1.amount.value){
			alert("수량을 골라주세요.");
			return false;
		}
		document.productCart.action = "${path}/cart_servlet/productinit.do";
		document.productCart.submit();
		
	});
});

function comment_add() { /* 댓글 쓰기 구현 */
	
	
	var param="product_id="+$("#product_id").val()+"&writer="+$("#writer").val()
	+"&content="+$("#content").val();
	$.ajax({
		type: "post",
		url: "${path}/review_servlet/comment_add.do",
		data: param,
		success: function() {
			$("#writer").val("");
			$("#content").val("");
			comment_list();
		}
	});
}
function comment_list() { /* 댓글 목록 출력 */
	$.ajax({
		type: "post",
		url: "${path}/review_servlet/commentList.do",
		data: "product_id=${dto.product_id}",
		success: function(result) {
			$("#commentList").html(result);
		}
	});
}

</script>
<br><br><br><br><br><br><br><br><br><br>
<div>
<%@ include file="../include/footer.jsp" %>
</div>
</body>
</html>