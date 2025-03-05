<%@ page import="java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="dbconn.jsp" %>
<%

    // 로그인 폼에서 입력한 값
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");

    // DB 연결
    String sql = "SELECT * FROM users WHERE id = ? AND pw = ?";

    try {
        // DB 연결
        Class.forName("oracle.jdbc.driver.OracleDriver");

        // 로그인 정보 체크
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, id);
        pstmt.setString(2, pw);
        
        rs = pstmt.executeQuery();

        // 로그인 성공 여부 확인
        if (rs.next()) {
            // 로그인 성공 시 세션 생성
            session.setAttribute("user", id);
            out.println("<script>alert('로그인 성공!'); location.href='index.jsp';</script>");
        } else {
        	out.println("<script>alert('아이디 혹은 비밀번호가 잘못되었습니다.'); location.href='index.jsp';</script>");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<h3>오류 발생! 관리자에게 문의하세요.</h3>");
    } finally {
        // 리소스 닫기
        try {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
