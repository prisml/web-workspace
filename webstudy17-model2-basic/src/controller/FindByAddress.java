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
 * Servlet implementation class FindByAddress
 */
@WebServlet("/FindByAddress")
public class FindByAddress extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FindByAddress() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String addr = request.getParameter("addr");
		ArrayList<String> list = MockDAO.getInstance().findByAddress(addr);
		/* response.sendRedirect("insert_result.jsp"); */
		// redirect와 forward방식 비교
		if(list.size()==0)
			request.getRequestDispatcher("findByAddress_fail.jsp").forward(request, response);
		else{
			request.setAttribute("list", list);
			request.getRequestDispatcher("findByAddress_ok.jsp").forward(request, response);
		}
	}

}
