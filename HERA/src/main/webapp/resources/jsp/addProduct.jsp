<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤라 브랜드 소개 - 새로운 뷰티 아이콘, 서울 뷰티 | 헤라</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
<%@ include file="menu.jsp" %>

	<%
	    // 로그인 정보 가져오기
	    String loginID = (String) session.getAttribute("user");
	
	%>
	
	<div class="container">
		<div class="row">
			<div class="col-12">
				<form action="./processAddProduct.jsp" method="post" enctype="multipart/form-data" name="newProduct">
					<div class="form-group">
				    	<label for="code">상품 코드</label>
				    	<input type="text" class="form-control" id="code" name="code">
				  	</div>
				  	<div class="form-group">
				    	<label for="name">상품명</label>
				    	<input type="text" class="form-control" id="name" name="name">
				  	</div>
				  	<div class="form-group">
				    	<label for="price">가격</label>
				    	<input type="text" class="form-control" id="price" name="price">
				  	</div>
				  	<div class="form-group">
				    	<label for="description">상세 정보</label>
				    	<textarea class="form-control" id="description" rows="5" name="description"></textarea>
				  	</div>
				  	<div class="form-group">
				    	<label for="category">상품 분류</label>
				    	<input type="text" class="form-control" id="category" name="category">
				  	</div>
						<!-- 이미지 등록 버튼 -->
					<div class="form-group">
					    <label for="image">이미지 등록</label>
					    <input type="file" class="form-control" id="image" name="image">
					 </div>
				  	<input type="submit" class="btn btn-primary form-group" value="등록"></button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
			
	<%@ include file="footer.jsp" %>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
	<script src="../resources/js/validation.js"></script>
  </body>
</html>