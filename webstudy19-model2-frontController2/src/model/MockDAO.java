package model;

import java.util.ArrayList;

public class MockDAO {
	private static MockDAO instance = new MockDAO();

	private MockDAO() {
	}

	public static MockDAO getInstance() {
		return instance;
	}

	public String findById(String id){
		String result = null;
		if(id.equals("java"))
			result = "아이유";
		return result;			
	}
	
	public ArrayList<String> findByAddress(String addr) {
		ArrayList<String> list = new ArrayList<String>();
		if(addr.equals("판교")){
			list.add("김");
			list.add("이");
			list.add("박");
		}
		return list;
	}
	
	public void updateNick(String nick){
		System.out.println(nick+" 닉네임 db 정보수정");
	}
}
