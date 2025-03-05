<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.BoardRepository, dto.Board" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HERA | 글 수정</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/board.css" />
    <link rel="icon" href="../images/faviconV2.png" type="image/x-icon" />
</head>
<body>

<%@ include file="menu.jsp"%>

<%
    int boardID = Integer.parseInt(request.getParameter("id"));
    BoardRepository repo = BoardRepository.getInstance();
    Board board = repo.getBoardById(boardID);
    
    String userID = (String) session.getAttribute("user");
    
    // 작성자만 수정 가능하도록 체크
    if (userID == null || !userID.equals(board.getUserID())) {
        out.println("<script>alert('작성자만 수정할 수 있습니다.'); location.href='board.jsp';</script>");
        return;
    }
%>

<div class="container mt-4">
    <h3>게시글 수정</h3>
    <form action="process_boardUpdate.jsp" method="post">
        <input type="hidden" name="id" value="<%= board.getBoardID() %>">
        
        <div class="form-group">
            <label for="subject">제목</label>
            <input type="text" class="form-control" id="subject" name="subject" value="<%= board.getBoardTitle() %>" required>
        </div>
        
        <div class="form-group">
            <label for="content">내용</label>
            <textarea class="form-control" id="content" name="content" rows="5" required><%= board.getBoardContent() %></textarea>
        </div>
        
        <div class="text-right">
            <a href="board.jsp" class="btn btn-secondary">취소</a>
            <button type="submit" class="btn btn-primary">수정하기</button>
        </div>
    </form>
</div>

<%@ include file="footer.jsp"%>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>

</body>
</html>
