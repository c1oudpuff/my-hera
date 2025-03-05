<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.BoardRepository, dto.Board" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HERA | 글 상세보기</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/board.css?v=1" />
    <link rel="icon" href="../images/faviconV2.png" type="image/x-icon" />
</head>
<body>

<%@ include file="menu.jsp"%>

<%
    int boardID = Integer.parseInt(request.getParameter("id"));
    BoardRepository repo = BoardRepository.getInstance();
    Board board = repo.getBoardById(boardID);
%>

<div class="container mt-4">
    <h3><%= board.getBoardTitle() %></h3>
    <div class="text-muted">
        <span><%= board.getBoardWriter() %> | </span>
        <span><%= board.getBoardDate() %> | </span>
        <span>조회수: <%= board.getHit() %></span>
    </div>
    <div class="mt-3">
        <p><%= board.getBoardContent() %></p>
    </div>
    <div class="text-right">
        <a href="board.jsp" class="btn btn-secondary">목록으로</a>
        <a href="boardEdit.jsp?id=<%= board.getBoardID() %>" class="btn btn-primary">수정하기</a>
        <form action="process_boardDelete.jsp" method="post" class="d-inline">
            <input type="hidden" name="id" value="<%= board.getBoardID() %>">
            <button type="submit" class="btn btn-danger">삭제하기</button>
        </form>
    </div>
</div>

<%@ include file="footer.jsp"%>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>

</body>
</html>
