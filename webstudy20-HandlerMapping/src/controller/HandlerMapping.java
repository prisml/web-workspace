package controller;

/**
 * client의 요청을 처리할 컨트롤러 구현객체 생성을
 * 전담하는 factory 객체
 * @author KOSTA
 *
 */
public class HandlerMapping {
	private static HandlerMapping instance = new HandlerMapping();
	private HandlerMapping(){}
	
	public static HandlerMapping getInstance(){
		return instance;
	}
	
	public Controller create(String command){
		Controller controller= null;
		if(command.equals("find")){
			controller = new FindController();
		}else if(command.equals("insert")){
			controller = new InsertController();
		}else if(command.equals("findbyaddress")){
			controller = new FindByAddress();
		}else if(command.equals("update")){
			controller = new Update();
		}
		return controller;
	}
}
