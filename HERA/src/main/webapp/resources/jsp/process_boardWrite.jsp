<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.BoardRepository, dto.Board" %>
<%
	request.setCharacterEncoding("UTF-8");

	String userID = (String) session.getAttribute("user"); 
	
	// 로그인 상태 확인
	if (userID == null) {
		out.println("<script>alert('로그인 후 작성이 가능합니다.'); location.href='board.jsp';</script>");
	    return;
	}

    String subject = request.getParameter("subject");
    String content = request.getParameter("content");
    String writer = request.getParameter("writer");
    String ip = request.getRemoteAddr();

    Board board = new Board();
    board.setUserID(userID);
    board.setBoardTitle(subject);
    board.setBoardContent(content);
    board.setBoardWriter(writer);
    board.setIp(ip);

    BoardRepository repo = BoardRepository.getInstance();
    repo.addBoard(board);

    response.sendRedirect("board.jsp"); // 글 작성 후 목록으로 이동
%>
