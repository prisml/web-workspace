package step5;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EnterServlet extends HttpServlet{
	private static final long serialVersionUID = 8774027827645082944L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = resp.getWriter();
		String name;
		int age;
		name = req.getParameter("userName");
		age = Integer.parseInt(req.getParameter("userAge"));
		out.print("<html>");
		if(age>=19){
			out.print("<body bgcolor=red>");
			out.print(name);
			out.print("님 ");
			out.print(age);
			out.print("세 성인입니다. 성인사이트 입장");
		}
		else{
			out.print("<body bgcolor=yellow>");
			out.print(name);
			out.print("님 ");
			out.print(age);
			out.print("세 미성년입니다. 다음에 나이 먹고 오세요.");
		}
		out.print("</body></html>");
		out.close();
	}
	
}
