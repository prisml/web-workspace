package step2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MethodServlet extends HttpServlet {
	private static final long serialVersionUID = 7038930396979654605L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.print("<html>");
		out.print("<body bgcolor=yellow>");
		out.print("등록 OK");
		String name, addr;
		name = req.getParameter("memberName");
		addr = req.getParameter("memberAddr");
		out.print("<br>이름 " + name);
		out.print("<br>주소 " + addr);
		out.print("</body></html>");
		out.close();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		req.setCharacterEncoding("utf-8");
		PrintWriter out = resp.getWriter();
		out.print("<html>");
		out.print("<body bgcolor=yellow>");
		out.print("등록 OK");
		String name, addr;
		name = req.getParameter("memberName");
		addr = req.getParameter("memberAddr");
		out.print("<br>이름 " + name);
		out.print("<br>주소 " + addr);
		out.print("</body></html>");
		out.close();

	}
}
