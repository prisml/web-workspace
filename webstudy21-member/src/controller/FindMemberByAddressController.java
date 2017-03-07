package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberVO;

public class FindMemberByAddressController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "";
		String addr = request.getParameter("address");
		ArrayList<MemberVO> list = MemberDAO.getInstance().findMemberByAddress(addr);
		request.setAttribute("list", list);
		if (list.size() == 0)
			url = "findMemberByAddress_fail.jsp";
		else
			url = "findMemberByAddress_ok.jsp";
		return url;
	}

}
