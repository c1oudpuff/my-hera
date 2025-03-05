<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String code = request.getParameter("code");
    java.util.List<java.util.Map<String, Object>> cart = (java.util.List<java.util.Map<String, Object>>) session.getAttribute("cart");

    if (cart != null) {
        cart.removeIf(item -> item.get("code").equals(code));
    }

    session.setAttribute("cart", cart);
    response.sendRedirect("cart.jsp");
%>
