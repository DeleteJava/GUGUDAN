package login;

import java.util.ArrayList;

public class LoginHandler {
	ArrayList<UserAccount> list = new ArrayList<UserAccount>();
	
	public void managerAccount() {
		if(list.isEmpty()) {
			list.add(new UserAccount("관리자1", "admin", "1"));
			list.add(new UserAccount("관리자2", "root", "1"));
		}
	}
	
	
	
	public ArrayList<UserAccount> getList() {
		return list;
	}



	public boolean checkAccount(String id, String pw) {
		
			for(UserAccount u : list) {
				if(u.getUserId().equals(id) && u.getUserPw().equals(pw)) {
					return true;
				}
			}
		
		return false;
	}
}
