<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, database.DBConnection" %>

<%@ include file="dbconn.jsp" %>
<%
    request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");


    try {
        conn = DBConnection.getConnection();

        // ID 중복 검사
        String checkSql = "SELECT COUNT(*) FROM users WHERE id = ?";
        pstmt = conn.prepareStatement(checkSql);
        pstmt.setString(1, id);
        rs = pstmt.executeQuery();
        rs.next();
        if (rs.getInt(1) > 0) {
            out.println("<script>alert('이미 존재하는 아이디입니다.'); history.back();</script>");
        } else {
            // 회원 정보 저장
            String sql = "INSERT INTO users (id, pw, name, email, phone, reg_date) VALUES (?, ?, ?, ?, ?, SYSDATE)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.setString(2, pw);
            pstmt.setString(3, name);
            pstmt.setString(4, email);
            pstmt.setString(5, phone);

            int result = pstmt.executeUpdate();
            if (result > 0) {
                out.println("<script>alert('회원가입 성공!'); location.href='index.jsp';</script>");
            } else {
                out.println("<script>alert('회원가입 실패. 다시 시도해주세요.'); history.back();</script>");
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<script>alert('오류 발생: " + e.getMessage() + "'); history.back();</script>");
    } finally {
        if (rs != null) rs.close();
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }
%>
