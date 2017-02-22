package step4;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ContextTestServlet
 */
public class ContextTestServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ContextTestServlet2() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		ServletContext context = this.getServletConfig().getServletContext();
		String driver = context.getInitParameter("db_driver");
		String name = getServletConfig().getServletName();
		try {
			Class.forName(driver);
			out.print("<h2>"+name + " " +driver);
			out.print(" loading ok</h2>");
			out.print("<br><br><a href=ContextTestServlet>");
			out.print("ContextTestServlet</a>");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.close();
	}
	// ServletConfig 를 할당하는 아래의 매개변수 있는 init()
	// 메서드를 오버라이딩 할 때에는 반드시 super.init(ServletConfig);
	// 를 명시해야 한다. 그러므로 init() 메서드 오버라이딩해야
	// 할 때에는 가급적 API 에서 권장하는 데로 매개변수 없는 init()을
	// 오버라이딩한다
	/*@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init 실행~~^^");
	}*/
}
