<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.BoardRepository, dto.Board" %>

<%
    request.setCharacterEncoding("UTF-8");

    int boardID = Integer.parseInt(request.getParameter("id"));
    String subject = request.getParameter("subject");
    String content = request.getParameter("content");
    String userID = (String) session.getAttribute("user");

    BoardRepository repo = BoardRepository.getInstance();
    Board board = repo.getBoardById(boardID);

    // 작성자 본인인지 확인
    if (userID == null || !userID.equals(board.getUserID())) {
        out.println("<script>alert('작성자만 수정할 수 있습니다.'); location.href='board.jsp';</script>");
        return;
    }

    // 수정할 데이터 설정
    board.setBoardTitle(subject);
    board.setBoardContent(content);
    
    // 데이터베이스 업데이트 실행
    repo.updateBoard(board);

    out.println("<script>alert('게시글이 수정되었습니다.'); location.href='boardDetail.jsp?id=" + boardID + "';</script>");
%>
