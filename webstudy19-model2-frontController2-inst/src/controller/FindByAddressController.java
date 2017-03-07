package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MockDAO;

public class FindByAddressController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String address=request.getParameter("address");
		ArrayList<String> list=MockDAO.getInstance().findByAddress(address);
		String url=null;
		if(list.isEmpty()){
			url="findbyaddress_fail.jsp";
		}else{
			url="findbyaddress_ok.jsp";
			request.setAttribute("list", list);
		}
		return url;
	}
}










