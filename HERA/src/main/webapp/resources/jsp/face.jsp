<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page errorPage="exceptionNoProduct.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>HERA | FACE</title>
  <!-- Bootstrap 4.6 CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="../css/face.css?ver=2502131" />
  <link rel="icon" href="../images/faviconV2.png" type="image/x-icon" />
</head>
<body>

  <%@ include file="./menu.jsp" %>
  <%@ include file="dbconn.jsp" %>

  <%
    String code = request.getParameter("code");
    String sql = "SELECT * FROM face WHERE code = ?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, code);
    rs = pstmt.executeQuery();

    if (rs.next()) {
  %>

  <div class="container my-5">
    <div class="row">
      <!-- 상품 이미지 -->
      <div class="col-md-5">
        <img src="../images/face/<%= rs.getString("filename") %>" alt="<%= rs.getString("name") %>" class="img-fluid rounded shadow-sm"/>
      </div>
      
      <!-- 상품 정보 -->
      <div class="col-md-7">
        <h3 class="product-title mb-3"><%= rs.getString("name") %></h3>
        <p class="product-category"><strong>카테고리:</strong> <%= rs.getString("category") %></p>
        <p class="product-price"><strong>가격:</strong> <%= rs.getInt("price") %> 원</p>
        <p class="product-description"><%= rs.getString("description") %></p>
        
        <!-- 주문 및 목록 버튼 -->
        <a href="#" class="btn btn-primary" onclick="addToCart('<%= rs.getString("code") %>', '<%= rs.getString("name") %>', <%= rs.getInt("price") %>);">상품 주문 &raquo;</a>
        <a href="./faces.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
      </div>
    </div>
  </div>

  <%
    } else {
      response.sendRedirect("exceptionNoProduct.jsp");
    }

    // 리소스 해제
    if(rs != null) rs.close();
    if(pstmt != null) pstmt.close();
    if(conn != null) conn.close();
  %>

  <%@ include file="./footer.jsp" %>
  
  <!-- Bootstrap 4.6 JS 및 의존성 -->
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
  <script src="../js/index.js"></script>
<script>
	function addToCart(code, name, price) {
	    if (confirm(name + "을(를) 장바구니에 추가하시겠습니까?")) {
	        location.href = "addToCart.jsp?code=" + code + "&name=" + encodeURIComponent(name) + "&price=" + price;
	    }
	}
</script>
</body>
</html>
