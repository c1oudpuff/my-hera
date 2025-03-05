<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.DecimalFormat" %>

<%-- DB 연결 --%>
<%@ include file="dbconn.jsp" %>

<%
    request.setCharacterEncoding("UTF-8");
    String keyword = request.getParameter("keyword");  // 검색어 받기

    // keyword가 null일 경우 처리
    if (keyword == null || keyword.trim().isEmpty()) {
        out.println("검색어를 입력해 주세요.");
        return;  // 빈 검색어가 들어오면 종료
    }

    DecimalFormat formatter = new DecimalFormat("#,###");

    String sql = "SELECT f.*, 'face' AS source FROM face f WHERE f.name LIKE ? " +
                 "UNION " +
                 "SELECT e.*, 'eye' AS source FROM eye e WHERE e.name LIKE ? " +
                 "UNION " +
                 "SELECT l.*, 'lip' AS source FROM lip l WHERE l.name LIKE ?";

    try {
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, "%" + keyword + "%");
        pstmt.setString(2, "%" + keyword + "%");
        pstmt.setString(3, "%" + keyword + "%");
        rs = pstmt.executeQuery();
    } catch (SQLException e) {
        out.println("SQL 실행 오류: " + e.getMessage());
        e.printStackTrace();
    }
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HERA | 검색 결과</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/faces.css?ver=2502134" />
    <link rel="icon" href="../images/faviconV2.png" type="image/x-icon" />
</head>

<body>
    <%@ include file="./menu.jsp" %>

    <div class="container mb-5">
        <div class="row">
            <div class="col-12 text-center">
                <h2>"<%= keyword %>" 검색 결과</h2>
            </div>
        </div>

        <div class="row">
            <%
                boolean hasResult = false;
                while (rs.next()) { 
                    hasResult = true;
            %>
            <div class="col-12 col-sm-6 col-md-4">
                <img src="../images/<%= rs.getString("source") %>/<%= rs.getString("filename") %>" alt="" class="img-fluid" />
                <h5><%= rs.getString("name") %></h5>
                <p><%= rs.getString("description") %></p>
                <p><%= formatter.format(rs.getInt("price")) %>원</p>
                <p><a href="./<%= rs.getString("source") %>.jsp?code=<%= rs.getString("code") %>" class="btn">상세 정보 &raquo;</a></p>
            </div>
            <%
                }
                if (!hasResult) {
            %>
            <div class="col-12 text-center">
                <p>검색 결과가 없습니다.</p>
            </div>
            <% } %>
        </div>
    </div>

    <% 
        if(rs != null) rs.close();
        if(pstmt != null) pstmt.close();
        if(conn != null) conn.close();
    %>

    <%@ include file="./footer.jsp" %>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>
    <script src="../js/index.js"></script>
</body>
</html>
