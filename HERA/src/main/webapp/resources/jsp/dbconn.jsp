<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dbconn.jsp</title>
</head>
<body>
   <%
      Connection conn = null;
   	  PreparedStatement pstmt = null;
   	  ResultSet rs = null;
      
      String url ="jdbc:oracle:thin:@localhost:1521:xe";
      String username = "C##dbexam";
      String password = "m1234";
      
      Class.forName("oracle.jdbc.driver.OracleDriver");
      conn = DriverManager.getConnection(url, username, password);      
      
      
   %>
</body>
</html>