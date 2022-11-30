package problem;

import java.util.ArrayList;

public class Multhandler {
	private ArrayList<Integer> list = new ArrayList<Integer>();
	private int count = 0;
	private int resultCount = 0;
	private int num = 0;
	private int dan = 2;
	

	public void guguDan() {
		for(int i = 2; i <= 9; i++) {
			for(int j = 1; j <= 9; j++) {
				list.add(i * j);
			}
		}
	}
	
	public ArrayList<Integer> getList() {
		return list;
	}
	
	public int getDan() {
		return dan;
	}
	
	
	public int getNum() {
		++num;
		if(num > 9) {
			num = 1;
			dan++;
		}
		return num;
	}
	
	public void sameNumCheck(int userNum) {
		if(userNum == list.get(count)) {
			resultCount++;
		}
		count++;
	}

	public int getResultCount() {
		return resultCount;
	}
	
	public boolean checkOver() {
		if(dan == 2 && num == 9 ) {		// dan 9  num 9 
			return false;
		}
		return true;
	}
	

	public static void main(String[] args) {
		Multhandler handler = new Multhandler();
		handler.guguDan();
		System.out.println(handler.getList());
		System.out.println(handler.getList().size());
	}

	
	
}
