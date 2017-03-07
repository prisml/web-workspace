package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MockDAO;

public class Update implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String nick = request.getParameter("nick");
		MockDAO.getInstance().updateNick(nick);
		return "redirect:update_result.jsp";
	}

}
