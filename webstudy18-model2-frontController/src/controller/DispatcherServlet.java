package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MockDAO;

/**
 * Servlet implementation class DispatcherServlet
 */
@WebServlet("/DispatcherServlet")
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DispatcherServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		requestProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		requestProcess(request, response);
	}

	public void requestProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// client가 어떤 서비스를 원하는지 분석
		String command = request.getParameter("command");
		String url = null;
		String id = request.getParameter("id");
		boolean isRedirect = false;
		if (command.equals("find")) {
			if (MockDAO.getInstance().findById(id) != null)
				url = "find_ok.jsp";
			else
				url = "find_fail.jsp";
		} else if (command.equals("address")) {
			String addr = request.getParameter("addr");
			ArrayList<String> list = MockDAO.getInstance().findByAddress(addr);
			if (list.size() == 0)
				url = "findByAddress_fail.jsp";
			else {
				url = "findByAddress_ok.jsp";
				request.setAttribute("list", list);
			}
		} else if (command.equals("update")) {
			String nick = request.getParameter("nick");
			MockDAO.getInstance().updateNick(nick);
			url = "update_result.jsp";
			isRedirect = true;
		}
		if (isRedirect) {
			response.sendRedirect(url);
		} else {
			request.getRequestDispatcher(url).forward(request, response);
		}
	}

}
