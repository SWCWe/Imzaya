package com.VO;

public class HobbyVO {
	
    // 취미 순번 
    private int hobbySeq;

    // 취미 명 
    private String hobbyName;

    // 사용자 아이디 
    private String hobbyCategory;

	public HobbyVO(int hobbySeq, String hobbyName, String hobbyCategory) {
		this.hobbySeq = hobbySeq;
		this.hobbyName = hobbyName;
		this.hobbyCategory = hobbyCategory;
	}

	public int getHobbySeq() {
		return hobbySeq;
	}

	public void setHobbySeq(int hobbySeq) {
		this.hobbySeq = hobbySeq;
	}

	public String getHobbyName() {
		return hobbyName;
	}

	public void setHobbyName(String hobbyName) {
		this.hobbyName = hobbyName;
	}

	public String getHobbyCategory() {
		return hobbyCategory;
	}

	public void setHobbyCategory(String hobbyCategory) {
		this.hobbyCategory = hobbyCategory;
	}
	
	


}


