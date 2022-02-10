package Room;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


import Room.Room;


public class RoomDAO {
private DataSource ds;
	
	//생성자에서 JNDI 리소스를 참조하여  Connection 객체를 얻어옵니다.
	public RoomDAO() {
		try {
			Context init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		}catch(Exception ex) {
			System.out.println("DB 연결 실패: "+ex);
		}
		
	}
	public int insert(Room r) {
		Connection con=null;
		PreparedStatement pstmt=null;
		int result=0;
		try {
			con = ds.getConnection();
			System.out.println("getConnection : insert()");
			pstmt = con.prepareStatement( "INSERT INTO ROOM "
	+ "(name, phone, location, filename, fileroute, rooms_name, personnel, bedcount, price, "
	+ "filename_a, fileroute_b) "
					+ "VALUES (?,?,?,?,?,?,?,?,?,?,?)"
					);
			
			pstmt.setString(1, r.getName());
			pstmt.setString(2, r.getPhone());
			pstmt.setString(3, r.getLocation());
			pstmt.setString(4, r.getFilename());
			
			pstmt.setString(5, r.getFileroute());
			pstmt.setString(6, r.getRooms_name());
			pstmt.setString(7, r.getPersonnel());
			
			pstmt.setString(8, r.getBedcount());
			pstmt.setString(9, r.getPrice());
			pstmt.setString(10, r.getFilename_a());
			pstmt.setString(11, r.getFileroute_b());
			

		
			result = pstmt.executeUpdate();//삽입 성공시 result 는 1
			
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
	


}
