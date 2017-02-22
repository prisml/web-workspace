package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

// Data Access Logic Object
/*
 * MemberDAO는 웹어플리케이션 상에서 하나만 존재하면 된다
 * Singleton Pattern을 적용하여
 * 외부에서 객체생성하는 것을 막고
 * 한번 생성한 객체를 공유하여 사용하게 한다
 */
public class MemberDAO {
	//class loading 시점에 단 한번 객체생성하여 method area에 적재
	private static MemberDAO instance=new MemberDAO();
	//외부에서 생성못하게 private처리
	private MemberDAO(){}
	//외부에 현 객체레퍼런스를 공유
	public static MemberDAO getInstance(){
		return instance;
	}
	
	public int getMemberCount() throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int count=0;
		try {
			String sql = "select count(*) from member";
			con = DriverManager.getConnection(DbInfo.URL, "scott", "tiger");
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next())
				count = rs.getInt(1);
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}
		return count;
	}
	
	public MemberVO findMemberById(String id) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemberVO vo = null;
		try {
			String sql = "select * from member where id=?";
			con = DriverManager.getConnection(DbInfo.URL, "scott", "tiger");
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next())
				vo = new MemberVO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}
		return vo;
	}
}
