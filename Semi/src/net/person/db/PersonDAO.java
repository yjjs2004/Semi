package net.person.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class PersonDAO {

	private DataSource ds;

	public PersonDAO() {
		try {
			Context init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		} catch (Exception ex) {
			System.out.println("DB ���� ����: " + ex);
		}
	}

	public int isId(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		try {

			conn = ds.getConnection();

			String sql = "select PERSONAL_ID from personal where PERSONAL_ID = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				result = 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
		}
		return result;
	}

	public int isNick(String nick) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		try {

			conn = ds.getConnection();

			String sql = "select PERSONAL_NICKNAME from personal where PERSONAL_NICKNAME = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, nick);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				result = 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
		}
		return result;
	}

	public int insert(Person p) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result = 1;
		try {

			conn = ds.getConnection();
			System.out.println("getConnection : insert()");
			String sql = "insert into personal"
					+ "(PERSONAL_ID, PERSONAL_NICKNAME, PERSONAL_PASSWORD,"
					+ " PERSONAL_TEL, PERSONAL_NAME, PERSONAL_BIRTH,"
					+ " PERSONAL_GENDER, PERSONAL_POST, PERSONAL_ADDRESS,"
					+ " PERSONAL_EMAIL) values(?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p.getId());
			pstmt.setString(2, p.getNickname());
			pstmt.setString(3, p.getPassword());
			pstmt.setString(4, p.getTel());
			pstmt.setString(5, p.getName());
			pstmt.setString(6, p.getBirth());
			pstmt.setString(7, p.getGender());
			pstmt.setString(8, p.getPost());
			pstmt.setString(9, p.getAddress());
			pstmt.setString(10, p.getEmail());
			result = pstmt.executeUpdate();
		} catch (java.sql.SQLIntegrityConstraintViolationException e) {
			result = -1;
			System.out.println("��� ���̵� �ߺ� �����Դϴ�.");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
		}
		return result;
	}

}
