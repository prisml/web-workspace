package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.DbInfo;
import model.ItemVO;

public class ItemDAO {
	private static ItemDAO instance = new ItemDAO();

	private ItemDAO() {
		try {
			Class.forName(DbInfo.DRIVER);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public static ItemDAO getInstance() {
		return instance;
	}

	public void register(ItemVO vo) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "insert into item(item_no, name, maker, price) values(item_seq.NEXTVAL,?,?,?)";
			con = DriverManager.getConnection(DbInfo.URL, "scott", "tiger");
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getMaker());
			pstmt.setInt(3, vo.getPrice());
			pstmt.executeUpdate();
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}
	}

	public ArrayList<ItemVO> getList() throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ItemVO> list = new ArrayList<ItemVO>();
		try {
			String sql = "select * from item";
			con = DriverManager.getConnection(DbInfo.URL, "scott", "tiger");
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				list.add(new ItemVO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4)));
			}
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}
		return list;
	}
	
	public ItemVO getItemByNo(int no) throws SQLException{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ItemVO result = null;
		try {
			String sql = "select * from item where item_no=?";
			con = DriverManager.getConnection(DbInfo.URL, "scott", "tiger");
			pstmt = con.prepareStatement(sql);
			pstmt.setLong(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()){
				result = new ItemVO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4));
			}
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}
		return result;
	}
}
