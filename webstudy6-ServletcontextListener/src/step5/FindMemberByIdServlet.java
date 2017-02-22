package step5;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FindMemberByIdServlet
 */
public class FindMemberByIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String url, user, pass;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FindMemberByIdServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public void init() throws ServletException {
		String driver = getServletConfig().getServletContext().getInitParameter("db_driver");
		try {
			Class.forName(driver);
			System.out.println(driver + " loading");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		url = getServletConfig().getServletContext().getInitParameter("url");
		user = getServletConfig().getServletContext().getInitParameter("user");
		pass = getServletConfig().getServletContext().getInitParameter("pass");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String name = this.getServletConfig().getServletName();
		try {
			Connection con = DriverManager.getConnection(url, user, pass);
			String id = request.getParameter("memberId");
			String sql = "select * from member where id=?";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			out.println("현 서블릿 : " + name + "<br><br>");
			if (rs.next())
				out.print("id : " + rs.getString(1)+ "<br>name : " 
			+ rs.getString(3)+ "<br>address : " + rs.getString(4));
			else
				out.print(id + "에 해당하는 회원이 없습니다.");
		} catch (SQLException e) {
			out.println(name + " db 연동시 문제 발생!");
			e.printStackTrace();
		}
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
