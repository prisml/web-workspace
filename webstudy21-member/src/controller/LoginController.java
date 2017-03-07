package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberVO;

public class LoginController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "";
		String id = request.getParameter("id");
		String pass = request.getParameter("password");
		HttpSession session = request.getSession();
		MemberVO vo = MemberDAO.getInstance().login(id, pass);
		if (vo != null) {
			session.setAttribute("MemberVO", vo);
			url = "redirect:login_ok.jsp";
		} else
			url = "redirect:login_fail.jsp";
		return url;
	}

}
