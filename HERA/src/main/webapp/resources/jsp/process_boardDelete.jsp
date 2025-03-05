<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.BoardRepository" %>
<%@ page import="java.io.IOException" %>

<%
    int boardID = Integer.parseInt(request.getParameter("id"));
    BoardRepository repo = BoardRepository.getInstance();
    
    try {
        repo.deleteBoard(boardID);  // 게시글 삭제
        response.sendRedirect("board.jsp");  // 삭제 후 목록 페이지로 리다이렉트
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("error.jsp");  // 오류 처리 페이지로 리다이렉트
    }
%>
