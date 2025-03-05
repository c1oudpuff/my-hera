<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page errorPage="exceptionNoProduct.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>HERA | ORDER</title>
  <!-- Bootstrap 4.6 CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="../css/order.css?ver=1" />
  <link rel="icon" href="../images/faviconV2.png" type="image/x-icon" />
</head>
<body>

  <%@ include file="./menu.jsp" %>
  
      <div class="container my-5">
        <div class="row justify-content-center">
            <!-- 주문 양식 -->
            <div class="col-md-6 bg-secondary p-5 rounded-0 shadow-lg">
                <h2 class="text-center mb-4 font-weight-bold">주문 정보 입력</h2>

                <!-- 주문 폼 -->
                <form action="receipt.jsp" method="post">
                    <div class="form-group">
                        <label for="name">이름</label>
                        <input type="text" class="form-control bg-dark text-white border-light" id="name" name="name" required>
                    </div>

                    <div class="form-group">
                        <label for="address">주소</label>
                        <input type="text" class="form-control bg-dark text-white border-light" id="address" name="address" required>
                    </div>

                    <div class="form-group">
                        <label for="phone">전화번호</label>
                        <input type="text" class="form-control bg-dark text-white border-light" id="phone" name="phone" required>
                    </div>

                    <button type="submit" class="btn btn-light btn-block mt-4">주문 완료</button>
                </form>
            </div>
        </div>
    </div>

  <%@ include file="./footer.jsp" %>
  
  <!-- Bootstrap 4.6 JS 및 의존성 -->
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
</body>
</html>
