<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.DecimalFormat" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HERA | EYE</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/faces.css?ver=2502134" />
    <link rel="icon" href="../images/faviconV2.png" type="image/x-icon" />
</head>

<body>

    <%@ include file="./menu.jsp" %>

    <div class="container-fluid p-0 mb-5">
        <div class="row">
            <div class="col-12">
                <img src="../images/eye_banner.jpg" alt="" class="img-fluid" />
            </div>
        </div>
    </div>

    <%-- DB 연결 --%>
    <%@ include file="dbconn.jsp" %>
<%
    String sql = "SELECT * FROM eye";
    pstmt = conn.prepareStatement(sql);
    rs = pstmt.executeQuery();
    DecimalFormat formatter = new DecimalFormat("#,###");
%>

<div class="container mb-5">
    <div class="row">
        <div class="col-12 text-center">
            <h2>페이스</h2>
        </div>
    </div>

    <%-- 관리자 모드 확인 후 상품 추가 버튼 표시 --%>
    <%
	    String loginID = (String) session.getAttribute("user");
	    if (loginID != null && loginID.equals("admin")) { // loginID가 null이 아닌지 체크
    %>
    <div class="row">
        <div class="col-12 text-right">
            <a href="addProduct.jsp" class="btn btn-primary">상품 추가</a>
        </div>
    </div>
    <% } %>

    <div class="row">
        <%
            while (rs.next()) { // 반복문 한 번만 사용
        %>
        <div class="col-12 col-sm-6 col-md-4">
            <img src="../images/eye/<%= rs.getString("filename") %>" alt="" class="img-fluid" />
            <h5><%= rs.getString("name") %></h5>
            <p><%= rs.getString("description") %></p>
            <p><%= formatter.format(rs.getInt("price")) %>원</p>
            <p><a href="./eye.jsp?code=<%= rs.getString("code") %>" class="btn">상세 정보 &raquo;</a></p>
        </div>
        <%
            }
        %>
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