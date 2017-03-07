package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberVO;

public class IdCheckController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String url = "";
		MemberVO vo = MemberDAO.getInstance().findMemberById(id);
		if(vo==null)
			url="idcheck_ok.jsp";
		else
			url="idcheck_fail.jsp";
		return url;
	}

}
