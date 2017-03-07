package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MockDAO;

public class FindByAddressController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String addr = request.getParameter("addr");
		ArrayList<String> list = MockDAO.getInstance().findByAddress(addr);
		if(list.size() == 0)
			return "findByAddress_fail.jsp";
		else{
			request.setAttribute("list", list);
			return "findByAddress_ok.jsp";
		}
	}

}
