<%@page import="java.sql.*"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.util.Enumeration"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>processAddProduct</title>
</head>
<body>

<%@ include file="dbconn.jsp" %>
    <%
        // POST 요청 시 문자 인코딩 설정
        request.setCharacterEncoding("utf-8");

        // 파일을 저장할 실제 경로 가져오기
        String realFolder = application.getRealPath("/resources/images/face/"); // 절대 경로
        String encType = "utf-8";
        int maxsize = 5*1024*1024; // 최대 파일 크기: 5MB
        MultipartRequest multi = new MultipartRequest(request, realFolder, maxsize, encType, new DefaultFileRenamePolicy());

        // 폼에서 입력받은 값들
        String code = multi.getParameter("code");
        String name = multi.getParameter("name");
        String unit_price = multi.getParameter("price");
        String description = multi.getParameter("description");
        String category = multi.getParameter("category");

        // 업로드된 파일의 파일명 가져오기
        Enumeration files = multi.getFileNames();
        String fname = (String)files.nextElement();
        String filename = multi.getFilesystemName(fname);

        // 가격이 비어 있으면 0으로, 그렇지 않으면 정수로 변환
        int price;
        if(unit_price.isEmpty()) {
            price = 0;
        } else {
            price = Integer.valueOf(unit_price);
        }
        

        try {
            // SQL 쿼리: 새로운 상품을 데이터베이스에 추가
            String sql = "INSERT INTO face (code, name, description, price, category, filename) VALUES (?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);

            // 쿼리 파라미터 설정
            pstmt.setString(1, code);
            pstmt.setString(2, name);
            pstmt.setString(3, description);
            pstmt.setInt(4, price);
            pstmt.setString(5, category);
            pstmt.setString(6, filename);

            // 쿼리 실행: 새로운 상품 추가
            pstmt.executeUpdate();

            // 상품 추가 후 faces.jsp로 리다이렉트하여 상품 목록 페이지로 이동
            response.sendRedirect("faces.jsp");

        } catch (SQLException e) {
            e.printStackTrace();
        }
    %>
</body>
</html>
