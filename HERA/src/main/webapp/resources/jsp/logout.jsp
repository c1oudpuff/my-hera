<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="true" %>

<%
    session.invalidate();  // 모든 세션 삭제 (로그아웃)
    response.sendRedirect("./index.jsp");  // 메인으로 리다이렉트
%>
