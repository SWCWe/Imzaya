package com.VO;

public class MemberVO {
	
	// 회원 아이디 
	 private String mId;

	 // 회원 비밀번호 
	 private String mPw;

	 // 회원 이름 
	 private String mName;

	 // 회원 닉네임 
	 private String mNick;

	// 회원 생년월일 
	 private String mBirthdate;

	 // 회원 성별 
	 private String mGender;

	 // 회원 전화 
	 private String mPhone;

	 // 회원 지역 
	 private String mLocation;
	 
	 //private String mJoindate;
	 
	 private String mType;

	 
	// 생성자
	 
	public MemberVO(String mId, String mPw, String mName, String mNick, String mBirthdate, String mGender,
			String mPhone, String mLocation, String mType) {
		super();
		this.mId = mId;
		this.mPw = mPw;
		this.mName = mName;
		this.mNick = mNick;
		this.mBirthdate = mBirthdate;
		this.mGender = mGender;
		this.mPhone = mPhone;
		this.mLocation = mLocation;
		this.mType = mType;
	}


	public String getmId() {
		return mId;
	}


	public void setmId(String mId) {
		this.mId = mId;
	}


	public String getmPw() {
		return mPw;
	}


	public void setmPw(String mPw) {
		this.mPw = mPw;
	}


	public String getmName() {
		return mName;
	}


	public void setmName(String mName) {
		this.mName = mName;
	}


	public String getmNick() {
		return mNick;
	}


	public void setmNick(String mNick) {
		this.mNick = mNick;
	}


	public String getmBirthdate() {
		return mBirthdate;
	}


	public void setmBirthdate(String mBirthdate) {
		this.mBirthdate = mBirthdate;
	}


	public String getmGender() {
		return mGender;
	}


	public void setmGender(String mGender) {
		this.mGender = mGender;
	}


	public String getmPhone() {
		return mPhone;
	}


	public void setmPhone(String mPhone) {
		this.mPhone = mPhone;
	}


	public String getmLocation() {
		return mLocation;
	}


	public void setmLocation(String mLocation) {
		this.mLocation = mLocation;
	}


	public String getmType() {
		return mType;
	}


	public void setmType(String mType) {
		this.mType = mType;
	}
	
	
	
	
	
	
}//
	 
	 
	
	

