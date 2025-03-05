<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.BoardRepository, dto.Board, java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HERA | 고객센터</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/board.css" />
    <link rel="icon" href="../images/faviconV2.png" type="image/x-icon" />
</head>
<body>

<%@ include file="menu.jsp"%>

<%
    BoardRepository repo = BoardRepository.getInstance();
    ArrayList<Board> list = repo.getAll();
%>

<table class="table table-hover">
    <thead>
        <tr>
            <th class="text-center">번호</th>
            <th class="text-center">제목</th>
            <th class="text-center">글쓴이</th>
            <th class="text-center">조회수</th>
            <th class="text-center">작성일</th>
            <th class="text-center">수정일</th>
        </tr>
    </thead>
    <tbody>
        <%
            if (list != null && !list.isEmpty()) {
                for (Board b : list) {
        %>
        <tr>
            <td class="text-center"><%=b.getBoardID()%></td>
            <td style="width: 30%">
                <a class="text-reset" href="boardDetail.jsp?id=<%=b.getBoardID()%>">
                    <%=b.getBoardTitle()%>
                </a>
            </td>
            <td class="text-center"><%=b.getBoardWriter()%></td>
            <td class="text-center"><%=b.getHit()%></td>
            <td class="text-center"><%=b.getBoardDate()%></td>
            <td class="text-center"><%=b.getUpdateDate()%></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="7" class="text-center">게시물이 없습니다.</td>
        </tr>
        <%
            }
        %>
    </tbody>
</table>

<div class="text-right">
    <a href="./boardWrite.jsp" class="btn btn-secondary mb-3">새 글 작성</a>
</div>

<%@ include file="footer.jsp"%>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>

</body>
</html>
