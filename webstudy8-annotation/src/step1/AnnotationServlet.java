package step1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AnnotationServlet
 */
// 어노테이션으로 설정되어 있으므로
// web.xml에서는 별도의 서블릿 설정이 필요 없다
// xml에서 설정할 경우 server error발생한다
// @WebServlet(url-pattern)
@WebServlet("/as")
public class AnnotationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnnotationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String name = getServletConfig().getServletName();
		out.print(name+" 어노테이션으로 설정되있다");
		
		ServletContext context = getServletConfig().getServletContext();
		out.print("<br>서블릿컨텍스트에서 관리자 아이디를 받아온다<br>");
		out.println("아이디 : " + context.getInitParameter("adminId"));
		
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
