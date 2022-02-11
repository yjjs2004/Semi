package cart.cart_db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;



public class CartDao {
	private DataSource ds;
		
	public CartDao() {		
		try {
			Context init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		} catch (Exception e) {
			System.out.println("DB 연결 실패 : "+ e);
			return ;
		}
			
	}
	
	public List<Cart> getCart() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;				
		List<Cart> list = null;
		try {
			con = ds.getConnection();
			String sql= "select * from cart";
			pstmt = con.prepareStatement(sql);
			rs= pstmt.executeQuery();
			
			int i=0;
			while (rs.next()) {
				if(i++ ==0) {
					list = new ArrayList<Cart>();
				}
				Cart cart = new Cart();				
				cart.setName(rs.getString("name"));
				cart.setPrice(rs.getInt("price"));
				list.add(cart);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null)
				rs.close();			
			}catch (Exception e) {
				e.printStackTrace();
			}
			try {
				if(pstmt!=null)
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if(con!=null)
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return list;
	}
	
	
}
