<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page errorPage="exceptionNoProduct.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>HERA | RECEIPT</title>
  <!-- Bootstrap 4.6 CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="../css/receipt.css?ver=1" />
  <link rel="icon" href="../images/faviconV2.png" type="image/x-icon" />
</head>
<body class="bg-dark text-light">

    <!-- 상단 메뉴 (예시로 include) -->
    <%@ include file="./menu.jsp" %>
    <%
    request.setCharacterEncoding("UTF-8");
    %>

    <div class="container my-5">
        <div class="row justify-content-center">
            <!-- 주문 완료 확인 -->
            <div class="col-md-6 bg-secondary p-5 rounded-0 shadow-lg text-center">
                <h2 class="font-weight-bold mb-4">주문이 완료되었습니다!</h2>

                <p class="lead mb-3">주문이 성공적으로 접수되었습니다. 감사합니다!</p>

                <div class="order-summary">
                    <h4 class="mb-4">주문 내역</h4>
                    <p><strong>이름:</strong> <%= request.getParameter("name") %></p>
                    <p><strong>주소:</strong> <%= request.getParameter("address") %></p>
                    <p><strong>주문 번호:</strong> #<%= (int)(Math.random() * 100000) %></p>
                </div>

                <a href="index.jsp" class="btn btn-light btn-block mt-4">홈으로 돌아가기</a>
            </div>
        </div>
    </div>

    <!-- 하단 푸터 (예시로 include) -->
    <%@ include file="./footer.jsp" %>

    <!-- Bootstrap JS 및 의존성 -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
</body>
</html>
