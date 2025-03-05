<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.BoardRepository, dto.Board" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HERA | 새 글 작성</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/board.css" />
    <link rel="icon" href="../images/faviconV2.png" type="image/x-icon" />
</head>
<body>

<%@ include file="menu.jsp"%>

<div class="container mt-4">
    <h3>새 글 작성</h3>
    <form action="process_boardWrite.jsp" method="post">
        <div class="form-group">
            <label for="subject">제목</label>
            <input type="text" id="subject" name="subject" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="content">내용</label>
            <textarea id="content" name="content" class="form-control" rows="5" required></textarea>
        </div>
        <div class="form-group">
            <label for="writer">작성자</label>
            <input type="text" id="writer" name="writer" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-primary">등록</button>
    </form>
</div>

<%@ include file="footer.jsp"%>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>

</body>
</html>
