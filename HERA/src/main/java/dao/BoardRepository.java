package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import database.DBConnection;
import dto.Board;

public class BoardRepository {

	private static BoardRepository instance = new BoardRepository();

	public static BoardRepository getInstance() {
		return instance;
	}

	private BoardRepository() {
	}

	// 모든 게시글 가져오기
	public ArrayList<Board> getAll() {
		ArrayList<Board> list = new ArrayList<>();
		String sql = "SELECT board_seq, id, name, subject, content, hit, ip, TO_CHAR(logtime, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(updatetime, 'YYYY-MM-DD HH24:MI:SS') FROM board ORDER BY board_seq DESC";

		try (Connection conn = DBConnection.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery()) {

			while (rs.next()) {
				Board board = new Board();
				board.setBoardID(rs.getInt("board_seq"));
				board.setUserID(rs.getString("id"));
				board.setBoardWriter(rs.getString("name"));
				board.setBoardTitle(rs.getString("subject"));
				board.setBoardContent(rs.getString("content"));
				board.setHit(rs.getInt("hit"));
				board.setIp(rs.getString("ip"));
				board.setBoardDate(rs.getString(8)); // logtime
				board.setUpdateDate(rs.getString(9)); // updatetime

				list.add(board);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	// 게시글 추가
	public void addBoard(Board board) {
		String sql = "INSERT INTO board (board_seq, id, name, subject, content, hit, ip, logtime, updatetime) VALUES (board_seq.NEXTVAL, ?, ?, ?, ?, 0, ?, SYSDATE, SYSDATE)";

		try (Connection conn = DBConnection.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {

			pstmt.setString(1, board.getUserID());
			pstmt.setString(2, board.getBoardWriter());
			pstmt.setString(3, board.getBoardTitle());
			pstmt.setString(4, board.getBoardContent());
			pstmt.setString(5, board.getIp());

			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public Board getBoardById(int boardID) {
		Board board = null;
		String sql = "SELECT board_seq, id, name, subject, content, hit, ip, TO_CHAR(logtime, 'YYYY-MM-DD HH24:MI:SS'), TO_CHAR(updatetime, 'YYYY-MM-DD HH24:MI:SS') FROM board WHERE board_seq = ?";

		try (Connection conn = DBConnection.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setInt(1, boardID);
			try (ResultSet rs = pstmt.executeQuery()) {
				if (rs.next()) {
					board = new Board();
					board.setBoardID(rs.getInt("board_seq"));
					board.setUserID(rs.getString("id"));
					board.setBoardWriter(rs.getString("name"));
					board.setBoardTitle(rs.getString("subject"));
					board.setBoardContent(rs.getString("content"));
					board.setHit(rs.getInt("hit"));
					board.setIp(rs.getString("ip"));
					board.setBoardDate(rs.getString(8)); // logtime
					board.setUpdateDate(rs.getString(9)); // updatetime
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return board;
	}

	public void updateBoard(Board board) {
		String sql = "UPDATE board SET subject = ?, content = ?, updatetime = sysdate WHERE board_seq = ?";

		try (Connection conn = DBConnection.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {

			pstmt.setString(1, board.getBoardTitle());
			pstmt.setString(2, board.getBoardContent());
			pstmt.setInt(3, board.getBoardID());

			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void deleteBoard(int boardID) throws SQLException {
		String sql = "DELETE FROM board WHERE board_seq = ?";
		try (Connection conn = DBConnection.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setInt(1, boardID);
			pstmt.executeUpdate();
		}
	}

}
