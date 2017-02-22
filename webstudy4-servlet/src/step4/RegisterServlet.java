package step4;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet{
	private static final long serialVersionUID = 817917539350165944L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		req.setCharacterEncoding("utf-8");
		PrintWriter out = resp.getWriter();
		out.print("<html>");
		out.print("<body>");
		String id, pass;
		id = req.getParameter("memId");
		pass = req.getParameter("memPass");
		if(id.length()>=3 && id.length()<=10 && pass.length()>=5 && pass.equals(req.getParameter("confirmPass"))){
			out.print("회원가입처리완료");
			out.print("<br>아이디 " +id);
			out.print("<br>이름 "+req.getParameter("memName"));
			out.print("<br>주소 "+req.getParameter("memAddress"));
			out.print("<br>성별 "+req.getParameter("gender"));
			out.print("<br>혈액형 "+req.getParameter("blood"));
		}
		out.print("</body></html>");
		out.close();
	}
	
}
