package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberVO;

public class FindMemberByIdController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "";
		String id = request.getParameter("id");
		MemberVO vo = MemberDAO.getInstance().findMemberById(id);
		request.setAttribute("result", vo);
		if (vo != null)
			url = "findMemberById_ok.jsp";
		else
			url = "findMemberById_fail.jsp";
		return url;
	}
}
