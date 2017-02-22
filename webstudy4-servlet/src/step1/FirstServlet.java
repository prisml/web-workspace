package step1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FirstServlet
 */

public class FirstServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3944767522165756938L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		System.out.println("FirstServlet doGet()");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<body bgcolor=yellow>");
		String name = request.getParameter("userName");
		out.print("<h3>FirstServlet doGet메서드가 응답</h3>");
		out.print("<br><br>클라이언트가 보낸 이름은 "+name);
		out.print("</body></html>");
		out.close();
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 응답할 정보를 설정
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<body bgcolor=orange>");
		out.print("<h3>FirstServlet doPost</h3>");
		String name = request.getParameter("userName");
		out.print("<br><br>클라이언트가 보낸 이름은 "+name);
		out.print("</body>");
		out.print("</html>");
		out.close();
	}

	
}
