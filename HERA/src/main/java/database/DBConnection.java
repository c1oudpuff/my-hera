package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    // 오라클 DB 연결 정보
    private static final String DRIVER = "oracle.jdbc.driver.OracleDriver";
    private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe"; // DB 주소
    private static final String USER = "C##dbexam"; // 오라클 사용자명
    private static final String PASSWORD = "m1234"; // 오라클 비밀번호

    // 데이터베이스 연결을 반환하는 메서드
    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName(DRIVER); // JDBC 드라이버 로드
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException e) {
            System.err.println("Oracle JDBC 드라이버를 찾을 수 없습니다.");
            e.printStackTrace();
        } catch (SQLException e) {
            System.err.println("데이터베이스 연결에 실패했습니다.");
            e.printStackTrace();
        }
        return conn;
    }

    // 데이터베이스 연결 해제 메서드
    public static void close(Connection conn) {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
