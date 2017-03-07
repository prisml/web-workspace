package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {
	private static MemberDAO instance = new MemberDAO();

	private MemberDAO() {
	}

	public static MemberDAO getInstance() {
		return instance;
	}

	public MemberVO findMemberById(String id) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemberVO result = null;
		try {
			String sql = "select * from member where id=?";
			con = DriverManager.getConnection(DbInfo.URL, "scott", "tiger");
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = new MemberVO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
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
	
	public ArrayList<MemberVO> findMemberByAddress(String address) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		try {
			String sql = "select * from member where address=?";
			con = DriverManager.getConnection(DbInfo.URL, "scott", "tiger");
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, address);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				list.add(new MemberVO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)));
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
	
	public MemberVO login(String id, String pass) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemberVO result = null;
		try {
			String sql = "select * from member where id=? and password=?";
			con = DriverManager.getConnection(DbInfo.URL, "scott", "tiger");
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = new MemberVO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
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
	
	public void update(String id, String pass, String name, String addr) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "update member set password=?, name=?, address=? where id=?";
			con = DriverManager.getConnection(DbInfo.URL, "scott", "tiger");
			pstmt = con.prepareStatement(sql);
			pstmt.setString(4, id);
			pstmt.setString(1, pass);
			pstmt.setString(2, name);
			pstmt.setString(3, addr);
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
	
	public void register(String id, String pass, String name, String addr) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String sql = "insert into member(id,password,name,address) values(?,?,?,?)";
			con = DriverManager.getConnection(DbInfo.URL, "scott", "tiger");
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			pstmt.setString(3, name);
			pstmt.setString(4, addr);
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
	
	public String idCheck(String id) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String result = null;
		try {
			String sql = "select id from member where id=?";
			con = DriverManager.getConnection(DbInfo.URL, "scott", "tiger");
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs.next())
				result=rs.getString(1);
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
