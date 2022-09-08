package com.VO;

public class MemberHobbyVO {
	
	// 선호 순번 
	private int mhSeq;

	// 취미 순번 
	private int hobbySeq;
	 
	// 회원 아이디 
	private String mId;
	

	// 생성자
	public MemberHobbyVO(int mhSeq, int hobbySeq, String mId) {

		this.mhSeq = mhSeq;
		this.hobbySeq = hobbySeq;
		this.mId = mId;
	}

	 public int getMhSeq() {
		return mhSeq;
	}

	public void setMhSeq(int mhSeq) {
		this.mhSeq = mhSeq;
	}

	public int getHobbySeq() {
		return hobbySeq;
	}

	public void setHobbySeq(int hobbySeq) {
		this.hobbySeq = hobbySeq;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}






}

