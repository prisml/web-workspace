package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberVO;

public class UpdateController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String pass = request.getParameter("password");
		String name = request.getParameter("name");
		String addr = request.getParameter("address");
		MemberDAO.getInstance().update(id, pass, name, addr);
		HttpSession session = request.getSession();
		session.setAttribute("MemberVO", new MemberVO(id, pass, name, addr));
		return "redirect:update_result.jsp";
	}

}
