package test;

public class TestUnit {
	public static void main(String[] args) {
		String url="redirect:find_ok.jsp";
		if(url.startsWith("redirect:"))
			System.out.println("리다이렉트!" + url.substring(url.indexOf(":")+1));
		else
			System.out.println("리다이렉트아님!");
	}
}
