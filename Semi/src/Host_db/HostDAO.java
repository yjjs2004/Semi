package Host_db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import Host_db.Host;


public class HostDAO {
private DataSource ds;
	
	//생성자에서 JNDI 리소스를 참조하여  Connection 객체를 얻어옵니다.
	public HostDAO() {
		try {
			Context init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		}catch(Exception ex) {
			System.out.println("DB 연결 실패: "+ex);
		}
		
	}
	public int insert(Host h) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int result=0;
		try {
			con = ds.getConnection();
			System.out.println("getConnection : insert()");
			pstmt = con.prepareStatement( "INSERT INTO HOST "
	+ "(host_business, host_id, host_password, host_birth,host_name, business_name, business_num, addrzipnum, addrbasic, addrdetail, "
	+ "host_email, corporation_name, corporation_num) "
					+ "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)"
					);
			
			pstmt.setString(1, h.getHost_business());
			pstmt.setString(2, h.getHost_id());
			pstmt.setString(3, h.getHost_password());
			pstmt.setString(4, h.getHost_birth());
			
			pstmt.setString(5, h.getHost_name());
			pstmt.setString(6, h.getBusiness_name());
			pstmt.setString(7, h.getBusiness_num());
			
			pstmt.setString(8, h.getAddrzipnum());
			pstmt.setString(9, h.getAddrbasic());
			pstmt.setString(10, h.getAddrdetail());
			pstmt.setString(11, h.getHost_email());
			pstmt.setString(12, h.getCorporation_name());
			pstmt.setString(13, h.getCorporation_num());

		
			result = pstmt.executeUpdate();//삽입 성공시 result 는 1
			
		}catch(java.sql.SQLIntegrityConstraintViolationException e) {
			result = -1;
			System.out.println("멤버 아이디 중복 에러입니다.");
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(pstmt !=null)
				try {
					pstmt.close();
				}catch(SQLException ex) {
					ex.printStackTrace();
				}
			if(con !=null)
				try {
					con.close();
				}catch (SQLException ex) {
					ex.printStackTrace();
				}
		}
		return result;
	}
	public Host member_info(String id) {
		Host h =null;
		Connection con = null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		try {
			con = ds.getConnection();
			String sql = "select *from host where host_id = ? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				h = new Host();
				h.setHost_id(rs.getString(1));
				h.setHost_password(rs.getString(2));
				h.setHost_email(rs.getString(3));
				h.setHost_name(rs.getString(4));
				h.setHost_birth(rs.getString(5));
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(rs != null)
				try {
					rs.close();
				}catch(SQLException ex	) {
					ex.printStackTrace();
				}
			if(pstmt !=null)
				try {
					pstmt.close();
				}catch(SQLException ex) {
					ex.printStackTrace();
				}
			if(con != null)
				try {
					con.close();
				}catch(SQLException ex) {
					ex.printStackTrace();
				}
			
		}
		return h;
	}
	public int update(Host m) {
		Connection con=null;
		PreparedStatement pstmt =null;
		int result=0;
		try {
			con =ds.getConnection();
			
			String sql = "update host set host_password =?,  =?, host_email=?, host_name=?, host_birth "
					+" where host_id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, m.getHost_password());
			pstmt.setString(2, m.getHost_email());
			pstmt.setString(3, m.getHost_name());
			pstmt.setString(4, m.getHost_birth());
			pstmt.setString(5, m.getHost_id());
			
			result = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(pstmt !=null)
				try {
					pstmt.close();
				}catch(SQLException ex) {
					ex.printStackTrace();
				}
			if(con != null)
				try {
					con.close();
				}catch(SQLException ex) {
					ex.printStackTrace();
				}
		}
		return result;
	}
	public int isId(String id, String pass) {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int result=-1;//DB에 해당 id가 없습니다.
		try {
			con = ds.getConnection();
			
			String sql = "select HOST_ID, HOST_PASSWORD from HOST where HOST_ID = ? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs= pstmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getString(2).contentEquals(pass)) {
					result =1;//아이디 비밀번호 일치
				}else {
					result = 0;//비밀번호가 불일치
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(rs != null)
				try {
					rs.close();
				}catch(SQLException ex	) {
					ex.printStackTrace();
				}
			if(pstmt !=null)
				try {
					pstmt.close();
				}catch(SQLException ex) {
					ex.printStackTrace();
				}
			if(con != null)
				try {
					con.close();
				}catch(SQLException ex) {
					ex.printStackTrace();
				}
		}
		return result;
	
	}
	public int isId(String id) {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int result=-1;//DB에 해당 id가 없습니다.
		try {
			con = ds.getConnection();
			
			String sql = "select HOST_ID from HOST where HOST_ID= ? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs= pstmt.executeQuery();
			
			if(rs.next()) {
				result = 0;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(rs != null)
				try {
					rs.close();
				}catch(SQLException ex	) {
					ex.printStackTrace();
				}
			if(pstmt !=null)
				try {
					pstmt.close();
				}catch(SQLException ex) {
					ex.printStackTrace();
				}
			if(con != null)
				try {
					con.close();
				}catch(SQLException ex) {
					ex.printStackTrace();
				}
		}
		return result;
	
	}

}
