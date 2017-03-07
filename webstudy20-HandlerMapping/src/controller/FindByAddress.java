package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MockDAO;

public class FindByAddress implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String address = request.getParameter("address");
		ArrayList<String> list = MockDAO.getInstance().findByAddress(address);
		if(list.size()==0)
			return "findbyaddress_fail.jsp";
		else{
			request.setAttribute("list", list);
			return "findbyaddress_ok.jsp";
		}
	}

}
