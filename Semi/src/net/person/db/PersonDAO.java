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
			System.out.println("DB 연결 실패: " + ex);
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
			System.out.println("멤버 아이디 중복 에러입니다.");
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


	public int faq_regist(Faq f) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result = 1;
		try {
			conn = ds.getConnection();
			System.out.println("getConnection : faq_regist()");
			String sql = "insert into faq"
					+ "(FAQ_ID, seq, FAQ_KINDS, "
					+ "FAQ_SUBJECT, FAQ_CONTENT, "
					+ "FAQ_COMPLETE) values(?,faq_seq.nextval,?,?,?,f)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, f.getFAQ_ID());
			pstmt.setString(2, f.getFAQ_KINDS());
			pstmt.setString(3, f.getFAQ_SUBJECT());
			pstmt.setString(4, f.getFAQ_CONTENT());

			result = pstmt.executeUpdate();
		} catch (java.sql.SQLIntegrityConstraintViolationException e) {
			result = -1;
			System.out.println("멤버 아이디 중복 에러입니다.");
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

	public Person Person_info(String id) {
		Person p= null;
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			con = ds.getConnection();

			String sql = "select * from personal where PERSONAL_ID=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				p=new Person();
				p.setId(rs.getString(1));
				p.setNickname(rs.getString(2));
				p.setPassword(rs.getString(3));
				p.setTel(rs.getString(4));
				p.setName(rs.getString(5));
				p.setBirth(rs.getString(6));
				p.setGender(rs.getString(7));
				p.setPost(rs.getString(8));
				p.setAddress(rs.getString(9));
				p.setEmail(rs.getString(10));
			}
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
		}
		return p;
	}

	public Faq Faq_info(String id) {
		Faq f = null;
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			con = ds.getConnection();

			String sql = "select * from faq where faq_id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				f=new Faq();
				f.setFAQ_ID(rs.getString(1));
				f.setFAQ_KINDS(rs.getString(2));
				f.setFAQ_SUBJECT(rs.getString(3));
				f.setFAQ_CONTENT(rs.getString(4));
				f.setFAQ_DATE(rs.getString(5));
				f.setFAQ_COMPLETE(rs.getString(6));
			}
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
		}
		return f;
	}


}
