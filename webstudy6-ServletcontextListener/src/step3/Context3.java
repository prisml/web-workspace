package step3;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Context3
 */
public class Context3 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Context3() {
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
		Enumeration<String> en = context.getAttributeNames();
		while (en.hasMoreElements()) {
			String attName = en.nextElement();
			out.println("name : " + attName + "<br>");
			Object value = context.getAttribute(attName);
			out.println("value : " + value + "<hr>");
		}
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
