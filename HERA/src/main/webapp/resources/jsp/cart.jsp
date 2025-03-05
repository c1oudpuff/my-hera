<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>장바구니</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="../css/cart.css?ver=1" />
  <link rel="icon" href="../images/faviconV2.png" type="image/x-icon" />
</head>
<body>
<%@ include file="./menu.jsp" %>
    <div class="container my-5">
        <h2>장바구니</h2>
        <table class="table">
            <thead>
                <tr>
                    <th>상품명</th>
                    <th>수량</th>
                    <th>가격</th>
                    <th>합계</th>
                    <th>삭제</th>
                </tr>
            </thead>
            <tbody>
                <%
                    java.util.List<java.util.Map<String, Object>> cart = (java.util.List<java.util.Map<String, Object>>) session.getAttribute("cart");
                    int totalPrice = 0;
                    if (cart != null && !cart.isEmpty()) {
                        for (java.util.Map<String, Object> item : cart) {
                            int subtotal = (int) item.get("price") * (int) item.get("quantity");
                            totalPrice += subtotal;
                %>
                <tr>
                    <td><%= item.get("name") %></td>
                    <td><%= item.get("quantity") %></td>
                    <td><%= item.get("price") %> 원</td>
                    <td><%= subtotal %> 원</td>
                    <td><a href="removeFromCart.jsp?code=<%= item.get("code") %>" class="btn btn-danger btn-sm">삭제</a></td>
                </tr>
                <%
                        }
                    } else {
                %>
                <tr><td colspan="5">장바구니가 비었습니다.</td></tr>
                <%
                    }
                %>
            </tbody>
        </table>
        <h4>총액: <%= totalPrice %> 원</h4>
        <a href="order.jsp" class="btn btn-primary">주문하기</a>
        <a href="faces.jsp" class="btn btn-secondary">쇼핑 계속하기</a>
    </div>
    
    <%@ include file="./footer.jsp" %>
</body>
</html>
