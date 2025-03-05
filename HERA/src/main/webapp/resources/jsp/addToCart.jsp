<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String code = request.getParameter("code");
    String name = request.getParameter("name");
    int price = Integer.parseInt(request.getParameter("price"));

    // 세션에서 장바구니 가져오기
    java.util.List<java.util.Map<String, Object>> cart = (java.util.List<java.util.Map<String, Object>>) session.getAttribute("cart");
    if (cart == null) {
        cart = new java.util.ArrayList<>();
    }

    // 기존 상품이 있는지 확인
    boolean exists = false;
    for (java.util.Map<String, Object> item : cart) {
        if (item.get("code").equals(code)) {
            item.put("quantity", (int) item.get("quantity") + 1);
            exists = true;
            break;
        }
    }

    // 새 상품 추가
    if (!exists) {
        java.util.Map<String, Object> item = new java.util.HashMap<>();
        item.put("code", code);
        item.put("name", name);
        item.put("price", price);
        item.put("quantity", 1);
        cart.add(item);
    }

    session.setAttribute("cart", cart);
    response.sendRedirect("cart.jsp");
%>
