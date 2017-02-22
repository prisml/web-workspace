package step1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Context1
 */
public class Context1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Context1() {
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
		PrintWriter out = response.getWriter();
		String name = this.getServletConfig().getServletName();
		ServletContext context = this.getServletConfig().getServletContext();
		String webAppName = context.getContextPath();
		out.print("<h3>");
		out.print("<a href=index.html>" + webAppName + "</a><br>");
		out.println(context.getInitParameter("db_driver") + "<br>");
		context.setAttribute("info", "서블릿컨택스트테스트중");
		context.setAttribute("kosta_info", "판교유스페이스");
		context.setAttribute("kosta_star", "김문일");
		out.print(name + " ServletContext에 정보를 할당<br>");
		out.print("<a href=Context2>Context2 서블릿에서 확인</a>");
		out.print("</h3>");
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
