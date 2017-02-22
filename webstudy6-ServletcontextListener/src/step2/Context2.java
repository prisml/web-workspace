package step2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Context2
 */
public class Context2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Context2() {
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
		ServletContext context = this.getServletConfig().getServletContext();
		String webAppName = context.getContextPath();
		out.print("<h3>");
		out.print("<a href=index.html>" + webAppName + "</a><br>");
		out.println(context.getInitParameter("db_driver") + "<br>");
		String kostaInfo = (String) context.getAttribute("kosta_info");
		String kostaStar = (String) context.getAttribute("kosta_star");
		out.println("ServletContext getAttribute() 결과 :");
		out.println(kostaInfo + " " + kostaStar);
		out.println("<br><a href+Context3>asdfasdf</a>");
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
